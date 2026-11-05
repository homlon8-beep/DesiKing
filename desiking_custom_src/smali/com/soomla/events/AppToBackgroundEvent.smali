.class public Lcom/soomla/events/AppToBackgroundEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "AppToBackgroundEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/soomla/events/AppToBackgroundEvent;-><init>(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "sender"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 34
    return-void
.end method
