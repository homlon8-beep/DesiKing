#!/bin/bash
set -e

echo "=== Desi King (Play Store v10.7.0.423) Rebuilder & Signer ==="
WORKSPACE_V2="$HOME/desiking_workspace_v2"
KEYSTORE="$HOME/desiking_workspace/desiking.keystore"

echo "1. Compiling smali_classes3 with patched security bypasses..."
javac -cp /data/data/com.termux/files/usr/share/java/apktool.jar "$WORKSPACE_V2/CompileSmali.java"
java -cp "/data/data/com.termux/files/usr/share/java/apktool.jar:$WORKSPACE_V2" CompileSmali \
    "$WORKSPACE_V2/base_decompiled/smali_classes3" \
    "$WORKSPACE_V2/classes3.dex" 26

echo "2. Injecting patched classes3.dex and resources_patched.arsc into base.apk..."
python3 -c '
import zipfile, os
base_in = os.path.expanduser("~/desiking_workspace_v2/splits/base.apk")
base_out = os.path.expanduser("~/desiking_workspace_v2/base_unaligned.apk")
dex3_path = os.path.expanduser("~/desiking_workspace_v2/classes3.dex")
arsc_path = os.path.expanduser("~/desiking_workspace_v2/resources_patched.arsc")

with open(dex3_path, "rb") as f: dex3 = f.read()
with open(arsc_path, "rb") as f: arsc = f.read()

with zipfile.ZipFile(base_in, "r") as zin, zipfile.ZipFile(base_out, "w") as zout:
    for item in zin.infolist():
        if item.filename.startswith("META-INF/"): continue
        if item.filename == "classes3.dex": zout.writestr(item, dex3)
        elif item.filename == "resources.arsc":
            item.compress_type = zipfile.ZIP_STORED
            zout.writestr(item, arsc)
        else: zout.writestr(item, zin.read(item.filename))
'

echo "3. Aligning and signing all split members..."
mkdir -p "$WORKSPACE_V2/aligned_splits" "$WORKSPACE_V2/signed_splits"
zipalign -p -f 4 "$WORKSPACE_V2/base_unaligned.apk" "$WORKSPACE_V2/aligned_splits/base.apk"

for name in split_config.arm64_v8a.apk split_UnityDataAssetPack.apk split_AddressablesAssetPack.apk; do
    cp "$WORKSPACE_V2/splits/$name" "$WORKSPACE_V2/aligned_splits/temp.apk"
    zip -d "$WORKSPACE_V2/aligned_splits/temp.apk" "META-INF/*" 2>/dev/null || true
    zipalign -p -f 4 "$WORKSPACE_V2/aligned_splits/temp.apk" "$WORKSPACE_V2/aligned_splits/$name"
    rm -f "$WORKSPACE_V2/aligned_splits/temp.apk"
done

for name in base.apk split_config.arm64_v8a.apk split_UnityDataAssetPack.apk split_AddressablesAssetPack.apk; do
    apksigner sign --ks "$KEYSTORE" --ks-key-alias desiking --ks-pass pass:password \
        --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true \
        --out "$WORKSPACE_V2/signed_splits/$name" "$WORKSPACE_V2/aligned_splits/$name"
done

echo "4. Generating .apks package for MT Manager..."
cd "$WORKSPACE_V2/signed_splits"
zip -0 -r /sdcard/Download/DesiKing_PlayStore_Custom.apks base.apk split_config.arm64_v8a.apk split_UnityDataAssetPack.apk split_AddressablesAssetPack.apk
echo "Build complete! Package saved to /sdcard/Download/DesiKing_PlayStore_Custom.apks"
