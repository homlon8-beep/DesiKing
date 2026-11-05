#!/bin/bash
set -e

SRC_DIR="desiking_custom_src"
OUT_UNSIGNED="desiking_custom_unsigned.apk"
OUT_ALIGNED="desiking_custom_aligned.apk"
OUT_FINAL="/sdcard/Download/DesiKing_Custom_Signed.apk"
KEYSTORE="desiking.keystore"

echo "[*] Building APK with apktool..."
apktool b "$SRC_DIR" -o "$OUT_UNSIGNED"

echo "[*] Aligning APK (4-byte alignment)..."
zipalign -p -f 4 "$OUT_UNSIGNED" "$OUT_ALIGNED"
zipalign -c 4 "$OUT_ALIGNED"

if [ ! -f "$KEYSTORE" ]; then
    echo "[*] Generating signing keystore..."
    keytool -genkey -v -keystore "$KEYSTORE" -alias desiking -keyalg RSA -keysize 2048 -validity 10000 -storepass password -keypass password -dname "CN=DesiKing, OU=Dev, O=LO, L=City, S=State, C=US"
fi

echo "[*] Signing APK with apksigner (v1 + v2 + v3)..."
apksigner sign --ks "$KEYSTORE" --ks-key-alias desiking --ks-pass pass:password --key-pass pass:password --out "$OUT_FINAL" "$OUT_ALIGNED"

echo "[*] Verifying signature..."
apksigner verify -v "$OUT_FINAL"

echo "[+] Done! Signed APK ready at: $OUT_FINAL"
