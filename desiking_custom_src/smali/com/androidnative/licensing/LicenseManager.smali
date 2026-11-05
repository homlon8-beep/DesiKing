.class public Lcom/androidnative/licensing/LicenseManager;
.super Ljava/lang/Object;
.source "LicenseManager.java"


# static fields
.field public static final LICENSE_MANAGER_LISTENER_NAME:Ljava/lang/String; = "AN_LicenseManager"

.field private static final SALT:[B

.field private static mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private static mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/androidnative/licensing/LicenseManager;->SALT:[B

    .line 21
    return-void

    .line 18
    :array_0
    .array-data 1
        -0x2et
        0x41t
        0x1et
        -0x79t
        -0x67t
        -0x39t
        0x4at
        -0x40t
        0x33t
        0x58t
        -0x5ft
        -0x2dt
        0x4dt
        -0x73t
        -0x24t
        -0x71t
        -0xbt
        0x20t
        -0x40t
        0x59t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StartLicenseRequest(Ljava/lang/String;)V
    .locals 9
    .param p0, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lcom/androidnative/licensing/AppLicenseCheckerCallback;

    invoke-direct {v0}, Lcom/androidnative/licensing/AppLicenseCheckerCallback;-><init>()V

    sput-object v0, Lcom/androidnative/licensing/LicenseManager;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 28
    new-instance v0, Lcom/google/android/vending/licensing/LicenseChecker;

    .line 29
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetApplicationContex()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/vending/licensing/ServerManagedPolicy;

    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetApplicationContex()Landroid/content/Context;

    move-result-object v3

    .line 30
    new-instance v4, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v5, Lcom/androidnative/licensing/LicenseManager;->SALT:[B

    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetApplicationContex()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 30
    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    .line 28
    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    sput-object v0, Lcom/androidnative/licensing/LicenseManager;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    .line 35
    sget-object v0, Lcom/androidnative/licensing/LicenseManager;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    sget-object v1, Lcom/androidnative/licensing/LicenseManager;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    .line 36
    return-void
.end method
