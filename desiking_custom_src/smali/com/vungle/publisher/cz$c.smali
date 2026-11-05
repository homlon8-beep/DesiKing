.class final Lcom/vungle/publisher/cz$c;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/cz;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/cz;Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 172
    iput-object p1, p0, Lcom/vungle/publisher/cz$c;->a:Lcom/vungle/publisher/cz;

    .line 173
    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/vungle/publisher/cz$c$1;

    invoke-direct {v8, p1, p3}, Lcom/vungle/publisher/cz$c$1;-><init>(Lcom/vungle/publisher/cz;Ljava/lang/String;)V

    move-object v1, p0

    move v3, v2

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/cz$c;->allowCoreThreadTimeOut(Z)V

    .line 190
    return-void
.end method


# virtual methods
.method protected final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 195
    if-eqz p2, :cond_0

    .line 196
    iget-object v0, p0, Lcom/vungle/publisher/cz$c;->a:Lcom/vungle/publisher/cz;

    iget-object v0, v0, Lcom/vungle/publisher/cz;->c:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hs$a;

    const-string v1, "VungleAsync"

    const-string v2, "error after executing runnable"

    invoke-virtual {v0, v1, v2, p2}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    :cond_0
    return-void
.end method
