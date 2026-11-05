.class final Lcom/google/ads/mediation/chartboost/ChartboostSingleton$ChartboostSingletonDelegate;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source "ChartboostSingleton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/chartboost/ChartboostSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChartboostSingletonDelegate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/chartboost/ChartboostSingleton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/ads/mediation/chartboost/ChartboostSingleton$1;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton$ChartboostSingletonDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheInterstitial(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$100()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 304
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 306
    .local v0, "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->getChartboostParams()Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didCacheInterstitial(Ljava/lang/String;)V

    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 312
    .end local v0    # "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    :cond_1
    return-void
.end method

.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheRewardedVideo(Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$400()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 387
    .local v1, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 388
    .local v0, "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->getChartboostParams()Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didCacheRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    .end local v0    # "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    .end local v1    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;>;"
    :cond_1
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickInterstitial(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 359
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 360
    .local v0, "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didClickInterstitial(Ljava/lang/String;)V

    .line 364
    .end local v0    # "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    :cond_0
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickRewardedVideo(Ljava/lang/String;)V

    .line 413
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 414
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 415
    .local v0, "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didClickRewardedVideo(Ljava/lang/String;)V

    .line 419
    .end local v0    # "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    :cond_0
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "reward"    # I

    .prologue
    .line 436
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 437
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 438
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 439
    .local v0, "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 443
    .end local v0    # "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    :cond_0
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissInterstitial(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 347
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 348
    .local v0, "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didDismissInterstitial(Ljava/lang/String;)V

    .line 352
    .end local v0    # "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    :cond_0
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 448
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissRewardedVideo(Ljava/lang/String;)V

    .line 449
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 450
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 451
    .local v0, "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didDismissRewardedVideo(Ljava/lang/String;)V

    .line 455
    .end local v0    # "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    :cond_0
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayInterstitial(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 335
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 336
    .local v0, "adapter":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didDisplayInterstitial(Ljava/lang/String;)V

    .line 340
    .end local v0    # "adapter":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    :cond_0
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 424
    invoke-super {p0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDisplayRewardedVideo(Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 426
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 427
    .local v0, "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didDisplayRewardedVideo(Ljava/lang/String;)V

    .line 431
    .end local v0    # "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    :cond_0
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 317
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 319
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$100()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 320
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 322
    .local v0, "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->getChartboostParams()Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 325
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 328
    .end local v0    # "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    :cond_1
    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 398
    invoke-super {p0, p1, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 400
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$400()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 401
    .local v1, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 402
    .local v0, "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->getChartboostParams()Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 407
    .end local v0    # "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    .end local v1    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;>;"
    :cond_1
    return-void
.end method

.method public didInitialize()V
    .locals 4

    .prologue
    .line 370
    invoke-super {p0}, Lcom/chartboost/sdk/ChartboostDelegate;->didInitialize()V

    .line 371
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$302(Z)Z

    .line 373
    invoke-static {}, Lcom/google/ads/mediation/chartboost/ChartboostSingleton;->access$400()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 374
    .local v1, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;

    .line 375
    .local v0, "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didInitialize()V

    goto :goto_0

    .line 379
    .end local v0    # "delegate":Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
    .end local v1    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;>;"
    :cond_1
    return-void
.end method
