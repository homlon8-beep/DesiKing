.class Lcom/soomla/store/SoomlaStore$4$1;
.super Ljava/lang/Object;
.source "SoomlaStore.java"

# interfaces
.implements Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/SoomlaStore$4;->success(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/soomla/store/SoomlaStore$4;


# direct methods
.method constructor <init>(Lcom/soomla/store/SoomlaStore$4;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/soomla/store/SoomlaStore$4$1;->this$1:Lcom/soomla/store/SoomlaStore$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 297
    const-string v0, "SOOMLA SoomlaStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Market items details failed to refresh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/store/events/MarketItemsRefreshFailedEvent;

    invoke-direct {v1, p1}, Lcom/soomla/store/events/MarketItemsRefreshFailedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/billing/IabSkuDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "skuDetails":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/billing/IabSkuDetails;>;"
    const-string v17, "SOOMLA SoomlaStore"

    const-string v18, "Market items details refreshed"

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v12, "marketItems":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/MarketItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 258
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v16, "virtualItems":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/VirtualItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/soomla/store/billing/IabSkuDetails;

    .line 261
    .local v11, "iabSkuDetails":Lcom/soomla/store/billing/IabSkuDetails;
    invoke-virtual {v11}, Lcom/soomla/store/billing/IabSkuDetails;->getSku()Ljava/lang/String;

    move-result-object v14

    .line 262
    .local v14, "productId":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/soomla/store/billing/IabSkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "price":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/soomla/store/billing/IabSkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/soomla/store/billing/IabSkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "desc":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/soomla/store/billing/IabSkuDetails;->getCurrencyCode()Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "currencyCode":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/soomla/store/billing/IabSkuDetails;->getPriceMicros()J

    move-result-wide v8

    .line 268
    .local v8, "priceMicros":J
    const-string v17, "SOOMLA SoomlaStore"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Got item details: \ntitle:\t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Lcom/soomla/store/billing/IabSkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\nprice:\t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Lcom/soomla/store/billing/IabSkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\nproductId:\t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Lcom/soomla/store/billing/IabSkuDetails;->getSku()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\ndesc:\t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Lcom/soomla/store/billing/IabSkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :try_start_0
    invoke-static {v14}, Lcom/soomla/store/data/StoreInfo;->getPurchasableItem(Ljava/lang/String;)Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v15

    .line 277
    .local v15, "pvi":Lcom/soomla/store/domain/PurchasableVirtualItem;
    invoke-virtual {v15}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getPurchaseType()Lcom/soomla/store/purchaseTypes/PurchaseType;

    move-result-object v17

    check-cast v17, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;

    invoke-virtual/range {v17 .. v17}, Lcom/soomla/store/purchaseTypes/PurchaseWithMarket;->getMarketItem()Lcom/soomla/store/domain/MarketItem;

    move-result-object v3

    .line 279
    .local v3, "mi":Lcom/soomla/store/domain/MarketItem;
    invoke-virtual/range {v3 .. v9}, Lcom/soomla/store/domain/MarketItem;->setMarketInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 281
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 283
    .end local v3    # "mi":Lcom/soomla/store/domain/MarketItem;
    .end local v15    # "pvi":Lcom/soomla/store/domain/PurchasableVirtualItem;
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "(refreshInventory) Couldn\'t find a purchasable item associated with: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 286
    .local v13, "msg":Ljava/lang/String;
    const-string v17, "SOOMLA SoomlaStore"

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    .end local v2    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    .end local v4    # "price":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "desc":Ljava/lang/String;
    .end local v7    # "currencyCode":Ljava/lang/String;
    .end local v8    # "priceMicros":J
    .end local v11    # "iabSkuDetails":Lcom/soomla/store/billing/IabSkuDetails;
    .end local v13    # "msg":Ljava/lang/String;
    .end local v14    # "productId":Ljava/lang/String;
    :cond_0
    invoke-static/range {v16 .. v16}, Lcom/soomla/store/data/StoreInfo;->save(Ljava/util/List;)V

    .line 292
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v16    # "virtualItems":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/VirtualItem;>;"
    :cond_1
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v17

    new-instance v18, Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;-><init>(Ljava/util/List;)V

    invoke-virtual/range {v17 .. v18}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 293
    return-void
.end method
