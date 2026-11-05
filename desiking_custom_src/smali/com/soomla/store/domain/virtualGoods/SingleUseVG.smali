.class public Lcom/soomla/store/domain/virtualGoods/SingleUseVG;
.super Lcom/soomla/store/domain/virtualGoods/VirtualGood;
.source "SingleUseVG.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/soomla/store/purchaseTypes/PurchaseType;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;
    .param p2, "mDescription"    # Ljava/lang/String;
    .param p3, "mItemId"    # Ljava/lang/String;
    .param p4, "purchaseType"    # Lcom/soomla/store/purchaseTypes/PurchaseType;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/soomla/store/purchaseTypes/PurchaseType;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;-><init>(Lorg/json/JSONObject;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected canBuy()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public give(IZ)I
    .locals 2
    .param p1, "amount"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 79
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/SingleUseVG;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/soomla/store/data/VirtualGoodsStorage;->add(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public take(IZ)I
    .locals 2
    .param p1, "amount"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 87
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/SingleUseVG;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/soomla/store/data/VirtualGoodsStorage;->remove(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
