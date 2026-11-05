.class public final Lcom/vungle/publisher/cf;
.super Lcom/vungle/publisher/cb;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/dp;",
        ">",
        "Lcom/vungle/publisher/cb",
        "<TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/dp;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;Z)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/cb;-><init>(Lcom/vungle/publisher/dp;Z)V

    .line 11
    return-void
.end method
