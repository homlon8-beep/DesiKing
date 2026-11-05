.class public Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;
.super Lcom/soomla/store/purchaseTypes/PurchaseType;
.source "PurchaseWithVirtualItem.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "SOOMLA PurchaseWithVirtualItem"


# instance fields
.field private mAmount:I

.field private mTargetItemId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "targetItemId"    # Ljava/lang/String;
    .param p2, "amount"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/soomla/store/purchaseTypes/PurchaseType;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->mTargetItemId:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->mAmount:I

    .line 49
    return-void
.end method


# virtual methods
.method public buy(Ljava/lang/String;)V
    .locals 7
    .param p1, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/InsufficientFundsException;
        }
    .end annotation

    .prologue
    .line 59
    const-string v4, "SOOMLA PurchaseWithVirtualItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to buy a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->getAssociatedItem()Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->mAmount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pieces of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->mTargetItemId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v2, 0x0

    .line 64
    .local v2, "item":Lcom/soomla/store/domain/VirtualItem;
    :try_start_0
    iget-object v4, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->mTargetItemId:Ljava/lang/String;

    invoke-static {v4}, Lcom/soomla/store/data/StoreInfo;->getVirtualItem(Ljava/lang/String;)Lcom/soomla/store/domain/VirtualItem;
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 70
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v4

    new-instance v5, Lcom/soomla/store/events/ItemPurchaseStartedEvent;

    invoke-virtual {p0}, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->getAssociatedItem()Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/soomla/store/events/ItemPurchaseStartedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 72
    invoke-static {v2}, Lcom/soomla/store/data/StorageManager;->getVirtualItemStorage(Lcom/soomla/store/domain/VirtualItem;)Lcom/soomla/store/data/VirtualItemStorage;

    move-result-object v3

    .line 74
    .local v3, "storage":Lcom/soomla/store/data/VirtualItemStorage;
    sget-boolean v4, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 65
    .end local v3    # "storage":Lcom/soomla/store/data/VirtualItemStorage;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v4, "SOOMLA PurchaseWithVirtualItem"

    const-string v5, "Target virtual item doesn\'t exist !"

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v1    # "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    :goto_0
    return-void

    .line 75
    .restart local v3    # "storage":Lcom/soomla/store/data/VirtualItemStorage;
    :cond_0
    invoke-virtual {v2}, Lcom/soomla/store/domain/VirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/soomla/store/data/VirtualItemStorage;->getBalance(Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, "balance":I
    iget v4, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->mAmount:I

    if-ge v0, v4, :cond_1

    .line 77
    new-instance v4, Lcom/soomla/store/exceptions/InsufficientFundsException;

    iget-object v5, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->mTargetItemId:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/soomla/store/exceptions/InsufficientFundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_1
    invoke-virtual {v2}, Lcom/soomla/store/domain/VirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->mAmount:I

    invoke-virtual {v3, v4, v5}, Lcom/soomla/store/data/VirtualItemStorage;->remove(Ljava/lang/String;I)I

    .line 82
    invoke-virtual {p0}, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->getAssociatedItem()Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/soomla/store/domain/PurchasableVirtualItem;->give(I)I

    .line 83
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v4

    new-instance v5, Lcom/soomla/store/events/ItemPurchasedEvent;

    invoke-virtual {p0}, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->getAssociatedItem()Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Lcom/soomla/store/events/ItemPurchasedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getAmount()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->mAmount:I

    return v0
.end method

.method public getTargetItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->mTargetItemId:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(I)V
    .locals 0
    .param p1, "mAmount"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/soomla/store/purchaseTypes/PurchaseWithVirtualItem;->mAmount:I

    .line 99
    return-void
.end method
