.class public Lcom/soomla/store/events/GoodEquippedEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "GoodEquippedEvent.java"


# instance fields
.field private mItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/soomla/store/events/GoodEquippedEvent;->mItemId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-direct {p0, p2}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 43
    iput-object p1, p0, Lcom/soomla/store/events/GoodEquippedEvent;->mItemId:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getGoodItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/soomla/store/events/GoodEquippedEvent;->mItemId:Ljava/lang/String;

    return-object v0
.end method
