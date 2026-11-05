.class public final Lcom/google/ads/mediation/chartboost/ChartboostSingleton;
.super Ljava/lang/Object;
.source "ChartboostSingleton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/chartboost/ChartboostSingleton$ChartboostSingletonDelegate;
    }
.end annotation


# static fields
.field private static chartboostSingletonDelegate:Lcom/google/ads/mediation/chartboost/ChartboostSingleton$ChartboostSingletonDelegate;

.field private static mAdShowingAdapterDelegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static mInterstitialDelegatesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mIsChartboostInitialized:Z

.field private static mRewardedVideoDelegatesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->mInterstitialDelegatesSet:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->mRewardedVideoDelegatesSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    return-void
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->mInterstitialDelegatesSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->mAdShowingAdapterDelegate:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 23
    sput-boolean p0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->mIsChartboostInitialized:Z

    return p0
.end method

.method static synthetic access$400()Ljava/util/Set;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->mRewardedVideoDelegatesSet:Ljava/util/Set;

    return-object v0
.end method

.method private static addInterstitialDelegate(Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V
    .locals 2
    .param p0, "delegate"    # Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .prologue
    .line 79
    sget-object v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->mInterstitialDelegatesSet:Ljava/util/Set;

    invoke-static {v0, p0}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->removeNullAndDuplicateReferences(Ljava/util/Set;Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V

    .line 80
    sget-object v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->mInterstitialDelegatesSet:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method private static addRewardedVideoDelegate(Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V
    .locals 2
    .param p0, "delegate"    # Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .prologue
    .line 90
    sget-object v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->mRewardedVideoDelegatesSet:Ljava/util/Set;

    invoke-static {v0, p0}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->removeNullAndDuplicateReferences(Ljava/util/Set;Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V

    .line 91
    sget-object v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->mRewardedVideoDelegatesSet:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method private static getInstance()Lcom/google/ads/mediation/chartboost/ChartboostSingleton$ChartboostSingletonDelegate;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->chartboostSingletonDelegate:Lcom/google/ads/mediation/chartboost/ChartboostSingleton$ChartboostSingletonDelegate;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton$ChartboostSingletonDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton$ChartboostSingletonDelegate;-><init>(Lcom/google/ads/mediation/chartboost/ChartboostSingleton$1;)V

    sput-object v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->chartboostSingletonDelegate:Lcom/google/ads/mediation/chartboost/ChartboostSingleton$ChartboostSingletonDelegate;

    .line 69
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->chartboostSingletonDelegate:Lcom/google/ads/mediation/chartboost/ChartboostSingleton$ChartboostSingletonDelegate;

    return-object v0
.end method

.method private static isValidContext(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 173
    if-nez p0, :cond_0

    .line 174
    sget-object v1, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Context cannot be null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return v0

    .line 178
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 179
    sget-object v1, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Context is not an Activity. Chartboost requires an Activity context to load ads."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static loadInterstitialAd(Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V
    .locals 2
    .param p0, "delegate"    # Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->getChartboostParams()Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "location":Ljava/lang/String;
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasInterstitial(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didCacheInterstitial(Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static loadRewardedVideoAd(Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V
    .locals 2
    .param p0, "delegate"    # Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->getChartboostParams()Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "location":Ljava/lang/String;
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didCacheRewardedVideo(Ljava/lang/String;)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static removeNullAndDuplicateReferences(Ljava/util/Set;Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V
    .locals 3
    .param p1, "currentDelegate"    # Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;",
            ">;>;",
            "Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    .line 106
    .local p0, "weakReferenceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ref/WeakReference<Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;>;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 107
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 109
    .local v0, "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    if-nez v0, :cond_1

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 115
    .end local v0    # "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    :cond_2
    return-void
.end method

.method protected static showInterstitialAd(Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V
    .locals 1
    .param p0, "delegate"    # Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .prologue
    .line 252
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->mAdShowingAdapterDelegate:Ljava/lang/ref/WeakReference;

    .line 254
    invoke-virtual {p0}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->getChartboostParams()Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method protected static showRewardedVideoAd(Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V
    .locals 1
    .param p0, "delegate"    # Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .prologue
    .line 285
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->mAdShowingAdapterDelegate:Ljava/lang/ref/WeakReference;

    .line 287
    invoke-virtual {p0}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->getChartboostParams()Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->showRewardedVideo(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method private static startChartboost(Landroid/app/Activity;Lcom/google/ads/mediation/chartboost/ChartboostParams;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "params"    # Lcom/google/ads/mediation/chartboost/ChartboostParams;

    .prologue
    .line 197
    invoke-virtual {p1}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getFramework()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getFramework()Lcom/chartboost/sdk/Chartboost$CBFramework;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V

    .line 202
    :cond_0
    sget-boolean v0, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->mIsChartboostInitialized:Z

    if-nez v0, :cond_1

    .line 203
    invoke-virtual {p1}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getAppSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBMediation;->CBMediationAdMob:Lcom/chartboost/sdk/Chartboost$CBMediation;

    const-string v1, "1.1.0"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->setMediation(Lcom/chartboost/sdk/Chartboost$CBMediation;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging$Level;->INTEGRATION:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    .line 208
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->getInstance()Lcom/google/ads/mediation/chartboost/ChartboostSingleton$ChartboostSingletonDelegate;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 209
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setAutoCacheAds(Z)V

    .line 216
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 217
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 218
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->getInstance()Lcom/google/ads/mediation/chartboost/ChartboostSingleton$ChartboostSingletonDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton$ChartboostSingletonDelegate;->didInitialize()V

    goto :goto_0
.end method

.method public static startChartboostInterstitial(Landroid/content/Context;Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adapterDelegate"    # Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .prologue
    .line 129
    invoke-static {p1}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->addInterstitialDelegate(Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V

    .line 132
    invoke-static {p0}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->isValidContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 137
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return v0

    .line 136
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->getChartboostParams()Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->startChartboost(Landroid/app/Activity;Lcom/google/ads/mediation/chartboost/ChartboostParams;)V

    .line 137
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static startChartboostRewardedVideo(Landroid/content/Context;Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adapterDelegate"    # Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .prologue
    .line 152
    invoke-static {p1}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->addRewardedVideoDelegate(Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;)V

    .line 155
    invoke-static {p0}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->isValidContext(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 162
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return v1

    .line 159
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->getChartboostParams()Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v0

    .line 160
    .local v0, "params":Lcom/google/ads/mediation/chartboost/ChartboostParams;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-static {p0, v0}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->startChartboost(Landroid/app/Activity;Lcom/google/ads/mediation/chartboost/ChartboostParams;)V

    .line 161
    invoke-virtual {v0}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    .line 162
    const/4 v1, 0x1

    goto :goto_0
.end method
