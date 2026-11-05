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
