.class public Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
.super Lcom/soomla/store/domain/virtualGoods/LifetimeVG;
.source "UpgradeVG.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA UpgradeVG"


# instance fields
.field private mGoodItemId:Ljava/lang/String;

.field private mNextItemId:Ljava/lang/String;

.field private mPrevItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/soomla/store/purchaseTypes/PurchaseType;)V
    .locals 0
    .param p1, "goodItemId"    # Ljava/lang/String;
    .param p2, "prevItemId"    # Ljava/lang/String;
    .param p3, "nextItemId"    # Ljava/lang/String;
    .param p4, "mName"    # Ljava/lang/String;
    .param p5, "mDescription"    # Ljava/lang/String;
    .param p6, "mItemId"    # Ljava/lang/String;
    .param p7, "purchaseType"    # Lcom/soomla/store/purchaseTypes/PurchaseType;

    .prologue
    .line 77
    invoke-direct {p0, p4, p5, p6, p7}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/soomla/store/purchaseTypes/PurchaseType;)V

    .line 79
    iput-object p1, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mGoodItemId:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mPrevItemId:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mNextItemId:Ljava/lang/String;

    .line 82
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
    .line 91
    invoke-direct {p0, p1}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;-><init>(Lorg/json/JSONObject;)V

    .line 93
    const-string v0, "good_itemId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mGoodItemId:Ljava/lang/String;

    .line 94
    const-string v0, "prev_itemId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mPrevItemId:Ljava/lang/String;

    .line 95
    const-string v0, "next_itemId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mNextItemId:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method protected canBuy()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 228
    const/4 v2, 0x0

    .line 230
    .local v2, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    :try_start_0
    iget-object v5, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mGoodItemId:Ljava/lang/String;

    invoke-static {v5}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    move-object v2, v0
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v5

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/soomla/store/data/VirtualGoodsStorage;->getCurrentUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, "upgradeVGItemId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 240
    .local v3, "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :try_start_1
    invoke-static {v4}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    move-object v3, v0
    :try_end_1
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    :goto_0
    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mPrevItemId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getNextItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getPrevItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-super {p0}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;->canBuy()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    .end local v3    # "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    .end local v4    # "upgradeVGItemId":Ljava/lang/String;
    :goto_1
    return v5

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v5, "SOOMLA UpgradeVG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VirtualGood with itemId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mGoodItemId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesn\'t exist! Returning NO (can\'t buy)."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 234
    goto :goto_1

    .line 241
    .end local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    .restart local v3    # "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    .restart local v4    # "upgradeVGItemId":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 242
    .restart local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v5, "SOOMLA UpgradeVG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is BAD! Can\'t find the current upgrade ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") of: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    :cond_2
    move v5, v6

    .line 246
    goto :goto_1
.end method

.method public getGoodItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mGoodItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getNextItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mNextItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mPrevItemId:Ljava/lang/String;

    return-object v0
.end method

.method public give(IZ)I
    .locals 6
    .param p1, "amount"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 136
    const-string v3, "SOOMLA UpgradeVG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Assigning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mGoodItemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v2, 0x0

    .line 140
    .local v2, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    :try_start_0
    iget-object v3, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mGoodItemId:Ljava/lang/String;

    invoke-static {v3}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    move-object v2, v0
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v3

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/soomla/store/data/VirtualGoodsStorage;->assignCurrentUpgrade(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    invoke-super {p0, p1, p2}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;->give(IZ)I

    move-result v3

    :goto_0
    return v3

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v3, "SOOMLA UpgradeVG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VirtualGood with itemId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mGoodItemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t exist! Can\'t upgrade."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public take(IZ)I
    .locals 10
    .param p1, "amount"    # I
    .param p2, "notify"    # Z

    .prologue
    const/4 v7, 0x0

    .line 166
    const/4 v2, 0x0

    .line 169
    .local v2, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    :try_start_0
    iget-object v6, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mGoodItemId:Ljava/lang/String;

    invoke-static {v6}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    move-object v2, v0
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v6

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/soomla/store/data/VirtualGoodsStorage;->getCurrentUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "upgradeVGItemId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 179
    .local v4, "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :try_start_1
    invoke-static {v5}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    move-object v4, v0
    :try_end_1
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :goto_0
    if-eq v4, p0, :cond_0

    .line 186
    const-string v6, "SOOMLA UpgradeVG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "You can\'t take an upgrade that\'s not currently assigned.The UpgradeVG "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not assigned to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "the VirtualGood: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 215
    .end local v4    # "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    .end local v5    # "upgradeVGItemId":Ljava/lang/String;
    :goto_1
    return v6

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v6, "SOOMLA UpgradeVG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VirtualGood with itemId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mGoodItemId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " doesn\'t exist! Can\'t downgrade."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 173
    goto :goto_1

    .line 180
    .end local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    .restart local v4    # "upgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    .restart local v5    # "upgradeVGItemId":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 181
    .restart local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v6, "SOOMLA UpgradeVG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "This is BAD! Can\'t find the current upgrade ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") of: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    .end local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    :cond_0
    iget-object v6, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mPrevItemId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 193
    const/4 v3, 0x0

    .line 196
    .local v3, "prevUpgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :try_start_2
    iget-object v6, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mPrevItemId:Ljava/lang/String;

    invoke-static {v6}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v3

    .end local v3    # "prevUpgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    check-cast v3, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :try_end_2
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 203
    .restart local v3    # "prevUpgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    const-string v6, "SOOMLA UpgradeVG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downgrading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v6

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p2}, Lcom/soomla/store/data/VirtualGoodsStorage;->assignCurrentUpgrade(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 215
    .end local v3    # "prevUpgradeVG":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;->take(IZ)I

    move-result v6

    goto/16 :goto_1

    .line 197
    :catch_2
    move-exception v1

    .line 198
    .restart local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v6, "SOOMLA UpgradeVG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Previous UpgradeVG with itemId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mPrevItemId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " doesn\'t exist! Can\'t downgrade."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 200
    goto/16 :goto_1

    .line 211
    .end local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    :cond_1
    const-string v6, "SOOMLA UpgradeVG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downgrading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to NO-UPGRADE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v6

    invoke-virtual {v2}, Lcom/soomla/store/domain/virtualGoods/VirtualGood;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Lcom/soomla/store/data/VirtualGoodsStorage;->removeUpgrades(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 103
    invoke-super {p0}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 104
    .local v4, "parentJsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 107
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "SOOMLA UpgradeVG"

    const-string v6, "An error occurred while generating JSON object."

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v1

    .line 113
    .restart local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :try_start_1
    const-string v5, "good_itemId"

    iget-object v6, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mGoodItemId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v6, "prev_itemId"

    iget-object v5, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mPrevItemId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ""

    :goto_2
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v6, "next_itemId"

    iget-object v5, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mNextItemId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ""

    :goto_3
    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 114
    :cond_1
    iget-object v5, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mPrevItemId:Ljava/lang/String;

    goto :goto_2

    .line 116
    :cond_2
    iget-object v5, p0, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->mNextItemId:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
