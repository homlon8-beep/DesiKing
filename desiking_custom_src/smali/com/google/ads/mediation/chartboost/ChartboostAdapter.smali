.class public Lcom/google/ads/mediation/chartboost/ChartboostAdapter;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/chartboost/ChartboostAdapter$ChartboostExtrasBundleBuilder;
    }
.end annotation


# static fields
.field protected static final ADAPTER_VERSION_NAME:Ljava/lang/String; = "1.1.0"

.field private static final KEY_AD_LOCATION:Ljava/lang/String; = "adLocation"

.field private static final KEY_APP_ID:Ljava/lang/String; = "appId"

.field private static final KEY_APP_SIGNATURE:Ljava/lang/String; = "appSignature"

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mChartboostInterstitialDelegate:Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

.field private mChartboostParams:Lcom/google/ads/mediation/chartboost/ChartboostParams;

.field private mChartboostRewardedVideoDelegate:Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

.field private mIsInitialized:Z

.field private mIsLoading:Z

.field private mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

.field private mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/google/ads/mediation/chartboost/ChartboostParams;

    invoke-direct {v0}, Lcom/google/ads/mediation/chartboost/ChartboostParams;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostParams:Lcom/google/ads/mediation/chartboost/ChartboostParams;

    .line 77
    new-instance v0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;-><init>(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)V

    iput-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostInterstitialDelegate:Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 141
    new-instance v0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;-><init>(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)V

    iput-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostRewardedVideoDelegate:Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 447
    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/ads/mediation/chartboost/ChartboostParams;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostParams:Lcom/google/ads/mediation/chartboost/ChartboostParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/ads/mediation/chartboost/ChartboostAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$300(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)I
    .locals 1
    .param p0, "x0"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->getAdRequestErrorType(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mIsInitialized:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/ads/mediation/chartboost/ChartboostAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mIsInitialized:Z

    return p1
.end method

.method private createChartboostParams(Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/ads/mediation/chartboost/ChartboostParams;
    .locals 9
    .param p1, "serverParameters"    # Landroid/os/Bundle;
    .param p2, "networkExtras"    # Landroid/os/Bundle;

    .prologue
    .line 277
    new-instance v3, Lcom/google/ads/mediation/chartboost/ChartboostParams;

    invoke-direct {v3}, Lcom/google/ads/mediation/chartboost/ChartboostParams;-><init>()V

    .line 278
    .local v3, "params":Lcom/google/ads/mediation/chartboost/ChartboostParams;
    const-string v4, "appId"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "appId":Ljava/lang/String;
    const-string v4, "appSignature"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "appSignature":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 281
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->setAppId(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->setAppSignature(Ljava/lang/String;)V

    .line 285
    :cond_0
    const-string v4, "adLocation"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "adLocation":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->isValidParam(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 288
    sget-object v4, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Chartboost ad location is empty, defaulting to %s. Please set the Ad Location parameter in your AdMob console."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "Default"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v0, "Default"

    .line 293
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->setLocation(Ljava/lang/String;)V

    .line 295
    if-eqz p2, :cond_2

    .line 296
    const-string v4, "framework"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "framework_version"

    .line 297
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    iget-object v5, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostParams:Lcom/google/ads/mediation/chartboost/ChartboostParams;

    const-string v4, "framework"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v5, v4}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;)V

    .line 301
    iget-object v4, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostParams:Lcom/google/ads/mediation/chartboost/ChartboostParams;

    const-string v5, "framework_version"

    .line 302
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 301
    invoke-virtual {v4, v5}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->setFrameworkVersion(Ljava/lang/String;)V

    .line 306
    :cond_2
    return-object v3
.end method

.method private static getAdRequestErrorType(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)I
    .locals 2
    .param p0, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 230
    sget-object v0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$3;->$SwitchMap$com$chartboost$sdk$Model$CBError$CBImpressionError:[I

    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 261
    const/4 v0, 0x3

    :goto_0
    return v0

    .line 245
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 255
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private isValidChartboostParams(Lcom/google/ads/mediation/chartboost/ChartboostParams;)Z
    .locals 6
    .param p1, "params"    # Lcom/google/ads/mediation/chartboost/ChartboostParams;

    .prologue
    .line 318
    invoke-virtual {p1}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "appId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getAppSignature()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "appSignature":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->isValidParam(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->isValidParam(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 321
    :cond_0
    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->isValidParam(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->isValidParam(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "App ID and App Signature"

    .line 323
    .local v2, "log":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " cannot be empty."

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v3, 0x0

    .line 326
    .end local v2    # "log":Ljava/lang/String;
    :goto_1
    return v3

    .line 321
    :cond_1
    const-string v2, "App ID"

    goto :goto_0

    :cond_2
    const-string v2, "App Signature"

    goto :goto_0

    .line 326
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static isValidParam(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 337
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "mediationRewardedVideoAdListener"    # Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;
    .param p5, "serverParameters"    # Landroid/os/Bundle;
    .param p6, "networkExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 386
    iput-object p4, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    .line 388
    invoke-direct {p0, p5, p6}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->createChartboostParams(Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostParams:Lcom/google/ads/mediation/chartboost/ChartboostParams;

    .line 389
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostParams:Lcom/google/ads/mediation/chartboost/ChartboostParams;

    invoke-direct {p0, v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->isValidChartboostParams(Lcom/google/ads/mediation/chartboost/ChartboostParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationFailed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostRewardedVideoDelegate:Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    invoke-static {p1, v0}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->startChartboostRewardedVideo(Landroid/content/Context;Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mMediationRewardedVideoAdListener:Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationFailed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mIsInitialized:Z

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p2, "serverParameters"    # Landroid/os/Bundle;
    .param p3, "networkExtras"    # Landroid/os/Bundle;

    .prologue
    .line 413
    invoke-direct {p0, p2, p3}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->createChartboostParams(Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostParams:Lcom/google/ads/mediation/chartboost/ChartboostParams;

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mIsLoading:Z

    .line 416
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostRewardedVideoDelegate:Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->loadRewardedVideoAd(Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V

    .line 417
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediationInterstitialListener"    # Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .param p3, "serverParameters"    # Landroid/os/Bundle;
    .param p4, "mediationAdRequest"    # Lcom/google/android/gms/ads/mediation/MediationAdRequest;
    .param p5, "networkExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 346
    iput-object p2, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 348
    invoke-direct {p0, p3, p5}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->createChartboostParams(Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostParams:Lcom/google/ads/mediation/chartboost/ChartboostParams;

    .line 349
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostParams:Lcom/google/ads/mediation/chartboost/ChartboostParams;

    invoke-direct {p0, v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->isValidChartboostParams(Lcom/google/ads/mediation/chartboost/ChartboostParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostInterstitialDelegate:Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    invoke-static {p1, v0}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->startChartboostInterstitial(Landroid/content/Context;Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mMediationInterstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    goto :goto_0

    .line 369
    :cond_2
    iput-boolean v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mIsLoading:Z

    .line 370
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostInterstitialDelegate:Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->loadInterstitialAd(Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostInterstitialDelegate:Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->showInterstitialAd(Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V

    .line 377
    return-void
.end method

.method public showVideo()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->mChartboostRewardedVideoDelegate:Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->showRewardedVideoAd(Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V

    .line 423
    return-void
.end method
