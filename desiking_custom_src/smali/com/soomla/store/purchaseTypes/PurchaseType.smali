.class public abstract Lcom/soomla/store/purchaseTypes/PurchaseType;
.super Ljava/lang/Object;
.source "PurchaseType.java"


# instance fields
.field private mAssociatedItem:Lcom/soomla/store/domain/PurchasableVirtualItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract buy(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/exceptions/InsufficientFundsException;
        }
    .end annotation
.end method

.method public getAssociatedItem()Lcom/soomla/store/domain/PurchasableVirtualItem;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/soomla/store/purchaseTypes/PurchaseType;->mAssociatedItem:Lcom/soomla/store/domain/PurchasableVirtualItem;

    return-object v0
.end method

.method public setAssociatedItem(Lcom/soomla/store/domain/PurchasableVirtualItem;)V
    .locals 0
    .param p1, "associatedItem"    # Lcom/soomla/store/domain/PurchasableVirtualItem;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/soomla/store/purchaseTypes/PurchaseType;->mAssociatedItem:Lcom/soomla/store/domain/PurchasableVirtualItem;

    .line 44
    return-void
.end method
