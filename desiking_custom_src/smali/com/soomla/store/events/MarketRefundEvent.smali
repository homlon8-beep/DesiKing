.class public Lcom/soomla/store/events/MarketRefundEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "MarketRefundEvent.java"


# instance fields
.field private mPayload:Ljava/lang/String;

.field private mPurchasableVirtualItem:Lcom/soomla/store/domain/PurchasableVirtualItem;


# direct methods
.method public constructor <init>(Lcom/soomla/store/domain/PurchasableVirtualItem;Ljava/lang/String;)V
    .locals 1
    .param p1, "purchasableVirtualItem"    # Lcom/soomla/store/domain/PurchasableVirtualItem;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/soomla/store/events/MarketRefundEvent;-><init>(Lcom/soomla/store/domain/PurchasableVirtualItem;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/soomla/store/domain/PurchasableVirtualItem;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "purchasableVirtualItem"    # Lcom/soomla/store/domain/PurchasableVirtualItem;
    .param p2, "payload"    # Ljava/lang/String;
    .param p3, "sender"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0, p3}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lcom/soomla/store/events/MarketRefundEvent;->mPurchasableVirtualItem:Lcom/soomla/store/domain/PurchasableVirtualItem;

    .line 40
    iput-object p2, p0, Lcom/soomla/store/events/MarketRefundEvent;->mPayload:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/soomla/store/events/MarketRefundEvent;->mPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchasableVirtualItem()Lcom/soomla/store/domain/PurchasableVirtualItem;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/soomla/store/events/MarketRefundEvent;->mPurchasableVirtualItem:Lcom/soomla/store/domain/PurchasableVirtualItem;

    return-object v0
.end method
