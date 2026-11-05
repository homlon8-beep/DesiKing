.class Lcom/soomla/store/billing/google/GooglePlayIabService$FetchSkusDetailsFinishedListener;
.super Ljava/lang/Object;
.source "GooglePlayIabService.java"

# interfaces
.implements Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/store/billing/google/GooglePlayIabService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchSkusDetailsFinishedListener"
.end annotation


# instance fields
.field private mFetchSkusDetailsListener:Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;

.field final synthetic this$0:Lcom/soomla/store/billing/google/GooglePlayIabService;


# direct methods
.method public constructor <init>(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;)V
    .locals 0
    .param p2, "fetchSkusDetailsListener"    # Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$FetchSkusDetailsFinishedListener;->this$0:Lcom/soomla/store/billing/google/GooglePlayIabService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$FetchSkusDetailsFinishedListener;->mFetchSkusDetailsListener:Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;

    .line 302
    return-void
.end method


# virtual methods
.method public onFetchSkusDetailsFinished(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabInventory;)V
    .locals 8
    .param p1, "result"    # Lcom/soomla/store/billing/IabResult;
    .param p2, "inventory"    # Lcom/soomla/store/billing/IabInventory;

    .prologue
    .line 306
    const-string v5, "SOOMLA GooglePlayIabService"

    const-string v6, "Restore Purchases succeeded"

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabResult;->getResponse()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$FetchSkusDetailsFinishedListener;->mFetchSkusDetailsListener:Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;

    if-eqz v5, :cond_3

    .line 311
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/soomla/store/billing/IabInventory;->getAllQueriedSkus(Z)Ljava/util/List;

    move-result-object v4

    .line 312
    .local v4, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v3, "skuDetails":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/billing/IabSkuDetails;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    .local v1, "sku":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/soomla/store/billing/IabInventory;->getSkuDetails(Ljava/lang/String;)Lcom/soomla/store/billing/IabSkuDetails;

    move-result-object v2

    .line 315
    .local v2, "skuDetail":Lcom/soomla/store/billing/IabSkuDetails;
    if-eqz v2, :cond_0

    .line 316
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    .end local v1    # "sku":Ljava/lang/String;
    .end local v2    # "skuDetail":Lcom/soomla/store/billing/IabSkuDetails;
    :cond_1
    iget-object v5, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$FetchSkusDetailsFinishedListener;->mFetchSkusDetailsListener:Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;

    invoke-interface {v5, v3}, Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;->success(Ljava/util/List;)V

    .line 326
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "skuDetails":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/billing/IabSkuDetails;>;"
    .end local v4    # "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$FetchSkusDetailsFinishedListener;->this$0:Lcom/soomla/store/billing/google/GooglePlayIabService;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$000(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V

    .line 327
    return-void

    .line 322
    :cond_3
    const-string v5, "SOOMLA GooglePlayIabService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wither mFetchSkusDetailsListener==null OR Fetching details error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/soomla/store/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v5, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$FetchSkusDetailsFinishedListener;->mFetchSkusDetailsListener:Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$FetchSkusDetailsFinishedListener;->mFetchSkusDetailsListener:Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;

    invoke-virtual {p1}, Lcom/soomla/store/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;->fail(Ljava/lang/String;)V

    goto :goto_1
.end method
