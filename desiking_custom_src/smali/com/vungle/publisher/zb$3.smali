.class final Lcom/vungle/publisher/zb$3;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/zb;->a(Lcom/vungle/publisher/yu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/rd;

.field final synthetic b:Lcom/vungle/publisher/yu;

.field final synthetic c:Lcom/vungle/publisher/zb;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/zb;Lcom/vungle/publisher/rd;Lcom/vungle/publisher/yu;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/vungle/publisher/zb$3;->c:Lcom/vungle/publisher/zb;

    iput-object p2, p0, Lcom/vungle/publisher/zb$3;->a:Lcom/vungle/publisher/rd;

    iput-object p3, p0, Lcom/vungle/publisher/zb$3;->b:Lcom/vungle/publisher/yu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/zb$3;->a:Lcom/vungle/publisher/rd;

    iget-object v0, v0, Lcom/vungle/publisher/rd;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/vungle/publisher/zb$3;->c:Lcom/vungle/publisher/zb;

    iget-object v0, v0, Lcom/vungle/publisher/zb;->k:Lcom/vungle/publisher/agl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vungle/publisher/agl;->a:J

    .line 138
    iget-object v0, p0, Lcom/vungle/publisher/zb$3;->c:Lcom/vungle/publisher/zb;

    iget-object v0, v0, Lcom/vungle/publisher/zb;->l:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cu;

    invoke-virtual {v0}, Lcom/vungle/publisher/cu;->registerOnce()V

    .line 139
    iget-object v0, p0, Lcom/vungle/publisher/zb$3;->c:Lcom/vungle/publisher/zb;

    iget-object v0, v0, Lcom/vungle/publisher/zb;->e:Lcom/vungle/publisher/aav;

    iget-object v1, p0, Lcom/vungle/publisher/zb$3;->b:Lcom/vungle/publisher/yu;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/aav;->a(Lcom/vungle/publisher/yu;)Lcom/vungle/publisher/xr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/xr;->a()V

    .line 150
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v0, "VungleProtocol"

    const-string v1, "request ad already in progress"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    iget-object v1, p0, Lcom/vungle/publisher/zb$3;->c:Lcom/vungle/publisher/zb;

    iget-object v1, v1, Lcom/vungle/publisher/zb;->m:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleProtocol"

    const-string v3, "error requesting local ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    iget-object v0, p0, Lcom/vungle/publisher/zb$3;->c:Lcom/vungle/publisher/zb;

    iget-object v1, p0, Lcom/vungle/publisher/zb$3;->b:Lcom/vungle/publisher/yu;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/zb;->b(Lcom/vungle/publisher/yu;)V

    goto :goto_0
.end method
