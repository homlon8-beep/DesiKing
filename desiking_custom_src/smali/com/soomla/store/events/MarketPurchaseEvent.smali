.class public Lcom/soomla/store/events/MarketPurchaseEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "MarketPurchaseEvent.java"


# instance fields
.field public final ExtraInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final Payload:Ljava/lang/String;

.field public final PurchasableVirtualItem:Lcom/soomla/store/domain/PurchasableVirtualItem;


# direct methods
.method public constructor <init>(Lcom/soomla/store/domain/PurchasableVirtualItem;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "purchasableVirtualItem"    # Lcom/soomla/store/domain/PurchasableVirtualItem;
    .param p2, "payload"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/soomla/store/domain/PurchasableVirtualItem;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "extraInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/soomla/store/events/MarketPurchaseEvent;-><init>(Lcom/soomla/store/domain/PurchasableVirtualItem;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/soomla/store/domain/PurchasableVirtualItem;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Object;)V
    .locals 0
    .param p1, "purchasableVirtualItem"    # Lcom/soomla/store/domain/PurchasableVirtualItem;
    .param p2, "payload"    # Ljava/lang/String;
    .param p4, "sender"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/soomla/store/domain/PurchasableVirtualItem;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "extraInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p4}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->PurchasableVirtualItem:Lcom/soomla/store/domain/PurchasableVirtualItem;

    .line 45
    iput-object p2, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->Payload:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/soomla/store/events/MarketPurchaseEvent;->ExtraInfo:Ljava/util/HashMap;

    .line 47
    return-void
.end method
