.class public Lcom/vungle/publisher/xb;
.super Lcom/vungle/publisher/yf;
.source "vungle"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vungle/publisher/yf;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/vungle/publisher/yf;->k:I

    .line 18
    const/16 v0, 0xa

    iput v0, p0, Lcom/vungle/publisher/yf;->j:I

    .line 19
    return-void
.end method
