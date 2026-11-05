.class public final Lcom/vungle/publisher/cz;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/cz$1;,
        Lcom/vungle/publisher/cz$a;,
        Lcom/vungle/publisher/cz$c;,
        Lcom/vungle/publisher/cz$b;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/cz$c;

.field final b:Lcom/vungle/publisher/cz$c;

.field c:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/hs$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/ahf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final e:Lcom/vungle/publisher/cz$a;

.field private final f:Lcom/vungle/publisher/cz$c;

.field private final g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/cz;->g:Ljava/util/concurrent/BlockingQueue;

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VungleAsyncMasterThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v1, Lcom/vungle/publisher/cz$c;

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v3, "VungleAsyncClientEventThread-"

    invoke-direct {v1, p0, v2, v3}, Lcom/vungle/publisher/cz$c;-><init>(Lcom/vungle/publisher/cz;Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vungle/publisher/cz;->a:Lcom/vungle/publisher/cz$c;

    .line 83
    iget-object v1, p0, Lcom/vungle/publisher/cz;->a:Lcom/vungle/publisher/cz$c;

    invoke-virtual {v1, v4}, Lcom/vungle/publisher/cz$c;->allowCoreThreadTimeOut(Z)V

    .line 84
    new-instance v1, Lcom/vungle/publisher/cz$c;

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v3, "VungleAsyncExternalNetworkRequestThread-"

    invoke-direct {v1, p0, v2, v3}, Lcom/vungle/publisher/cz$c;-><init>(Lcom/vungle/publisher/cz;Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/vungle/publisher/cz;->f:Lcom/vungle/publisher/cz$c;

    .line 85
    iget-object v1, p0, Lcom/vungle/publisher/cz;->f:Lcom/vungle/publisher/cz$c;

    invoke-virtual {v1, v4}, Lcom/vungle/publisher/cz$c;->allowCoreThreadTimeOut(Z)V

    .line 86
    new-instance v1, Lcom/vungle/publisher/cz$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/vungle/publisher/cz$a;-><init>(Lcom/vungle/publisher/cz;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vungle/publisher/cz;->e:Lcom/vungle/publisher/cz$a;

    .line 87
    new-instance v0, Lcom/vungle/publisher/cz$c;

    iget-object v1, p0, Lcom/vungle/publisher/cz;->g:Ljava/util/concurrent/BlockingQueue;

    const-string v2, "VungleAsyncMainThread-"

    invoke-direct {v0, p0, v1, v2}, Lcom/vungle/publisher/cz$c;-><init>(Lcom/vungle/publisher/cz;Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vungle/publisher/cz;->b:Lcom/vungle/publisher/cz$c;

    .line 88
    iget-object v0, p0, Lcom/vungle/publisher/cz;->b:Lcom/vungle/publisher/cz$c;

    invoke-virtual {v0, v4}, Lcom/vungle/publisher/cz$c;->allowCoreThreadTimeOut(Z)V

    .line 90
    return-void
.end method

.method private b(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)Landroid/os/Message;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vungle/publisher/cz;->e:Lcom/vungle/publisher/cz$a;

    .line 149
    invoke-virtual {p2}, Lcom/vungle/publisher/cz$b;->ordinal()I

    move-result v1

    new-instance v2, Lcom/vungle/publisher/cz$a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v0, p1, p2}, Lcom/vungle/publisher/cz$a$a;-><init>(Lcom/vungle/publisher/cz$a;Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/cz$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/cz$b;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vungle/publisher/cz;->e:Lcom/vungle/publisher/cz$a;

    invoke-virtual {p1}, Lcom/vungle/publisher/cz$b;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cz$a;->removeMessages(I)V

    .line 163
    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/vungle/publisher/cz$b;->p:Lcom/vungle/publisher/cz$b;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;J)V

    .line 120
    return-void
.end method

.method public final a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vungle/publisher/cz;->e:Lcom/vungle/publisher/cz$a;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/cz;->b(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cz$a;->sendMessage(Landroid/os/Message;)Z

    .line 99
    return-void
.end method

.method public final a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;J)V
    .locals 3

    .prologue
    .line 123
    const-string v0, "VungleAsync"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scheduling "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delayed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/vungle/publisher/cz;->e:Lcom/vungle/publisher/cz$a;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/cz;->b(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/vungle/publisher/cz$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 127
    return-void
.end method
