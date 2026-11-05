.class public Lcom/soomla/store/StoreInventory;
.super Ljava/lang/Object;
.source "StoreInventory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA StoreInventory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allItemsBalances()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 308
    const-string v8, "SOOMLA StoreInventory"

    const-string v9, "Fetching all items balances"

    invoke-static {v8, v9}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v5, "itemsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v8, "SOOMLA StoreInventory"

    const-string v9, "Fetching balances for Currencies"

    invoke-static {v8, v9}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->getCurrencies()Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 315
    .local v0, "currencies":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;

    .line 316
    .local v1, "currency":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 317
    .local v6, "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "balance"

    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualCurrencyStorage()Lcom/soomla/store/data/VirtualCurrencyStorage;

    move-result-object v9

    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;->getItemId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/soomla/store/data/VirtualCurrencyStorage;->getBalance(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 322
    .end local v1    # "currency":Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;
    .end local v6    # "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string v8, "SOOMLA StoreInventory"

    const-string v9, "Fetching balances for Goods"

    invoke-static {v8, v9}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->getGoods()Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    .local v3, "goods":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/VirtualGood;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 326
    .local v2, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 328
    .restart local v6    # "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "balance"

    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v9

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/soomla/store/data/VirtualGoodsStorage;->getBalance(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    instance-of v8, v2, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    if-eqz v8, :cond_1

    .line 331
    const-string v8, "equipped"

    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v9

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/soomla/store/data/VirtualGoodsStorage;->isEquipped(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_1
    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/soomla/store/data/StoreInfo;->hasUpgrades(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 335
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v8

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/soomla/store/data/VirtualGoodsStorage;->getCurrentUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 336
    .local v7, "vguId":Ljava/lang/String;
    const-string v8, "currentUpgrade"

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v7, "none"

    .end local v7    # "vguId":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_3
    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 342
    .end local v2    # "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    .end local v6    # "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    return-object v5
.end method

.method public static buy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "itemId"    # Ljava/lang/String;
    .param p1, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/InsufficientFundsException;,
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/PurchasableVirtualItem;

    .line 62
    .local v0, "pvi":Lcom/soomla/store/domain/PurchasableVirtualItem;
    invoke-virtual {v0, p1}, Lcom/soomla/store/domain/PurchasableVirtualItem;->buy(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private static clearCurrentState()V
    .locals 4

    .prologue
    .line 425
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getEncryptedKeys()Ljava/util/List;

    move-result-object v0

    .line 427
    .local v0, "allKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 428
    .local v2, "key":Ljava/lang/String;
    const-string v3, "nonconsumable."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "currency."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "good."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    :cond_1
    invoke-static {v2}, Lcom/soomla/data/KeyValueStorage;->deleteKeyValue(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static equipVirtualGood(Ljava/lang/String;)V
    .locals 4
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;,
            Ljava/lang/ClassCastException;,
            Lcom/soomla/store/exceptions/NotEnoughGoodsException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v1

    check-cast v1, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    .line 128
    .local v1, "good":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    :try_start_0
    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->equip()V
    :try_end_0
    .catch Lcom/soomla/store/exceptions/NotEnoughGoodsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lcom/soomla/store/exceptions/NotEnoughGoodsException;
    const-string v2, "StoreInventory"

    const-string v3, "UNEXPECTED! Couldn\'t equip something"

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    throw v0
.end method

.method public static forceUpgrade(Ljava/lang/String;)V
    .locals 4
    .param p0, "upgradeItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 284
    :try_start_0
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v1

    check-cast v1, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    .line 285
    .local v1, "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->give(I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v1    # "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "ex":Ljava/lang/ClassCastException;
    const-string v2, "SOOMLA StoreInventory"

    const-string v3, "The given itemId was of a non UpgradeVG VirtualItem. Can\'t force it."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getGoodCurrentUpgrade(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v2

    check-cast v2, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 219
    .local v2, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v5

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/soomla/store/data/VirtualGoodsStorage;->getCurrentUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "upgradeVGItemId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 222
    .local v3, "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :try_start_0
    invoke-static {v4}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    move-object v3, v0
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    if-nez v3, :cond_0

    .line 228
    const-string v5, ""

    .line 230
    :goto_1
    return-object v5

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v5, "SOOMLA StoreInventory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This is BAD! Can\'t find the current upgrade ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") of: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    .end local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    :cond_0
    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getItemId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method public static getGoodUpgradeLevel(Ljava/lang/String;)I
    .locals 10
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v3

    check-cast v3, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 185
    .local v3, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v7

    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/soomla/store/data/VirtualGoodsStorage;->getCurrentUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "upgradeVGItemId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 188
    .local v5, "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :try_start_0
    invoke-static {v6}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    move-object v5, v0
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    if-nez v5, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v4

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v7, "SOOMLA StoreInventory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This is BAD! Can\'t find the current upgrade ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") of: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    .end local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    :cond_1
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getGoodFirstUpgrade(Ljava/lang/String;)Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    move-result-object v2

    .line 198
    .local v2, "first":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    const/4 v4, 0x1

    .line 199
    .local v4, "level":I
    :goto_1
    invoke-virtual {v2, v5}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 200
    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getNextItemId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v2

    .end local v2    # "first":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    check-cast v2, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    .line 201
    .restart local v2    # "first":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static getVirtualItemBalance(Ljava/lang/String;)I
    .locals 3
    .param p0, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v0

    .line 76
    .local v0, "item":Lcom/soomla/store/domain/VirtualItem;
    invoke-static {v0}, Lcom/soomla/store/data/StorageManager;->getVirtualItemStorage(Lcom/soomla/store/domain/VirtualItem;)Lcom/soomla/store/data/VirtualItemStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/soomla/store/domain/VirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/soomla/store/data/VirtualItemStorage;->getBalance(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static giveVirtualItem(Ljava/lang/String;I)V
    .locals 1
    .param p0, "itemId"    # Ljava/lang/String;
    .param p1, "amount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v0

    .line 94
    .local v0, "item":Lcom/soomla/store/domain/VirtualItem;
    invoke-virtual {v0, p1}, Lcom/soomla/store/domain/VirtualItem;->give(I)I

    .line 95
    return-void
.end method

.method public static isVirtualGoodEquipped(Ljava/lang/String;)Z
    .locals 3
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    .line 163
    .local v0, "good":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/soomla/store/data/VirtualGoodsStorage;->isEquipped(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static removeUpgrades(Ljava/lang/String;)V
    .locals 7
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 299
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getGoodUpgrades(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 300
    .local v3, "upgrades":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/virtualGoods/UpgradeVG;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    .line 301
    .local v2, "upgrade":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v4

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6, v6}, Lcom/soomla/store/data/VirtualGoodsStorage;->remove(Ljava/lang/String;IZ)I

    goto :goto_0

    .line 303
    .end local v2    # "upgrade":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :cond_0
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 304
    .local v0, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v4

    invoke-virtual {v0}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/soomla/store/data/VirtualGoodsStorage;->removeUpgrades(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public static resetAllItemsBalances(Ljava/util/HashMap;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "replaceBalances":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez p0, :cond_0

    .line 347
    const/16 v17, 0x0

    .line 421
    :goto_0
    return v17

    .line 350
    :cond_0
    const-string v17, "SOOMLA StoreInventory"

    const-string v18, "Resetting balances"

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/soomla/store/StoreInventory;->clearCurrentState()V

    .line 354
    const-string v17, "SOOMLA StoreInventory"

    const-string v18, "Current state was cleared"

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 358
    .local v10, "itemId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    .local v15, "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 362
    .local v9, "item":Lcom/soomla/store/domain/VirtualItem;
    :try_start_1
    invoke-static {v10}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;
    :try_end_1
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 368
    :try_start_2
    const-string v17, "balance"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 369
    .local v11, "rawBalance":Ljava/lang/Object;
    if-eqz v11, :cond_2

    .line 370
    move-object v0, v11

    check-cast v0, Ljava/lang/Integer;

    move-object v14, v0

    .line 371
    .local v14, "updatedBalance":Ljava/lang/Integer;
    if-eqz v9, :cond_2

    .line 372
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/soomla/store/domain/VirtualItem;->resetBalance(IZ)I

    .line 373
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished balance sync for itemId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v14    # "updatedBalance":Ljava/lang/Integer;
    :cond_2
    const-string v17, "equipped"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v13

    .line 378
    .local v13, "rawEquippedState":Ljava/lang/Object;
    if-eqz v13, :cond_4

    .line 380
    :try_start_3
    move-object v0, v9

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    move-object v5, v0

    .line 381
    .local v5, "equippableItem":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    if-eqz v5, :cond_3

    .line 382
    move-object v0, v13

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    .line 383
    .local v4, "equipState":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 384
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->equip(Z)V

    .line 389
    .end local v4    # "equipState":Ljava/lang/Boolean;
    :cond_3
    :goto_2
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished equip balance sync for itemId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/soomla/store/exceptions/NotEnoughGoodsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 397
    .end local v5    # "equippableItem":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    :cond_4
    :goto_3
    :try_start_4
    const-string v17, "currentUpgrade"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 398
    .local v12, "rawCurrentUpgrade":Ljava/lang/Object;
    if-eqz v12, :cond_1

    .line 399
    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 400
    .local v2, "currentUpgradeId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v17

    if-nez v17, :cond_1

    .line 402
    :try_start_5
    invoke-static {v2}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v16

    check-cast v16, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    .line 403
    .local v16, "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->give(IZ)I

    .line 405
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "finished upgrade balance sync for itemId: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 406
    .end local v16    # "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :catch_0
    move-exception v6

    .line 407
    .local v6, "ex":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    :try_start_6
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The given upgradeId "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " was not found. Can\'t force it."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 417
    .end local v2    # "currentUpgradeId":Ljava/lang/String;
    .end local v6    # "ex":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "item":Lcom/soomla/store/domain/VirtualItem;
    .end local v10    # "itemId":Ljava/lang/String;
    .end local v11    # "rawBalance":Ljava/lang/Object;
    .end local v12    # "rawCurrentUpgrade":Ljava/lang/Object;
    .end local v13    # "rawEquippedState":Ljava/lang/Object;
    .end local v15    # "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v3

    .line 418
    .local v3, "e":Ljava/lang/Exception;
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown error has occurred while resetting item balances "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 363
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "item":Lcom/soomla/store/domain/VirtualItem;
    .restart local v10    # "itemId":Ljava/lang/String;
    .restart local v15    # "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_2
    move-exception v3

    .line 364
    .local v3, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    :try_start_7
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The given itemId "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " was not found. Can\'t force it."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 386
    .end local v3    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    .restart local v4    # "equipState":Ljava/lang/Boolean;
    .restart local v5    # "equippableItem":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    .restart local v11    # "rawBalance":Ljava/lang/Object;
    .restart local v13    # "rawEquippedState":Ljava/lang/Object;
    :cond_5
    const/16 v17, 0x0

    :try_start_8
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->unequip(Z)V
    :try_end_8
    .catch Lcom/soomla/store/exceptions/NotEnoughGoodsException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 390
    .end local v4    # "equipState":Ljava/lang/Boolean;
    .end local v5    # "equippableItem":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    :catch_3
    move-exception v3

    .line 391
    .local v3, "e":Lcom/soomla/store/exceptions/NotEnoughGoodsException;
    :try_start_9
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "the item "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " was not purchased, so cannot be equipped"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 392
    .end local v3    # "e":Lcom/soomla/store/exceptions/NotEnoughGoodsException;
    :catch_4
    move-exception v7

    .line 393
    .local v7, "exx":Ljava/lang/ClassCastException;
    const-string v17, "SOOMLA StoreInventory"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "tried to equip a non-equippable item: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 408
    .end local v7    # "exx":Ljava/lang/ClassCastException;
    .restart local v2    # "currentUpgradeId":Ljava/lang/String;
    .restart local v12    # "rawCurrentUpgrade":Ljava/lang/Object;
    :catch_5
    move-exception v6

    .line 409
    .local v6, "ex":Ljava/lang/ClassCastException;
    const-string v17, "SOOMLA StoreInventory"

    const-string v18, "The given upgradeId was of a non UpgradeVG VirtualItem. Can\'t force it."

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    .line 415
    .end local v2    # "currentUpgradeId":Ljava/lang/String;
    .end local v6    # "ex":Ljava/lang/ClassCastException;
    .end local v9    # "item":Lcom/soomla/store/domain/VirtualItem;
    .end local v10    # "itemId":Ljava/lang/String;
    .end local v11    # "rawBalance":Ljava/lang/Object;
    .end local v12    # "rawCurrentUpgrade":Ljava/lang/Object;
    .end local v13    # "rawEquippedState":Ljava/lang/Object;
    .end local v15    # "updatedValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public static takeVirtualItem(Ljava/lang/String;I)V
    .locals 1
    .param p0, "itemId"    # Ljava/lang/String;
    .param p1, "amount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v0

    .line 108
    .local v0, "item":Lcom/soomla/store/domain/VirtualItem;
    invoke-virtual {v0, p1}, Lcom/soomla/store/domain/VirtualItem;->take(I)I

    .line 109
    return-void
.end method

.method public static unEquipVirtualGood(Ljava/lang/String;)V
    .locals 1
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    .line 148
    .local v0, "good":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    invoke-virtual {v0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->unequip()V

    .line 149
    return-void
.end method

.method public static upgradeVirtualGood(Ljava/lang/String;)V
    .locals 11
    .param p0, "goodItemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/VirtualItemNotFoundException;,
            Lcom/soomla/store/exceptions/InsufficientFundsException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v3

    check-cast v3, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 250
    .local v3, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v8

    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/soomla/store/data/VirtualGoodsStorage;->getCurrentUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 251
    .local v6, "upgradeVGItemId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 253
    .local v5, "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :try_start_0
    invoke-static {v6}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    move-object v5, v0
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    if-eqz v5, :cond_2

    .line 259
    invoke-virtual {v5}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getNextItemId()Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "nextItemId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 271
    .end local v4    # "nextItemId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v8, "SOOMLA StoreInventory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "This is BAD! Can\'t find the current upgrade ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") of: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    .end local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    .restart local v4    # "nextItemId":Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v7

    check-cast v7, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    .line 264
    .local v7, "vgu":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->buy(Ljava/lang/String;)V

    goto :goto_1

    .line 266
    .end local v4    # "nextItemId":Ljava/lang/String;
    .end local v7    # "vgu":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :cond_2
    invoke-static {p0}, Lcom/soomla/store/data/StoreInfo;->getGoodFirstUpgrade(Ljava/lang/String;)Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    move-result-object v2

    .line 267
    .local v2, "first":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    if-eqz v2, :cond_0

    .line 268
    const-string v8, ""

    invoke-virtual {v2, v8}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->buy(Ljava/lang/String;)V

    goto :goto_1
.end method
