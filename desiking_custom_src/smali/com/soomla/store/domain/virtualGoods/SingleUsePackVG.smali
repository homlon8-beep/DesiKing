.class public Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;
.super Lcom/soomla/store/domain/virtualGoods/VirtualGood;
.source "SingleUsePackVG.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA SingleUsePackVG"


# instance fields
.field private mGoodAmount:I

.field private mGoodItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/soomla/store/purchaseTypes/PurchaseType;)V
    .locals 0
    .param p1, "goodItemId"    # Ljava/lang/String;
    .param p2, "amount"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "itemId"    # Ljava/lang/String;
    .param p6, "purchaseType"    # Lcom/soomla/store/purchaseTypes/PurchaseType;

    .prologue
    .line 64
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/soomla/store/purchaseTypes/PurchaseType;)V

    .line 66
    iput-object p1, p0, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;->mGoodItemId:Ljava/lang/String;

    .line 67
    iput p2, p0, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;->mGoodAmount:I

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;-><init>(Lorg/json/JSONObject;)V

    .line 79
    const-string v0, "good_itemId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;->mGoodItemId:Ljava/lang/String;

    .line 80
    const-string v0, "good_amount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;->mGoodAmount:I

    .line 81
    return-void
.end method


# virtual methods
.method protected canBuy()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public getGoodAmount()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;->mGoodAmount:I

    return v0
.end method

.method public getGoodItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;->mGoodItemId:Ljava/lang/String;

    return-object v0
.end method

.method public give(IZ)I
    .locals 6
    .param p1, "amount"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 114
    .local v2, "good":Lcom/soomla/store/domain/virtualGoods/SingleUseVG;
    :try_start_0
    iget-object v3, p0, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;->mGoodItemId:Ljava/lang/String;

    invoke-static {v3}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/SingleUseVG;

    move-object v2, v0
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v3

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/SingleUseVG;->getItemId()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;->mGoodAmount:I

    mul-int/2addr v5, p1

    invoke-virtual {v3, v4, v5, p2}, Lcom/soomla/store/data/VirtualGoodsStorage;->add(Ljava/lang/String;IZ)I

    move-result v3

    :goto_0
    return v3

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v3, "SOOMLA SingleUsePackVG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SingleUseVG with itemId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;->mGoodItemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t exist! Can\'t give this pack."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public take(IZ)I
    .locals 6
    .param p1, "amount"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 129
    .local v2, "good":Lcom/soomla/store/domain/virtualGoods/SingleUseVG;
    :try_start_0
    iget-object v3, p0, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;->mGoodItemId:Ljava/lang/String;

    invoke-static {v3}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/SingleUseVG;

    move-object v2, v0
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v3

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/SingleUseVG;->getItemId()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;->mGoodAmount:I

    mul-int/2addr v5, p1

    invoke-virtual {v3, v4, v5, p2}, Lcom/soomla/store/data/VirtualGoodsStorage;->remove(Ljava/lang/String;IZ)I

    move-result v3

    :goto_0
    return v3

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v3, "SOOMLA SingleUsePackVG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SingleUseVG with itemId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;->mGoodItemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t exist! Can\'t take this pack."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 88
    invoke-super {p0}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 89
    .local v4, "parentJsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 92
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "SOOMLA SingleUsePackVG"

    const-string v6, "An error occurred while generating JSON object."

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v1

    .line 98
    .restart local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :try_start_1
    const-string v5, "good_itemId"

    iget-object v6, p0, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;->mGoodItemId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v5, "good_amount"

    iget v6, p0, Lcom/soomla/store/domain/virtualGoods/SingleUsePackVG;->mGoodAmount:I

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
