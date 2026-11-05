.class public Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;
.super Lcom/soomla/store/domain/VirtualItem;
.source "VirtualCurrency.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;
    .param p2, "mDescription"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/soomla/store/domain/VirtualItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
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
    .line 58
    invoke-direct {p0, p1}, Lcom/soomla/store/domain/VirtualItem;-><init>(Lorg/json/JSONObject;)V

    .line 59
    return-void
.end method


# virtual methods
.method public give(IZ)I
    .locals 2
    .param p1, "amount"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 76
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualCurrencyStorage()Lcom/soomla/store/data/VirtualCurrencyStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/soomla/store/data/VirtualCurrencyStorage;->add(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public resetBalance(IZ)I
    .locals 2
    .param p1, "balance"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 92
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualCurrencyStorage()Lcom/soomla/store/data/VirtualCurrencyStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/soomla/store/data/VirtualCurrencyStorage;->setBalance(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public take(IZ)I
    .locals 2
    .param p1, "amount"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 84
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualCurrencyStorage()Lcom/soomla/store/data/VirtualCurrencyStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/soomla/store/data/VirtualCurrencyStorage;->remove(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/soomla/store/domain/VirtualItem;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
