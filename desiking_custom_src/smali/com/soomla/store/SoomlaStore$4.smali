.class Lcom/soomla/store/SoomlaStore$4;
.super Ljava/lang/Object;
.source "SoomlaStore.java"

# interfaces
.implements Lcom/soomla/store/billing/IabCallbacks$IabInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/SoomlaStore;->refreshMarketItemsDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/SoomlaStore;


# direct methods
.method constructor <init>(Lcom/soomla/store/SoomlaStore;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/soomla/store/SoomlaStore$4;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore$4;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v0, p1}, Lcom/soomla/store/SoomlaStore;->access$400(Lcom/soomla/store/SoomlaStore;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public success(Z)V
    .locals 6
    .param p1, "alreadyInBg"    # Z

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    iget-object v3, p0, Lcom/soomla/store/SoomlaStore$4;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v3}, Lcom/soomla/store/SoomlaStore;->access$000(Lcom/soomla/store/SoomlaStore;)V

    .line 246
    :cond_0
    const-string v3, "SOOMLA SoomlaStore"

    const-string v4, "Setup successful, refreshing market items details"

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v1, Lcom/soomla/store/SoomlaStore$4$1;

    invoke-direct {v1, p0}, Lcom/soomla/store/SoomlaStore$4$1;-><init>(Lcom/soomla/store/SoomlaStore$4;)V

    .line 303
    .local v1, "fetchSkusDetailsListener":Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->getAllProductIds()Ljava/util/List;

    move-result-object v2

    .line 305
    .local v2, "purchasableProductIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v3

    new-instance v4, Lcom/soomla/store/events/MarketItemsRefreshStartedEvent;

    invoke-direct {v4}, Lcom/soomla/store/events/MarketItemsRefreshStartedEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 308
    :try_start_0
    iget-object v3, p0, Lcom/soomla/store/SoomlaStore$4;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v3}, Lcom/soomla/store/SoomlaStore;->access$300(Lcom/soomla/store/SoomlaStore;)Lcom/soomla/store/billing/IIabService;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/soomla/store/billing/IIabService;->fetchSkusDetailsAsync(Ljava/util/List;Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v3, "SOOMLA SoomlaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t proceed with fetchSkusDetails. error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t proceed with fetchSkusDetails. error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method
