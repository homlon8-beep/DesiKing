.class public final Lcom/vungle/publisher/ov$a;
.super Lcom/vungle/publisher/nw;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ov;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ov$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/nw",
        "<",
        "Lcom/vungle/publisher/ov;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Lcom/vungle/publisher/hs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/dq$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/qs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/vungle/publisher/nw;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onEvent(Lcom/vungle/publisher/av;)V
    .locals 0
    .param p1, "x0"    # Lcom/vungle/publisher/av;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/vungle/publisher/nw;->onEvent(Lcom/vungle/publisher/av;)V

    return-void
.end method

.method public final bridge synthetic onEvent(Lcom/vungle/publisher/bs;)V
    .locals 0
    .param p1, "x0"    # Lcom/vungle/publisher/bs;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/vungle/publisher/nw;->onEvent(Lcom/vungle/publisher/bs;)V

    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/vc;)V
    .locals 3

    .prologue
    .line 100
    const-string v0, "VungleEvent"

    const-string v1, "mraidAd.onClose()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/vungle/publisher/ov$a;->eventBus:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/vb;

    sget-object v2, Lcom/vungle/publisher/ur;->b:Lcom/vungle/publisher/ur;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/vb;-><init>(Lcom/vungle/publisher/ko;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/ov$a;->a:Lcom/vungle/publisher/oj;

    check-cast v0, Lcom/vungle/publisher/ov;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/ov;->a(ZZ)V

    .line 103
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/vd;)V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vungle/publisher/ov$a;->eventBus:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/vb;

    sget-object v2, Lcom/vungle/publisher/ur;->a:Lcom/vungle/publisher/ur;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/vb;-><init>(Lcom/vungle/publisher/ko;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/ve;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/vungle/publisher/ov$a;->a:Lcom/vungle/publisher/oj;

    check-cast v0, Lcom/vungle/publisher/ov;

    invoke-virtual {v0, v1, v1}, Lcom/vungle/publisher/ov;->a(ZZ)V

    .line 115
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/vh;)V
    .locals 2
    .param p1, "event"    # Lcom/vungle/publisher/vh;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vungle/publisher/ov$a;->a:Lcom/vungle/publisher/oj;

    check-cast v0, Lcom/vungle/publisher/ov;

    iget-object v1, p1, Lcom/vungle/publisher/vh;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ov;->a(Landroid/net/Uri;)V

    .line 107
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/vk;)V
    .locals 4
    .param p1, "event"    # Lcom/vungle/publisher/vk;

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p1, Lcom/vungle/publisher/vk;->a:Lcom/vungle/publisher/us;

    .line 120
    iget-boolean v0, p1, Lcom/vungle/publisher/vk;->b:Z

    .line 121
    sget-object v2, Lcom/vungle/publisher/us;->c:Lcom/vungle/publisher/us;

    if-ne v1, v2, :cond_2

    .line 122
    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/vungle/publisher/ov$a;->a:Lcom/vungle/publisher/oj;

    check-cast v0, Lcom/vungle/publisher/ov;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ov;->a(I)V

    .line 134
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/ov$a;->d:Lcom/vungle/publisher/qs;

    sget-object v1, Lcom/vungle/publisher/qo;->f:Lcom/vungle/publisher/qo;

    invoke-interface {v0, v1}, Lcom/vungle/publisher/qs;->a(Lcom/vungle/publisher/qo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vungle/publisher/ov$a;->a:Lcom/vungle/publisher/oj;

    check-cast v0, Lcom/vungle/publisher/ov;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ov;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    iget-object v1, p0, Lcom/vungle/publisher/ov$a;->b:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleEvent"

    const-string v3, "error setting mraid orientation"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 125
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/publisher/ov$a;->a:Lcom/vungle/publisher/oj;

    check-cast v0, Lcom/vungle/publisher/ov;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ov;->a(I)V

    goto :goto_0

    .line 128
    :cond_2
    const-string v0, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "force mraid orientation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/vungle/publisher/ov$a;->a:Lcom/vungle/publisher/oj;

    check-cast v0, Lcom/vungle/publisher/ov;

    iget v1, v1, Lcom/vungle/publisher/us;->d:I

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ov;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
