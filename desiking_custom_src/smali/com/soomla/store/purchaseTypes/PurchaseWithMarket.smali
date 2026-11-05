.class public Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;
.super Lcom/soomla/store/purchaseTypes/PurchaseType;
.source "PurchaseWithMarket.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA PurchaseWithMarket"


# instance fields
.field private mMarketItem:Lcom/soomla/store/domain/MarketItem;


# direct methods
.method public constructor <init>(Lcom/soomla/store/domain/MarketItem;)V
    .locals 0
    .param p1, "marketItem"    # Lcom/soomla/store/domain/MarketItem;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/soomla/store/purchaseTypes/PurchaseType;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->mMarketItem:Lcom/soomla/store/domain/MarketItem;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;D)V
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "price"    # D

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/soomla/store/purchaseTypes/PurchaseType;-><init>()V

    .line 43
    new-instance v0, Lcom/soomla/store/domain/MarketItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/soomla/store/domain/MarketItem;-><init>(Ljava/lang/String;D)V

    iput-object v0, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->mMarketItem:Lcom/soomla/store/domain/MarketItem;

    .line 44
    return-void
.end method


# virtual methods
.method public buy(Ljava/lang/String;)V
    .locals 4
    .param p1, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/InsufficientFundsException;
        }
    .end annotation

    .prologue
    .line 62
    const-string v1, "SOOMLA PurchaseWithMarket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting in-app purchase for productId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->mMarketItem:Lcom/soomla/store/domain/MarketItem;

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v1

    new-instance v2, Lcom/soomla/store/events/ItemPurchaseStartedEvent;

    invoke-virtual {p0}, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->getAssociatedItem()Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/soomla/store/events/ItemPurchaseStartedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 67
    :try_start_0
    invoke-static {}, Lcom/soomla/store/SoomlaStore;->getInstance()Lcom/soomla/store/SoomlaStore;

    move-result-object v1

    iget-object v2, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->mMarketItem:Lcom/soomla/store/domain/MarketItem;

    invoke-virtual {v1, v2, p1}, Lcom/soomla/store/SoomlaStore;->buyWithMarket(Lcom/soomla/store/domain/MarketItem;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "SOOMLA PurchaseWithMarket"

    const-string v2, "Error when purchasing item"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMarketItem()Lcom/soomla/store/domain/MarketItem;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->mMarketItem:Lcom/soomla/store/domain/MarketItem;

    return-object v0
.end method
