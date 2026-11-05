.class public Lcom/soomla/store/data/VirtualGoodsStorage;
.super Lcom/soomla/store/data/VirtualItemStorage;
.source "VirtualGoodsStorage.java"


# static fields
.field public static final DB_KEY_GOOD_PREFIX:Ljava/lang/String; = "good."


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/soomla/store/data/VirtualItemStorage;-><init>()V

    .line 43
    const-string v0, "SOOMLA VirtualGoodsStorage"

    iput-object v0, p0, Lcom/soomla/store/data/VirtualGoodsStorage;->mTag:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private equipPriv(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "goodItemId"    # Ljava/lang/String;
    .param p2, "equip"    # Z
    .param p3, "notify"    # Z

    .prologue
    .line 229
    iget-object v2, p0, Lcom/soomla/store/data/VirtualGoodsStorage;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_1

    const-string v1, "unequipping "

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {p1}, Lcom/soomla/store/data/VirtualGoodsStorage;->keyGoodEquipped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "key":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 234
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/soomla/data/KeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    if-eqz p3, :cond_0

    .line 236
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v1

    new-instance v2, Lcom/soomla/store/events/GoodEquippedEvent;

    invoke-direct {v2, p1}, Lcom/soomla/store/events/GoodEquippedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 244
    :cond_0
    :goto_1
    return-void

    .line 229
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const-string v1, "equipping "

    goto :goto_0

    .line 239
    .restart local v0    # "key":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Lcom/soomla/data/KeyValueStorage;->deleteKeyValue(Ljava/lang/String;)V

    .line 240
    if-eqz p3, :cond_0

    .line 241
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v1

    new-instance v2, Lcom/soomla/store/events/GoodUnEquippedEvent;

    invoke-direct {v2, p1}, Lcom/soomla/store/events/GoodUnEquippedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static keyGoodBalance(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "itemId"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "good."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".balance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static keyGoodEquipped(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "itemId"    # Ljava/lang/String;

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "good."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".equipped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static keyGoodUpgrade(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "itemId"    # Ljava/lang/String;

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "good."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".currentUpgrade"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public assignCurrentUpgrade(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "goodItemId"    # Ljava/lang/String;
    .param p2, "upgradeVGItemId"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/soomla/store/data/VirtualGoodsStorage;->assignCurrentUpgrade(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method public assignCurrentUpgrade(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "goodItemId"    # Ljava/lang/String;
    .param p2, "upgradeVGItemId"    # Ljava/lang/String;
    .param p3, "notify"    # Z

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/soomla/store/data/VirtualGoodsStorage;->getCurrentUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "upgradeItemId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    :try_start_0
    invoke-static {v2}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v1

    check-cast v1, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;

    .line 98
    .local v1, "upgrade":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualGoods/UpgradeVG;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    .end local v1    # "upgrade":Lcom/soomla/store/domain/virtualGoods/UpgradeVG;
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v3

    .line 107
    :cond_1
    iget-object v3, p0, Lcom/soomla/store/data/VirtualGoodsStorage;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Assigning upgrade "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to virtual good: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcom/soomla/store/data/VirtualGoodsStorage;->keyGoodUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/soomla/data/KeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    if-eqz p3, :cond_0

    .line 115
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v3

    new-instance v4, Lcom/soomla/store/events/GoodUpgradeEvent;

    invoke-direct {v4, p1, p2}, Lcom/soomla/store/events/GoodUpgradeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public equip(Ljava/lang/String;)V
    .locals 1
    .param p1, "goodItemId"    # Ljava/lang/String;

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/soomla/store/data/VirtualGoodsStorage;->equip(Ljava/lang/String;Z)V

    .line 171
    return-void
.end method

.method public equip(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "goodItemId"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lcom/soomla/store/data/VirtualGoodsStorage;->isEquipped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/soomla/store/data/VirtualGoodsStorage;->equipPriv(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public getCurrentUpgrade(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "goodItemId"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v2, p0, Lcom/soomla/store/data/VirtualGoodsStorage;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetching upgrade to virtual good: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {p1}, Lcom/soomla/store/data/VirtualGoodsStorage;->keyGoodUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/soomla/data/KeyValueStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "upItemId":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 133
    iget-object v2, p0, Lcom/soomla/store/data/VirtualGoodsStorage;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "You tried to fetch the current upgrade of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but there\'s not upgrade to it."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v1, 0x0

    .line 139
    .end local v1    # "upItemId":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public isEquipped(Ljava/lang/String;)Z
    .locals 5
    .param p1, "goodItemId"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v2, p0, Lcom/soomla/store/data/VirtualGoodsStorage;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checking if virtual good with itemId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is equipped."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Lcom/soomla/store/data/VirtualGoodsStorage;->keyGoodEquipped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/soomla/data/KeyValueStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected keyBalance(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-static {p1}, Lcom/soomla/store/data/VirtualGoodsStorage;->keyGoodBalance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected postBalanceChangeEvent(Ljava/lang/String;II)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "balance"    # I
    .param p3, "amountAdded"    # I

    .prologue
    .line 221
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/store/events/GoodBalanceChangedEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/soomla/store/events/GoodBalanceChangedEvent;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public removeUpgrades(Ljava/lang/String;)V
    .locals 1
    .param p1, "goodItemId"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/soomla/store/data/VirtualGoodsStorage;->removeUpgrades(Ljava/lang/String;Z)V

    .line 53
    return-void
.end method

.method public removeUpgrades(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "goodItemId"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    .line 62
    iget-object v1, p0, Lcom/soomla/store/data/VirtualGoodsStorage;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing upgrade information from virtual good: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lcom/soomla/store/data/VirtualGoodsStorage;->keyGoodUpgrade(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/soomla/data/KeyValueStorage;->deleteKeyValue(Ljava/lang/String;)V

    .line 69
    if-eqz p2, :cond_0

    .line 70
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v1

    new-instance v2, Lcom/soomla/store/events/GoodUpgradeEvent;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/soomla/store/events/GoodUpgradeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-void
.end method

.method public unequip(Ljava/lang/String;)V
    .locals 1
    .param p1, "goodItemId"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/soomla/store/data/VirtualGoodsStorage;->unequip(Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method public unequip(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "goodItemId"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/soomla/store/data/VirtualGoodsStorage;->isEquipped(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/soomla/store/data/VirtualGoodsStorage;->equipPriv(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
