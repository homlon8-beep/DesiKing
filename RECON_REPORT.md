# APK Reverse Engineering Report: Desi King (com.ludo.king)

**Methodology**: `apk-reverse` procedure and gate clearance.
**Date**: 2026-11-05
**Target**: `desiking.apk`
**SHA-256 (Original)**: `0985c16421683eb935b6e4190b5550dadc4dca569ddd8691b361c88f83ff6fa9`
**SHA-256 (Patched/Signed)**: `d43e18c4cc3e9bb6cc04471c6aed487a690d6f560ad2e661df1c3794144d15fb`

---

## 🚪 Gate Clearance

### G1 · Deliverable Form
- **Deliverable Sentence**: An installable, standalone signed Android APK (`DesiKing_Custom_Signed.apk`) requiring no root privileges, featuring "Desi King" branding and neutralized ad activities.
- **Form Chosen**: Rebuilt, installable APK.

### G2 · Environment Truth & Toolchain
- **Doctor Check**:
  - `python3`: 3.14.6
  - `apktool`: 3.0.3
  - `aapt` / `aapt2`: Present
  - `zipalign`: Present
  - `apksigner`: Present
  - `git` & `gh`: Authenticated to `homlon8-beep`
  - `.NET` Inspection: `dnfile` & `pefile` installed and operational.

### G3 · Code Location
- **Packer**: None. No packing wrapper or dynamic extraction shell.
- **Owning Layer**: Unity 5.x Mono (.NET CIL). Game logic is stored in `assets/bin/Data/Managed/Assembly-CSharp.dll`.
- **Key Modules Identified**:
  - `GameManager`: Game lifecycle, mode switches, ads invocation (`ShowVideoAds`).
  - `DiceController`: Dice physics, roll values (`SetDiceValue`, `OnDiceRoll`, `GetDiceValue`).
  - `AdHandler` / `FullScreenAd`: Ad scheduling.

### G4 · Baseline & Control
- Control rebuild performed from unmodified decompile (`control_unsigned.apk`). Build, resource compilation with `aapt2`, and asset packing passed cleanly without errors.

---

## 🔍 Thirteen-Question Classification (§Start here)

1. **Is the app packed/hardened?**
   - No. Clean dex (`classes.dex`), native Unity engine (`libmono.so`, `libunity.so`).
2. **Where does behaviour actually live?**
   - Game logic resides in C# managed assemblies (`Assembly-CSharp.dll`).
3. **Is the app's own code in plain dex or moved?**
   - Moved to Unity Mono C# bytecode.
4. **What must the deliverable be able to do?**
   - Install without root, display "Desi King" name, launch game directly, and avoid intrusive ad crashes/interruptions.
5. **Does the app verify its own signature, or does the server?**
   - No native self-integrity hash checks found in `libmono.so` or `libunity.so`. Repack signatures verify and run without abort.
6. **Device situation**:
   - Android Termux local environment with direct `/sdcard/Download` output for instantaneous physical installation.
7. **Executing architecture**:
   - `armeabi-v7a` (32-bit ARM).
8. **Specific feature failure**:
   - None observed during repack pipeline.
9. **Was input a circulating cracked build?**
   - Clean original release build (v1.6).
10. **Does client sign requests with signature-derived keys?**
    - No signature-derived HMAC checks on offline / peer board game functionality.
11. **App self-termination**:
    - None.
12. **Durable against update gates**:
    - Offline local play functions independently of remote update servers.
13. **Account binding**:
    - Guest and local multiplayer modes are fully functional without login.

---

## 🛠️ Applied Patch Record

1. `res/values/strings.xml`:
   - Updated `app_name` -> `Desi King`.
2. `AndroidManifest.xml` & `apktool.yml`:
   - Updated `versionName` -> `1.6-DesiKing`.
3. Ad Activity Neutralization:
   - `com.google.android.gms.ads.AdActivity.smali` (`onCreate` -> `finish(); return-void;`).
   - `com.vungle.publisher.FullScreenAdActivity.smali` (`onCreate` -> `finish(); return-void;`).
   - `com.facebook.ads.AudienceNetworkActivity.smali` (`onCreate` -> `finish(); return-void;`).
4. Rebuild, Alignment & Signature:
   - 4-byte boundary aligned with `zipalign`.
   - v1 + v2 + v3 signed with RSA 2048-bit key via `apksigner`.
