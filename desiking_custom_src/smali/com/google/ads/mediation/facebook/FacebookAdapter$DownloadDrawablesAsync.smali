.class Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;
.super Landroid/os/AsyncTask;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadDrawablesAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mDrawableListener:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;

    .prologue
    .line 643
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 644
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->mDrawableListener:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;

    .line 645
    return-void
.end method

.method private getDrawableFuture(Landroid/net/Uri;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 702
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync$1;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync$1;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;Landroid/net/Uri;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 649
    const/4 v13, 0x0

    aget-object v11, p1, v13

    check-cast v11, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;

    .line 650
    .local v11, "mapper":Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 655
    .local v5, "executorService":Ljava/util/concurrent/ExecutorService;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 657
    .local v6, "futuresMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable;>;>;"
    invoke-virtual {v11}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->getImages()Ljava/util/List;

    move-result-object v10

    .line 658
    .local v10, "images":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/ads/formats/NativeAd$Image;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_0

    .line 660
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    .line 662
    .local v9, "image":Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;
    invoke-virtual {v9}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;->getUri()Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->getDrawableFuture(Landroid/net/Uri;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 663
    .local v3, "drawableFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v6, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 667
    .end local v3    # "drawableFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable;>;"
    .end local v9    # "image":Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;
    :cond_0
    invoke-virtual {v11}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v8

    check-cast v8, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    .line 669
    .local v8, "iconImage":Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;
    invoke-virtual {v8}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;->getUri()Landroid/net/Uri;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->getDrawableFuture(Landroid/net/Uri;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 670
    .restart local v3    # "drawableFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v6, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 677
    .local v12, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable;>;>;"
    :try_start_0
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/Future;

    const-wide/16 v16, 0xa

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-interface {v13, v0, v1, v15}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 683
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    invoke-virtual {v13, v2}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 678
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    .line 679
    .local v4, "exception":Ljava/lang/Exception;
    :goto_2
    const-string v13, "FacebookAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception occurred while waiting for future to return. Returning null as drawable : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 686
    .end local v4    # "exception":Ljava/lang/Exception;
    .end local v12    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable;>;>;"
    :goto_3
    return-object v13

    :cond_1
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    goto :goto_3

    .line 678
    .restart local v12    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable;>;>;"
    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 635
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isDownloadSuccessful"    # Ljava/lang/Boolean;

    .prologue
    .line 717
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 718
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->mDrawableListener:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;->onMappingSuccess()V

    .line 724
    :goto_0
    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->mDrawableListener:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;->onMappingFailed()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 635
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
