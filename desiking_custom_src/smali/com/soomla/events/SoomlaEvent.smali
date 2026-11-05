.class public Lcom/soomla/events/SoomlaEvent;
.super Ljava/lang/Object;
.source "SoomlaEvent.java"


# instance fields
.field public final Sender:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "sender"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/soomla/events/SoomlaEvent;->Sender:Ljava/lang/Object;

    .line 25
    return-void
.end method
