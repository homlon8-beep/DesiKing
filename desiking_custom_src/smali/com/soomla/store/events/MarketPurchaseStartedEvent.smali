.class public Lcom/soomla/store/events/MarketPurchaseStartedEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "MarketPurchaseStartedEvent.java"


# instance fields
.field private mPurchasableVirtualItem:Lcom/soomla/store/domain/PurchasableVirtualItem;


# direct methods
.method public constructor <init>(Lcom/soomla/store/domain/PurchasableVirtualItem;)V
    .locals 1
    .param p1, "purchasableVirtualItem"    # Lcom/soomla/store/domain/PurchasableVirtualItem;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/soomla/store/events/MarketPurchaseStartedEvent;-><init>(Lcom/soomla/store/domain/PurchasableVirtualItem;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/soomla/store/domain/PurchasableVirtualItem;Ljava/lang/Object;)V
    .locals 0
    .param p1, "purchasableVirtualItem"    # Lcom/soomla/store/domain/PurchasableVirtualItem;
    .param p2, "sender"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-direct {p0, p2}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/soomla/store/events/MarketPurchaseStartedEvent;->mPurchasableVirtualItem:Lcom/soomla/store/domain/PurchasableVirtualItem;

    .line 39
    return-void
.end method


# virtual methods
.method public getPurchasableVirtualItem()Lcom/soomla/store/domain/PurchasableVirtualItem;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/soomla/store/events/MarketPurchaseStartedEvent;->mPurchasableVirtualItem:Lcom/soomla/store/domain/PurchasableVirtualItem;

    return-object v0
.end method
