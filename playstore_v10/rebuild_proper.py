import zipfile
import os
import subprocess
import shutil

WORKSPACE = "/data/data/com.termux/files/home/desiking_workspace_v2"
KEYSTORE = "/data/data/com.termux/files/home/desiking_workspace/desiking.keystore"
KEY_ALIAS = "desiking"
KEY_PASS = "pass:password"

splits_dir = os.path.join(WORKSPACE, "splits")
aligned_dir = os.path.join(WORKSPACE, "aligned_splits")
signed_dir = os.path.join(WORKSPACE, "signed_splits")
os.makedirs(aligned_dir, exist_ok=True)
os.makedirs(signed_dir, exist_ok=True)

print("=== Step 1: Rebuilding base.apk ===")
base_in = os.path.join(splits_dir, "base.apk")
base_out = os.path.join(WORKSPACE, "base_unaligned.apk")
dex3_path = os.path.join(WORKSPACE, "classes3.dex")
arsc_path = os.path.join(WORKSPACE, "resources_patched.arsc")

with open(dex3_path, "rb") as f:
    dex3_bytes = f.read()
with open(arsc_path, "rb") as f:
    arsc_bytes = f.read()

with zipfile.ZipFile(base_in, "r") as zin, zipfile.ZipFile(base_out, "w") as zout:
    for item in zin.infolist():
        if item.filename.startswith("META-INF/") or item.filename == "stamp-cert-sha256":
            continue
        if item.filename == "classes3.dex":
            zout.writestr(item, dex3_bytes)
        elif item.filename == "resources.arsc":
            item.compress_type = zipfile.ZIP_STORED
            zout.writestr(item, arsc_bytes)
        else:
            zout.writestr(item, zin.read(item.filename))

print(f"base_unaligned.apk created: {os.path.getsize(base_out)} bytes")

print("=== Step 2: Rebuilding split_config.arm64_v8a.apk with patched libil2cpp.so ===")
arm64_in = os.path.join(splits_dir, "split_config.arm64_v8a.apk")
arm64_out = os.path.join(WORKSPACE, "arm64_unaligned.apk")
so_path = os.path.join(WORKSPACE, "lib/arm64-v8a/libil2cpp.so")

with open(so_path, "rb") as f:
    so_bytes = f.read()

with zipfile.ZipFile(arm64_in, "r") as zin, zipfile.ZipFile(arm64_out, "w") as zout:
    for item in zin.infolist():
        if item.filename.startswith("META-INF/") or item.filename == "stamp-cert-sha256":
            continue
        if item.filename == "lib/arm64-v8a/libil2cpp.so":
            item.compress_type = zipfile.ZIP_DEFLATED
            zout.writestr(item, so_bytes)
        else:
            zout.writestr(item, zin.read(item.filename))

print(f"arm64_unaligned.apk created: {os.path.getsize(arm64_out)} bytes")

print("=== Step 3: Preparing asset packs ===")
for pack_name in ["split_UnityDataAssetPack.apk", "split_AddressablesAssetPack.apk"]:
    pack_in = os.path.join(splits_dir, pack_name)
    pack_out = os.path.join(WORKSPACE, pack_name.replace(".apk", "_unaligned.apk"))
    with zipfile.ZipFile(pack_in, "r") as zin, zipfile.ZipFile(pack_out, "w") as zout:
        for item in zin.infolist():
            if item.filename.startswith("META-INF/") or item.filename == "stamp-cert-sha256":
                continue
            zout.writestr(item, zin.read(item.filename))
    print(f"{pack_out} created: {os.path.getsize(pack_out)} bytes")

print("=== Step 4: Zipalign all split members (4-byte page aligned) ===")
apk_map = [
    (base_out, os.path.join(aligned_dir, "base.apk")),
    (arm64_out, os.path.join(aligned_dir, "split_config.arm64_v8a.apk")),
    (os.path.join(WORKSPACE, "split_UnityDataAssetPack_unaligned.apk"), os.path.join(aligned_dir, "split_UnityDataAssetPack.apk")),
    (os.path.join(WORKSPACE, "split_AddressablesAssetPack_unaligned.apk"), os.path.join(aligned_dir, "split_AddressablesAssetPack.apk"))
]

for src, dst in apk_map:
    cmd = ["zipalign", "-p", "-f", "4", src, dst]
    res = subprocess.run(cmd, capture_output=True, text=True)
    if res.returncode != 0:
        raise RuntimeError(f"Zipalign failed for {src}: {res.stderr}")
    print(f"Aligned {os.path.basename(dst)}: {os.path.getsize(dst)} bytes")

print("=== Step 5: Signing all split members with apksigner (v1, v2, v3) ===")
split_names = ["base.apk", "split_config.arm64_v8a.apk", "split_UnityDataAssetPack.apk", "split_AddressablesAssetPack.apk"]
for name in split_names:
    src = os.path.join(aligned_dir, name)
    dst = os.path.join(signed_dir, name)
    cmd = [
        "apksigner", "sign",
        "--ks", KEYSTORE,
        "--ks-key-alias", KEY_ALIAS,
        "--ks-pass", KEY_PASS,
        "--v1-signing-enabled", "true",
        "--v2-signing-enabled", "true",
        "--v3-signing-enabled", "true",
        "--out", dst,
        src
    ]
    res = subprocess.run(cmd, capture_output=True, text=True)
    if res.returncode != 0:
        raise RuntimeError(f"Apksigner failed for {name}: {res.stderr}")
    
    # Verify signature
    v_res = subprocess.run(["apksigner", "verify", "--verbose", dst], capture_output=True, text=True)
    print(f"Signed {name}: Verified successfully!\n  {v_res.stdout.splitlines()[-1] if v_res.stdout else ''}")

print("=== Step 6: Packaging output artifacts ===")
# 1. MT2 / Download APKS
apks_paths = [
    "/sdcard/Download/DesiKing_PlayStore_Custom.apks",
    "/sdcard/MT2/apks/DesiKing_PlayStore_Custom.apks"
]

for apks_path in apks_paths:
    os.makedirs(os.path.dirname(apks_path), exist_ok=True)
    if os.path.exists(apks_path):
        os.remove(apks_path)
    with zipfile.ZipFile(apks_path, "w", compression=zipfile.ZIP_STORED) as zout:
        for name in split_names:
            zout.write(os.path.join(signed_dir, name), arcname=name)
    print(f"Generated {apks_path}: {os.path.getsize(apks_path)} bytes")

# 2. SplitSet zip
zip_path = "/sdcard/Download/DesiKing_PlayStore_SplitSet.zip"
if os.path.exists(zip_path):
    os.remove(zip_path)
with zipfile.ZipFile(zip_path, "w", compression=zipfile.ZIP_DEFLATED) as zout:
    for name in split_names:
        zout.write(os.path.join(signed_dir, name), arcname=name)
print(f"Generated {zip_path}: {os.path.getsize(zip_path)} bytes")

# 3. MT2 extracted directory
mt2_dir = "/sdcard/MT2/apks/DesiKing_Signed"
os.makedirs(mt2_dir, exist_ok=True)
for name in split_names:
    shutil.copyfile(os.path.join(signed_dir, name), os.path.join(mt2_dir, name))
print(f"Copied all signed splits to {mt2_dir}/")

print("ALL BUILDS COMPLETED SUCCESSFULLY!")
