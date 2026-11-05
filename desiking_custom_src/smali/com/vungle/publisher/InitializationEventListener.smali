.class public Lcom/vungle/publisher/InitializationEventListener;
.super Lcom/vungle/publisher/rj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/InitializationEventListener$a;,
        Lcom/vungle/publisher/InitializationEventListener$b;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/cz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/zb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/agi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/InitializationEventListener$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/InitializationEventListener$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/rd;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/qs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final i:Lcom/vungle/publisher/ahl;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/vungle/publisher/rj;-><init>()V

    .line 38
    new-instance v0, Lcom/vungle/publisher/ahl;

    invoke-direct {v0}, Lcom/vungle/publisher/ahl;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->i:Lcom/vungle/publisher/ahl;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    return-void
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 88
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->i:Lcom/vungle/publisher/ahl;

    :cond_0
    iget-object v1, v0, Lcom/vungle/publisher/ahl;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ltz p1, :cond_1

    const/16 v2, 0x1f

    if-le p1, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bit index must be 0-31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    shl-int v2, v4, p1

    or-int/2addr v2, v1

    iget-object v3, v0, Lcom/vungle/publisher/ahl;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    if-ne v2, v0, :cond_3

    .line 89
    const-string v0, "VungleDevice"

    const-string v1, "all initialization events complete"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/vungle/publisher/InitializationEventListener;->unregister()V

    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->b:Lcom/vungle/publisher/cz;

    new-instance v1, Lcom/vungle/publisher/InitializationEventListener$1;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/InitializationEventListener$1;-><init>(Lcom/vungle/publisher/InitializationEventListener;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;J)V

    .line 91
    :cond_3
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/do;)V
    .locals 2

    .prologue
    .line 78
    const-string v0, "VungleDatabase"

    const-string v1, "on database ready"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/InitializationEventListener;->a(I)V

    .line 80
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/rg;)V
    .locals 2

    .prologue
    .line 73
    const-string v0, "VungleDevice"

    const-string v1, "device ID available"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vungle/publisher/InitializationEventListener;->a(I)V

    .line 75
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/rh;)V
    .locals 2

    .prologue
    .line 83
    const-string v0, "VungleDevice"

    const-string v1, "webview user agent updated"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vungle/publisher/InitializationEventListener;->a(I)V

    .line 85
    return-void
.end method
