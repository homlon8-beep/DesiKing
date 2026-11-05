# Desi King (Custom APK & Reverse Engineering)

Reversed and custom edition of **Ludo King (v1.6 / Desi King)** built via the `apk-reverse` methodology.

## 📱 Project Overview

- **Original Binary**: `desiking.apk` (Ludo King v1.6, build 7)
- **Customized Package**: `com.ludo.king`
- **Branding**: `Desi King` (v1.6-DesiKing)
- **Engine**: Unity 5.x Mono Runtime (`libmono.so`, C# .NET Assemblies)
- **Output Artifact**: `/sdcard/Download/DesiKing_Custom_Signed.apk`

---

## 🛠️ Reverse Engineering Analysis (apk-reverse)

### 1. Classification & Architecture
- **Packer**: None. No shell packer or dynamic loader detected.
- **Owning Layer**:
  - **Game Logic**: Unity C# Managed Assemblies (`assets/bin/Data/Managed/Assembly-CSharp.dll`).
  - **Android Host**: Standard Unity Activity wrapper (`com.unity3d.player.UnityPlayerNativeActivity`) and Soomla store application (`com.soomla.SoomlaApp`).
  - **Ad & Monetization**: Google Mobile Ads (AdMob), Facebook Audience Network, and Vungle Publisher SDK.

### 2. Custom Modifications
- **Rebranding**:
  - Modified `@string/app_name` in `res/values/strings.xml` to `Desi King`.
  - Updated `apktool.yml` and `AndroidManifest.xml` with `versionName="1.6-DesiKing"`.
- **Ad Neutralization (De-ad)**:
  - Neutralized `AdActivity.smali` (`com.google.android.gms.ads.AdActivity`) — added early `finish()` on `onCreate()`.
  - Neutralized `FullScreenAdActivity.smali` (`com.vungle.publisher.FullScreenAdActivity`) — added early `finish()` on `onCreate()`.
  - Neutralized `AudienceNetworkActivity.smali` (`com.facebook.ads.AudienceNetworkActivity`) — added early `finish()` on `onCreate()`.
- **Packaging Integrity**:
  - Enforced `doNotCompress` on critical uncompressed resources (`resources.arsc`, `.png`, and split assets).
  - Executed 4-byte page alignment (`zipalign -p -f 4`).
  - Signed with v1, v2, and v3 APK Signature Schemes using `apksigner`.

---

## 🚀 How to Build & Sign

To rebuild the APK from this repository:

```bash
./scripts/build_and_sign.sh
```

The resulting signed APK will be saved directly to `/sdcard/Download/DesiKing_Custom_Signed.apk`.

## Update: Google Play Store Release (v10.7.0.423 - Android 16 Native)

Reversed, customized, patched, and signed from the genuine Play Store release `fullaura.apks`:

### Technical Details & Specifications
- **Target App**: Ludo King (com.ludo.king) v10.7.0.423 (VersionCode 423)
- **SDK Target**: `minSdkVersion 24`, `targetSdkVersion 36` (Android 16 Native)
- **Architecture**: Unity IL2CPP 2018+ with Split APK (arm64-v8a) & Play Asset Delivery (`split_UnityDataAssetPack`, `split_AddressablesAssetPack`)
- **Branding**: Rebranded from `Ludo King` to **`Desi King`** across all locales in `resources.arsc`
- **Security & Integrity Bypass**:
  - `com.example.ashishkumar.gamotronixplugin.MainActivity.checkAppSignature()`: Returns original release signature Base64 hash (`AtrROcozMlfkx2U1uppKasZRmRE=\n`) to satisfy `GameManager` anti-tamper integrity checks.
  - `checkEmulator()`: Patched to return `false` (0).
  - `isDeviceRooted()` & `checkRootMethod1/2/3`: Patched to return `false` (0).
  - `isStoreVersion()`: Patched to return `true` (1).
  - `doFingerprint()`: Hardcoded to genuine release cert SHA-1 (`02:DA:D1:39:CA:33:32:57:E4:C7:65:35:BA:9A:4A:6A:C6:51:99:11`).
- **Signature & Alignment**:
  - All 4 split APKs aligned with `zipalign -p -f 4`.
  - Signed with custom keystore `desiking.keystore` (v1 + v2 + v3 schemes).

### Installation Instructions
The output packages are available directly in your storage:
1. **`.apks` File (Recommended)**:
   - `/sdcard/Download/DesiKing_PlayStore_Custom.apks` or `/sdcard/MT2/apks/DesiKing_PlayStore_Custom.apks`
   - Open **MT Manager** $\rightarrow$ tap the file $\rightarrow$ select **Install**!
2. **Split APK Set**:
   - `/sdcard/Download/DesiKing_PlayStore_SplitSet.zip`
   - Unzip and install using MT Manager or Split APKs Installer (SAI).
3. **Extracted APKs Folder**:
   - `/sdcard/MT2/apks/DesiKing_Signed/` (contains individual signed `base.apk`, `split_config.arm64_v8a.apk`, `split_UnityDataAssetPack.apk`, `split_AddressablesAssetPack.apk`).

### Phase 2 Patch: IL2CPP Anti-Tamper Neutralization
In addition to the Java/Smali plugin spoofing, `GameManager.Start()` in `libil2cpp.so` contained a 4-point verification check branching to `ShowAPKTemperedPopup()`:
- `0x214fef4`: `cbnz w0, #0x2153fc8` -> Patched with `NOP` (`1f 20 03 d5`)
- `0x214ff20`: `tbz w0, #0, #0x2153fc8` -> Patched with `NOP` (`1f 20 03 d5`)
- `0x214ff38`: `tbz w0, #0, #0x2153fc8` -> Patched with `NOP` (`1f 20 03 d5`)
- `0x214ff50`: `tbz w0, #0, #0x2153fc8` -> Patched with `NOP` (`1f 20 03 d5`)
- `0x2150000`: `b #0x21540c8` -> Patched with `NOP` (`1f 20 03 d5`)
- `0x21500c8` (`ShowAPKTemperedPopup` entry): Patched with `RET` (`c0 03 5f d6`)
- `0x21505b8` (`ShowRootedDevicePopup` entry): Patched with `RET` (`c0 03 5f d6`)
