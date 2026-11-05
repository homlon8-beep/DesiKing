.class public Lcom/soomla/store/domain/virtualGoods/LifetimeVG;
.super Lcom/soomla/store/domain/virtualGoods/VirtualGood;
.source "LifetimeVG.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const-string v0, "SOOMLA LifetimeVG"

    sput-object v0, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/soomla/store/purchaseTypes/PurchaseType;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;
    .param p2, "mDescription"    # Ljava/lang/String;
    .param p3, "mItemId"    # Ljava/lang/String;
    .param p4, "purchaseType"    # Lcom/soomla/store/purchaseTypes/PurchaseType;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/soomla/store/purchaseTypes/PurchaseType;)V

    .line 57
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
    .line 66
    invoke-direct {p0, p1}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;-><init>(Lorg/json/JSONObject;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected canBuy()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 135
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v2

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/soomla/store/data/VirtualGoodsStorage;->getBalance(Ljava/lang/String;)I

    move-result v0

    .line 137
    .local v0, "balance":I
    if-ge v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public give(IZ)I
    .locals 4
    .param p1, "amount"    # I
    .param p2, "notify"    # Z

    .prologue
    const/4 v1, 0x1

    .line 88
    if-le p1, v1, :cond_0

    .line 89
    sget-object v2, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;->TAG:Ljava/lang/String;

    const-string v3, "You tried to give more than one LifetimeVG.Will try to give one anyway."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 p1, 0x1

    .line 94
    :cond_0
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v2

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/soomla/store/data/VirtualGoodsStorage;->getBalance(Ljava/lang/String;)I

    move-result v0

    .line 96
    .local v0, "balance":I
    if-ge v0, v1, :cond_1

    .line 97
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/soomla/store/data/VirtualGoodsStorage;->add(Ljava/lang/String;IZ)I

    move-result v1

    .line 99
    :cond_1
    return v1
.end method

.method public take(IZ)I
    .locals 3
    .param p1, "amount"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 112
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 113
    const/4 p1, 0x1

    .line 116
    :cond_0
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/soomla/store/data/VirtualGoodsStorage;->getBalance(Ljava/lang/String;)I

    move-result v0

    .line 118
    .local v0, "balance":I
    if-lez v0, :cond_1

    .line 119
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/soomla/store/data/VirtualGoodsStorage;->remove(Ljava/lang/String;IZ)I

    move-result v1

    .line 121
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
