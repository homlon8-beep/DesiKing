.class public Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "RestoreTransactionsFinishedEvent.java"


# instance fields
.field private mSuccess:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;-><init>(ZLjava/lang/Object;)V

    .line 33
    return-void
.end method

.method public constructor <init>(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "sender"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-direct {p0, p2}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 37
    iput-boolean p1, p0, Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;->mSuccess:Z

    .line 38
    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;->mSuccess:Z

    return v0
.end method
