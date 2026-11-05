.class public Lcom/vungle/publisher/cb;
.super Lcom/vungle/publisher/ae;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/cd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/dp;",
        ">",
        "Lcom/vungle/publisher/ae",
        "<TA;>;",
        "Lcom/vungle/publisher/cd",
        "<TA;>;"
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/dp;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;Z)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/vungle/publisher/ae;-><init>(Lcom/vungle/publisher/dp;)V

    .line 14
    iput-boolean p2, p0, Lcom/vungle/publisher/cb;->a:Z

    .line 15
    return-void
.end method
