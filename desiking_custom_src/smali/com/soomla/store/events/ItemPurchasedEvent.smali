.class public Lcom/soomla/store/events/ItemPurchasedEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "ItemPurchasedEvent.java"


# instance fields
.field private mItemId:Ljava/lang/String;

.field private mPayload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/soomla/store/events/ItemPurchasedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;
    .param p3, "sender"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-direct {p0, p3}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 37
    iput-object p1, p0, Lcom/soomla/store/events/ItemPurchasedEvent;->mItemId:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/soomla/store/events/ItemPurchasedEvent;->mPayload:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/soomla/store/events/ItemPurchasedEvent;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/soomla/store/events/ItemPurchasedEvent;->mPayload:Ljava/lang/String;

    return-object v0
.end method
