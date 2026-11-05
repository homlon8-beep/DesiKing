.class public final Lcom/vungle/publisher/ac;
.super Lcom/vungle/publisher/ae;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/dp;",
        ">",
        "Lcom/vungle/publisher/ae",
        "<TA;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/vungle/publisher/kr$a;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/kr$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lcom/vungle/publisher/kr$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/vungle/publisher/ae;-><init>(Lcom/vungle/publisher/dp;)V

    .line 11
    iput-object p2, p0, Lcom/vungle/publisher/ac;->a:Lcom/vungle/publisher/kr$a;

    .line 12
    return-void
.end method
