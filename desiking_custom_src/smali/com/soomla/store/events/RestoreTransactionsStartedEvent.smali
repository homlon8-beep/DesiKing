.class public Lcom/soomla/store/events/RestoreTransactionsStartedEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "RestoreTransactionsStartedEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/soomla/store/events/RestoreTransactionsStartedEvent;-><init>(Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "sender"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 32
    return-void
.end method
