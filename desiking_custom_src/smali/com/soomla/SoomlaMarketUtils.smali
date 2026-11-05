.class public Lcom/soomla/SoomlaMarketUtils;
.super Ljava/lang/Object;
.source "SoomlaMarketUtils.java"


# static fields
.field private static final AMAZON_INSTALLER:Ljava/lang/String; = "com.amazon.venezia"

.field private static final ANDROID_INSTALLER:Ljava/lang/String; = "com.android.vending"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "SOOMLA SoomlaStoreDetector"

    sput-object v0, Lcom/soomla/SoomlaMarketUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarketAppPageUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p0}, Lcom/soomla/SoomlaMarketUtils;->isInstalledFromGooglePlay(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    const-string v2, "market://details?id=%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 38
    :cond_0
    :goto_0
    return-object v1

    .line 33
    :cond_1
    invoke-static {p0}, Lcom/soomla/SoomlaMarketUtils;->isInstalledFromAmazonStore(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const-string v2, "amzn://apps/android?p=%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static hasAmazonClasses()Z
    .locals 6

    .prologue
    .line 81
    const-class v4, Lcom/soomla/SoomlaUtils;

    monitor-enter v4

    .line 83
    :try_start_0
    const-class v3, Lcom/soomla/SoomlaUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 84
    .local v0, "localClassLoader":Ljava/lang/ClassLoader;
    const-string v3, "com.amazon.android.Kiwi"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    const/4 v2, 0x1

    .line 90
    .local v2, "result":Z
    :goto_0
    :try_start_1
    monitor-exit v4

    .line 91
    return v2

    .line 86
    .end local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 87
    .local v1, "localThrowable":Ljava/lang/Throwable;
    sget-object v3, Lcom/soomla/SoomlaMarketUtils;->TAG:Ljava/lang/String;

    const-string v5, "hasAmazonClasses() cannot load class com.amazon.android.Kiwi"

    invoke-static {v3, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0

    .line 90
    .end local v1    # "localThrowable":Ljava/lang/Throwable;
    .end local v2    # "result":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static isInstalledFromAmazonStore(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string v0, "com.amazon.venezia"

    invoke-static {p0, v0}, Lcom/soomla/SoomlaMarketUtils;->isPackageInstaller(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInstalledFromGooglePlay(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-string v0, "com.android.vending"

    invoke-static {p0, v0}, Lcom/soomla/SoomlaMarketUtils;->isPackageInstaller(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPackageInstaller(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "installer"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "installerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openMarketAppPage(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    invoke-static {p0}, Lcom/soomla/SoomlaMarketUtils;->getMarketAppPageUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "marketAppPageUrl":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 19
    sget-object v2, Lcom/soomla/SoomlaMarketUtils;->TAG:Ljava/lang/String;

    const-string v3, "no valid market app page url found!"

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
