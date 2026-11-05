.class abstract Lcom/vungle/publisher/nw;
.super Lcom/vungle/publisher/rj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/oj",
        "<*>;>",
        "Lcom/vungle/publisher/rj;"
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/oj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/vungle/publisher/rj;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/av;)V
    .locals 2
    .param p1, "event"    # Lcom/vungle/publisher/av;

    .prologue
    .line 15
    .local p0, "this":Lcom/vungle/publisher/nw;, "Lcom/vungle/publisher/nw<TA;>;"
    iget-object v0, p0, Lcom/vungle/publisher/nw;->a:Lcom/vungle/publisher/oj;

    iget-object v1, p1, Lcom/vungle/publisher/av;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/oj;->a(Landroid/net/Uri;)V

    .line 16
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bs;)V
    .locals 2

    .prologue
    .local p0, "this":Lcom/vungle/publisher/nw;, "Lcom/vungle/publisher/nw<TA;>;"
    const/4 v1, 0x0

    .line 11
    iget-object v0, p0, Lcom/vungle/publisher/nw;->a:Lcom/vungle/publisher/oj;

    invoke-virtual {v0, v1, v1}, Lcom/vungle/publisher/oj;->a(ZZ)V

    .line 12
    return-void
.end method
