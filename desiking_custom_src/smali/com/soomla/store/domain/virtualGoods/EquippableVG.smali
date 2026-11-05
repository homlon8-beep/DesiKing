.class public Lcom/soomla/store/domain/virtualGoods/EquippableVG;
.super Lcom/soomla/store/domain/virtualGoods/LifetimeVG;
.source "EquippableVG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA EquippableVG"


# instance fields
.field private mEquippingModel:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;


# direct methods
.method public constructor <init>(Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/soomla/store/purchaseTypes/PurchaseType;)V
    .locals 0
    .param p1, "equippingModel"    # Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;
    .param p2, "mName"    # Ljava/lang/String;
    .param p3, "mDescription"    # Ljava/lang/String;
    .param p4, "mItemId"    # Ljava/lang/String;
    .param p5, "purchaseType"    # Lcom/soomla/store/purchaseTypes/PurchaseType;

    .prologue
    .line 91
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/soomla/store/purchaseTypes/PurchaseType;)V

    .line 93
    iput-object p1, p0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->mEquippingModel:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;-><init>(Lorg/json/JSONObject;)V

    .line 105
    const-string v1, "equipping"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "equipping":Ljava/lang/String;
    sget-object v1, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->LOCAL:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    sget-object v1, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->LOCAL:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    iput-object v1, p0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->mEquippingModel:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    sget-object v1, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->CATEGORY:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    sget-object v1, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->CATEGORY:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    iput-object v1, p0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->mEquippingModel:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    goto :goto_0

    .line 110
    :cond_2
    sget-object v1, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->GLOBAL:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    invoke-virtual {v1}, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    sget-object v1, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->GLOBAL:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    iput-object v1, p0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->mEquippingModel:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    goto :goto_0
.end method


# virtual methods
.method public equip()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/NotEnoughGoodsException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->equip(Z)V

    .line 145
    return-void
.end method

.method public equip(Z)V
    .locals 11
    .param p1, "notify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/NotEnoughGoodsException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v8

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->getItemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/soomla/store/data/VirtualGoodsStorage;->getBalance(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_4

    .line 158
    iget-object v8, p0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->mEquippingModel:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    sget-object v9, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->CATEGORY:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    if-ne v8, v9, :cond_1

    .line 159
    const/4 v1, 0x0

    .line 161
    .local v1, "category":Lcom/soomla/store/domain/VirtualCategory;
    :try_start_0
    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/soomla/store/data/StoreInfo;->getCategory(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualCategory;
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/soomla/store/domain/VirtualCategory;->getGoodsItemIds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 170
    .local v6, "goodItemId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 172
    .local v3, "equippableVG":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    :try_start_1
    invoke-static {v6}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    move-object v3, v0

    .line 174
    if-eqz v3, :cond_0

    if-eq v3, p0, :cond_0

    .line 175
    invoke-virtual {v3, p1}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->unequip(Z)V
    :try_end_1
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v8, "SOOMLA EquippableVG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "On equip, couldn\'t find one of the itemIds in the category. Continuing to the next one. itemId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v2    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    .end local v3    # "equippableVG":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    .end local v6    # "goodItemId":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    .line 163
    .restart local v2    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v8, "SOOMLA EquippableVG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tried to unequip all other category VirtualGoods but there was no associated category. virtual good itemId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->getItemId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .end local v1    # "category":Lcom/soomla/store/domain/VirtualCategory;
    .end local v2    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    :goto_1
    return-void

    .line 181
    .restart local v1    # "category":Lcom/soomla/store/domain/VirtualCategory;
    .restart local v3    # "equippableVG":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    .restart local v6    # "goodItemId":Ljava/lang/String;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v4

    .line 182
    .local v4, "ex":Ljava/lang/ClassCastException;
    const-string v8, "SOOMLA EquippableVG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "On equip, an error occurred. It\'s a debug message b/c the VirtualGood may just not be an EquippableVG. itemId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    .end local v1    # "category":Lcom/soomla/store/domain/VirtualCategory;
    .end local v3    # "equippableVG":Lcom/soomla/store/domain/virtualGoods/EquippableVG;
    .end local v4    # "ex":Ljava/lang/ClassCastException;
    .end local v6    # "goodItemId":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v8, p0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->mEquippingModel:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    sget-object v9, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->GLOBAL:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    if-ne v8, v9, :cond_3

    .line 188
    invoke-static {}, Lcom/soomla/store/data/StoreInfo;->getGoods()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    .line 189
    .local v5, "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    if-eq v5, p0, :cond_2

    instance-of v8, v5, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    if-eqz v8, :cond_2

    .line 191
    check-cast v5, Lcom/soomla/store/domain/virtualGoods/EquippableVG;

    .end local v5    # "good":Lcom/soomla/store/domain/virtualGoods/VirtualGood;
    invoke-virtual {v5, p1}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->unequip(Z)V

    goto :goto_2

    .line 196
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v8

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->getItemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, p1}, Lcom/soomla/store/data/VirtualGoodsStorage;->equip(Ljava/lang/String;Z)V

    goto :goto_1

    .line 199
    :cond_4
    new-instance v8, Lcom/soomla/store/exceptions/NotEnoughGoodsException;

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->getItemId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/soomla/store/exceptions/NotEnoughGoodsException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getEquippingModel()Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->mEquippingModel:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 120
    invoke-super {p0}, Lcom/soomla/store/domain/virtualGoods/LifetimeVG;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 121
    .local v4, "parentJsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 124
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "SOOMLA EquippableVG"

    const-string v6, "An error occurred while generating JSON object."

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v1

    .line 130
    .restart local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :try_start_1
    const-string v5, "equipping"

    iget-object v6, p0, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->mEquippingModel:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    invoke-virtual {v6}, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public unequip()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->unequip(Z)V

    .line 208
    return-void
.end method

.method public unequip(Z)V
    .locals 2
    .param p1, "notify"    # Z

    .prologue
    .line 216
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/soomla/store/data/VirtualGoodsStorage;->unequip(Ljava/lang/String;Z)V

    .line 217
    return-void
.end method
