.class public abstract Lcom/soomla/store/domain/PurchasableVirtualItem;
.super Lcom/soomla/store/domain/VirtualItem;
.source "PurchasableVirtualItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA PurchasableVirtualItem"


# instance fields
.field private mPurchaseType:Lcom/soomla/store/purchaseTypes/PurchaseType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/soomla/store/purchaseTypes/PurchaseType;)V
    .locals 1
    .param p1, "mName"    # Ljava/lang/String;
    .param p2, "mDescription"    # Ljava/lang/String;
    .param p3, "mItemId"    # Ljava/lang/String;
    .param p4, "purchaseType"    # Lcom/soomla/store/purchaseTypes/PurchaseType;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/soomla/store/domain/VirtualItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p4, p0, Lcom/soomla/store/domain/PurchasableVirtualItem;->mPurchaseType:Lcom/soomla/store/purchaseTypes/PurchaseType;

    .line 49
    iget-object v0, p0, Lcom/soomla/store/domain/PurchasableVirtualItem;->mPurchaseType:Lcom/soomla/store/purchaseTypes/PurchaseType;

    invoke-virtual {v0, p0}, Lcom/soomla/store/purchaseTypes/PurchaseType;->setAssociatedItem(Lcom/soomla/store/domain/PurchasableVirtualItem;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/soomla/store/domain/VirtualItem;-><init>(Lorg/json/JSONObject;)V

    .line 61
    const-string v5, "purchasableItem"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 62
    .local v3, "purchasableObj":Lorg/json/JSONObject;
    const-string v5, "purchaseType"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "purchaseType":Ljava/lang/String;
    const-string v5, "market"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    const-string v5, "marketItem"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 68
    .local v2, "marketItemObj":Lorg/json/JSONObject;
    new-instance v5, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    new-instance v6, Lcom/soomla/store/domain/MarketItem;

    invoke-direct {v6, v2}, Lcom/soomla/store/domain/MarketItem;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v5, v6}, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;-><init>(Lcom/soomla/store/domain/MarketItem;)V

    iput-object v5, p0, Lcom/soomla/store/domain/PurchasableVirtualItem;->mPurchaseType:Lcom/soomla/store/purchaseTypes/PurchaseType;

    .line 78
    .end local v2    # "marketItemObj":Lorg/json/JSONObject;
    :goto_0
    iget-object v5, p0, Lcom/soomla/store/domain/PurchasableVirtualItem;->mPurchaseType:Lcom/soomla/store/purchaseTypes/PurchaseType;

    if-eqz v5, :cond_0

    .line 79
    iget-object v5, p0, Lcom/soomla/store/domain/PurchasableVirtualItem;->mPurchaseType:Lcom/soomla/store/purchaseTypes/PurchaseType;

    invoke-virtual {v5, p0}, Lcom/soomla/store/purchaseTypes/PurchaseType;->setAssociatedItem(Lcom/soomla/store/domain/PurchasableVirtualItem;)V

    .line 81
    :cond_0
    return-void

    .line 69
    :cond_1
    const-string v5, "virtualItem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    const-string v5, "pvi_itemId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "itemId":Ljava/lang/String;
    const-string v5, "pvi_amount"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, "amount":I
    new-instance v5, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;

    invoke-direct {v5, v1, v0}, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;-><init>(Ljava/lang/String;I)V

    iput-object v5, p0, Lcom/soomla/store/domain/PurchasableVirtualItem;->mPurchaseType:Lcom/soomla/store/purchaseTypes/PurchaseType;

    goto :goto_0

    .line 75
    .end local v0    # "amount":I
    .end local v1    # "itemId":Ljava/lang/String;
    :cond_2
    const-string v5, "SOOMLA PurchasableVirtualItem"

    const-string v6, "IabPurchase type not recognized !"

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public buy(Ljava/lang/String;)V
    .locals 1
    .param p1, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/InsufficientFundsException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/soomla/store/domain/PurchasableVirtualItem;->canBuy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/soomla/store/domain/PurchasableVirtualItem;->mPurchaseType:Lcom/soomla/store/purchaseTypes/PurchaseType;

    invoke-virtual {v0, p1}, Lcom/soomla/store/purchaseTypes/PurchaseType;->buy(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract canBuy()Z
.end method

.method public getPurchaseType()Lcom/soomla/store/purchaseTypes/PurchaseType;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/soomla/store/domain/PurchasableVirtualItem;->mPurchaseType:Lcom/soomla/store/purchaseTypes/PurchaseType;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 9

    .prologue
    .line 88
    invoke-super {p0}, Lcom/soomla/store/domain/VirtualItem;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    .line 89
    .local v5, "parentJsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 92
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 94
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "SOOMLA PurchasableVirtualItem"

    const-string v8, "An error occurred while generating JSON object."

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v1

    .line 98
    .restart local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .local v6, "purchasableObj":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/soomla/store/domain/PurchasableVirtualItem;->mPurchaseType:Lcom/soomla/store/purchaseTypes/PurchaseType;

    instance-of v7, v7, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    if-eqz v7, :cond_2

    .line 101
    const-string v7, "purchaseType"

    const-string v8, "market"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    iget-object v7, p0, Lcom/soomla/store/domain/PurchasableVirtualItem;->mPurchaseType:Lcom/soomla/store/purchaseTypes/PurchaseType;

    check-cast v7, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    invoke-virtual {v7}, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->getMarketItem()Lcom/soomla/store/domain/MarketItem;

    move-result-object v4

    .line 104
    .local v4, "mi":Lcom/soomla/store/domain/MarketItem;
    const-string v7, "marketItem"

    invoke-virtual {v4}, Lcom/soomla/store/domain/MarketItem;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    .end local v4    # "mi":Lcom/soomla/store/domain/MarketItem;
    :cond_1
    :goto_2
    const-string v7, "purchasableItem"

    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 105
    :cond_2
    iget-object v7, p0, Lcom/soomla/store/domain/PurchasableVirtualItem;->mPurchaseType:Lcom/soomla/store/purchaseTypes/PurchaseType;

    instance-of v7, v7, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;

    if-eqz v7, :cond_1

    .line 106
    const-string v7, "purchaseType"

    const-string v8, "virtualItem"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v8, "pvi_itemId"

    iget-object v7, p0, Lcom/soomla/store/domain/PurchasableVirtualItem;->mPurchaseType:Lcom/soomla/store/purchaseTypes/PurchaseType;

    check-cast v7, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;

    invoke-virtual {v7}, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->getTargetItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v8, "pvi_amount"

    iget-object v7, p0, Lcom/soomla/store/domain/PurchasableVirtualItem;->mPurchaseType:Lcom/soomla/store/purchaseTypes/PurchaseType;

    check-cast v7, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;

    invoke-virtual {v7}, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->getAmount()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
