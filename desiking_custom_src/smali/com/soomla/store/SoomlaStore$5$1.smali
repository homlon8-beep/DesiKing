.class Lcom/soomla/store/SoomlaStore$5$1;
.super Ljava/lang/Object;
.source "SoomlaStore.java"

# interfaces
.implements Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/SoomlaStore$5;->success(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/soomla/store/SoomlaStore$5;


# direct methods
.method constructor <init>(Lcom/soomla/store/SoomlaStore$5;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/soomla/store/SoomlaStore$5$1;->this$1:Lcom/soomla/store/SoomlaStore$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alreadyOwned(Lcom/soomla/store/billing/IabPurchase;)V
    .locals 7
    .param p1, "purchase"    # Lcom/soomla/store/billing/IabPurchase;

    .prologue
    .line 380
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabPurchase;->getSku()Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "sku":Ljava/lang/String;
    const-string v4, "SOOMLA SoomlaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to buy an item that was not consumed (maybe it\'s an already owned non-consumable). productId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :try_start_0
    invoke-static {v3}, Lcom/soomla/store/data/StoreInfo;->getPurchasableItem(Ljava/lang/String;)Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v2

    .line 387
    .local v2, "pvi":Lcom/soomla/store/domain/PurchasableVirtualItem;
    iget-object v4, p0, Lcom/soomla/store/SoomlaStore$5$1;->this$1:Lcom/soomla/store/SoomlaStore$5;

    iget-object v4, v4, Lcom/soomla/store/SoomlaStore$5;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v4, p1, v2}, Lcom/soomla/store/SoomlaStore;->access$600(Lcom/soomla/store/SoomlaStore;Lcom/soomla/store/billing/IabPurchase;Lcom/soomla/store/domain/PurchasableVirtualItem;)V

    .line 389
    invoke-static {v2}, Lcom/soomla/store/data/StoreInfo;->isItemNonConsumable(Lcom/soomla/store/domain/PurchasableVirtualItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(alreadyOwned) the user tried to buy a non-consumable that was already owned. itemId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    productId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "message":Ljava/lang/String;
    const-string v4, "SOOMLA SoomlaStore"

    invoke-static {v4, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v4

    new-instance v5, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;

    invoke-direct {v5, v1}, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "pvi":Lcom/soomla/store/domain/PurchasableVirtualItem;
    :cond_0
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(alreadyOwned) ERROR : Couldn\'t find the VirtualCurrencyPack with productId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". It\'s unexpected so an unexpected error is being emitted."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    .restart local v1    # "message":Ljava/lang/String;
    const-string v4, "SOOMLA SoomlaStore"

    invoke-static {v4, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v4

    new-instance v5, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;

    invoke-direct {v5, v1}, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public cancelled(Lcom/soomla/store/billing/IabPurchase;)V
    .locals 1
    .param p1, "purchase"    # Lcom/soomla/store/billing/IabPurchase;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore$5$1;->this$1:Lcom/soomla/store/SoomlaStore$5;

    iget-object v0, v0, Lcom/soomla/store/SoomlaStore$5;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v0, p1}, Lcom/soomla/store/SoomlaStore;->access$500(Lcom/soomla/store/SoomlaStore;Lcom/soomla/store/billing/IabPurchase;)V

    .line 376
    return-void
.end method

.method public fail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore$5$1;->this$1:Lcom/soomla/store/SoomlaStore$5;

    iget-object v0, v0, Lcom/soomla/store/SoomlaStore$5;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v0, p1}, Lcom/soomla/store/SoomlaStore;->access$200(Lcom/soomla/store/SoomlaStore;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public success(Lcom/soomla/store/billing/IabPurchase;)V
    .locals 1
    .param p1, "purchase"    # Lcom/soomla/store/billing/IabPurchase;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore$5$1;->this$1:Lcom/soomla/store/SoomlaStore$5;

    iget-object v0, v0, Lcom/soomla/store/SoomlaStore$5;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v0, p1}, Lcom/soomla/store/SoomlaStore;->access$100(Lcom/soomla/store/SoomlaStore;Lcom/soomla/store/billing/IabPurchase;)V

    .line 371
    return-void
.end method
