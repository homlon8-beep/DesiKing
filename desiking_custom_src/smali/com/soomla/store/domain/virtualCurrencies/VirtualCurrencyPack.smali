.class public Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;
.super Lcom/soomla/store/domain/PurchasableVirtualItem;
.source "VirtualCurrencyPack.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA VirtualCurrencyPack"


# instance fields
.field private mCurrencyAmount:I

.field private mCurrencyItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/soomla/store/purchaseTypes/PurchaseType;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;
    .param p2, "mDescription"    # Ljava/lang/String;
    .param p3, "mItemId"    # Ljava/lang/String;
    .param p4, "mCurrencyAmount"    # I
    .param p5, "mCurrencyItemId"    # Ljava/lang/String;
    .param p6, "purchaseType"    # Lcom/soomla/store/purchaseTypes/PurchaseType;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/soomla/store/domain/PurchasableVirtualItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/soomla/store/purchaseTypes/PurchaseType;)V

    .line 62
    iput-object p5, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->mCurrencyItemId:Ljava/lang/String;

    .line 63
    iput p4, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->mCurrencyAmount:I

    .line 64
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
    .line 73
    invoke-direct {p0, p1}, Lcom/soomla/store/domain/PurchasableVirtualItem;-><init>(Lorg/json/JSONObject;)V

    .line 74
    const-string v0, "currency_amount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->mCurrencyAmount:I

    .line 76
    const-string v0, "currency_itemId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->mCurrencyItemId:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method protected canBuy()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrencyAmount()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->mCurrencyAmount:I

    return v0
.end method

.method public getCurrencyItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->mCurrencyItemId:Ljava/lang/String;

    return-object v0
.end method

.method public give(IZ)I
    .locals 6
    .param p1, "amount"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, "currency":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;
    :try_start_0
    iget-object v3, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->mCurrencyItemId:Ljava/lang/String;

    invoke-static {v3}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;

    move-object v1, v0
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualCurrencyStorage()Lcom/soomla/store/data/VirtualCurrencyStorage;

    move-result-object v3

    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;->getItemId()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->mCurrencyAmount:I

    mul-int/2addr v5, p1

    invoke-virtual {v3, v4, v5, p2}, Lcom/soomla/store/data/VirtualCurrencyStorage;->add(Ljava/lang/String;IZ)I

    move-result v3

    :goto_0
    return v3

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v3, "SOOMLA VirtualCurrencyPack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VirtualCurrency with itemId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->mCurrencyItemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t exist! Can\'t give this pack."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public resetBalance(IZ)I
    .locals 2
    .param p1, "balance"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 144
    const-string v0, "SOOMLA VirtualCurrencyPack"

    const-string v1, "Someone tried to reset balance of CurrencyPack. That\'s not right."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public take(IZ)I
    .locals 6
    .param p1, "amount"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, "currency":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;
    :try_start_0
    iget-object v3, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->mCurrencyItemId:Ljava/lang/String;

    invoke-static {v3}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;

    move-object v1, v0
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualCurrencyStorage()Lcom/soomla/store/data/VirtualCurrencyStorage;

    move-result-object v3

    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;->getItemId()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->mCurrencyAmount:I

    mul-int/2addr v5, p1

    invoke-virtual {v3, v4, v5, p2}, Lcom/soomla/store/data/VirtualCurrencyStorage;->remove(Ljava/lang/String;IZ)I

    move-result v3

    :goto_0
    return v3

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v3, "SOOMLA VirtualCurrencyPack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VirtualCurrency with itemId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->mCurrencyItemId:Ljava/lang/String;

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
    .line 84
    invoke-super {p0}, Lcom/soomla/store/domain/PurchasableVirtualItem;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 85
    .local v4, "parentJsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "currency_amount"

    iget v6, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->mCurrencyAmount:I

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string v5, "currency_itemId"

    iget-object v6, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;->mCurrencyItemId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 91
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "SOOMLA VirtualCurrencyPack"

    const-string v6, "An error occurred while generating JSON object."

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v1
.end method
