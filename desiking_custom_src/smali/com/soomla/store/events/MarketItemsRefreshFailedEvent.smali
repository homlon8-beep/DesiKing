.class public Lcom/soomla/store/events/MarketItemsRefreshFailedEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "MarketItemsRefreshFailedEvent.java"


# instance fields
.field public ErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/soomla/store/events/MarketItemsRefreshFailedEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-direct {p0, p2}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 41
    iput-object p1, p0, Lcom/soomla/store/events/MarketItemsRefreshFailedEvent;->ErrorMessage:Ljava/lang/String;

    .line 42
    return-void
.end method
