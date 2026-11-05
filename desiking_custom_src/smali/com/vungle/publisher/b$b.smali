.class final Lcom/vungle/publisher/b$b;
.super Lcom/vungle/publisher/rj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field b:Lcom/vungle/publisher/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/hs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/vungle/publisher/rj;-><init>()V

    .line 300
    const-string v0, "VunglePrepare"

    iput-object v0, p0, Lcom/vungle/publisher/b$b;->a:Ljava/lang/String;

    .line 308
    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/vungle/publisher/ak;)V
    .locals 2

    .prologue
    .line 321
    const-string v0, "VunglePrepare"

    const-string v1, "sent ad report - unregistering play ad listener"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/vungle/publisher/b$b;->unregister()V

    .line 323
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/bf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/bf",
            "<",
            "Lcom/vungle/publisher/dp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "startPlayAdEvent":Lcom/vungle/publisher/bf;, "Lcom/vungle/publisher/bf<Lcom/vungle/publisher/dp;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/vungle/publisher/bf;->a()Lcom/vungle/publisher/dp;

    move-result-object v0

    .line 313
    sget-object v1, Lcom/vungle/publisher/dp$c;->f:Lcom/vungle/publisher/dp$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dp;->b(Lcom/vungle/publisher/dp$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    iget-object v1, p0, Lcom/vungle/publisher/b$b;->c:Lcom/vungle/publisher/hs$a;

    const-string v2, "VunglePrepare"

    const-string v3, "error processing start play ad event"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onEvent(Lcom/vungle/publisher/bw;)V
    .locals 2

    .prologue
    .line 326
    const-string v0, "VunglePrepare"

    const-string v1, "play ad failure - unregistering play ad listener"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/vungle/publisher/b$b;->unregister()V

    .line 328
    return-void
.end method
