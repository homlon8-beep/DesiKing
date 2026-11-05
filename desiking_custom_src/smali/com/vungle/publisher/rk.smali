.class public final Lcom/vungle/publisher/rk;
.super Lcom/vungle/publisher/rj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/rk$a;
    }
.end annotation


# instance fields
.field public a:Lcom/vungle/publisher/EventListener;

.field b:Z

.field c:Lcom/vungle/publisher/cz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private e:I

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vungle/publisher/rj;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/rk;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vungle/publisher/rk;->c:Lcom/vungle/publisher/cz;

    sget-object v1, Lcom/vungle/publisher/cz$b;->r:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    .line 155
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/vungle/publisher/rk$4;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/rk$4;-><init>(Lcom/vungle/publisher/rk;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vungle/publisher/rk;->a(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 90
    const-string v0, "VungleEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdEnd("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/vungle/publisher/rk$3;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/rk$3;-><init>(Lcom/vungle/publisher/rk;Z)V

    invoke-direct {p0, v0}, Lcom/vungle/publisher/rk;->a(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/vungle/publisher/aj;)V
    .locals 4
    .param p1, "endPlayVideoEvent"    # Lcom/vungle/publisher/aj;

    .prologue
    .line 130
    iget v0, p1, Lcom/vungle/publisher/aw;->a:I

    .line 131
    iget v1, p0, Lcom/vungle/publisher/rk;->e:I

    if-le v0, v1, :cond_0

    .line 132
    const-string v1, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new watched millis "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iput v0, p0, Lcom/vungle/publisher/rk;->e:I

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v1, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shorter watched millis "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onEvent(Lcom/vungle/publisher/bf;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 55
    const-string v0, "VungleEvent"

    const-string v1, "onAdStart() callback"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput v2, p0, Lcom/vungle/publisher/rk;->e:I

    .line 57
    iput-boolean v2, p0, Lcom/vungle/publisher/rk;->b:Z

    .line 58
    new-instance v0, Lcom/vungle/publisher/rk$2;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/rk$2;-><init>(Lcom/vungle/publisher/rk;)V

    invoke-direct {p0, v0}, Lcom/vungle/publisher/rk;->a(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/bh;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/rk;->b:Z

    .line 72
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/bu;)V
    .locals 2
    .param p1, "errorEndPlayEvent"    # Lcom/vungle/publisher/bu;

    .prologue
    .line 80
    instance-of v0, p1, Lcom/vungle/publisher/cc;

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "VungleEvent"

    const-string v1, "onAdEnd() - activity destroyed"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/rk;->a(Z)V

    .line 87
    return-void

    .line 84
    :cond_0
    const-string v0, "VungleEvent"

    const-string v1, "onAdEnd() - error during playback"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onEvent(Lcom/vungle/publisher/bv;)V
    .locals 2

    .prologue
    .line 110
    const-string v0, "VungleEvent"

    const-string v1, "onAdUnavailable(already playing) callback"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "Ad already playing"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/rk;->a(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/bx;)V
    .locals 2

    .prologue
    .line 105
    const-string v0, "VungleEvent"

    const-string v1, "onAdUnavailable(error) callback"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "Error launching ad"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/rk;->a(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/by;)V
    .locals 2

    .prologue
    .line 115
    const-string v0, "VungleEvent"

    const-string v1, "onAdUnavailable(not initialized) callback"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "Vungle Publisher SDK was not successfully initialized - please check the logs"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/rk;->a(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/bz;)V
    .locals 2
    .param p1, "throttledCancelPlayEvent"    # Lcom/vungle/publisher/bz;

    .prologue
    .line 120
    const-string v0, "VungleEvent"

    const-string v1, "onAdUnavailable(throttled) callback"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Only "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/vungle/publisher/bz;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of minimum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/vungle/publisher/bz;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds elapsed between ads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/rk;->a(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/ca;)V
    .locals 2

    .prologue
    .line 125
    const-string v0, "VungleEvent"

    const-string v1, "onAdUnavailable(unavailable) callback"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "No cached or streaming ad available"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/rk;->a(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/cf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/cf",
            "<",
            "Lcom/vungle/publisher/dp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "playAdSuccessEvent":Lcom/vungle/publisher/cf;, "Lcom/vungle/publisher/cf<Lcom/vungle/publisher/dp;>;"
    iget-boolean v0, p1, Lcom/vungle/publisher/cb;->a:Z

    invoke-direct {p0, v0}, Lcom/vungle/publisher/rk;->a(Z)V

    .line 68
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/z;)V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vungle/publisher/rk;->d:Lcom/vungle/publisher/b;

    invoke-virtual {v0}, Lcom/vungle/publisher/b;->a()Z

    move-result v1

    .line 44
    iget-object v2, p0, Lcom/vungle/publisher/rk;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/vungle/publisher/rk$1;

    invoke-direct {v0, p0, v1}, Lcom/vungle/publisher/rk$1;-><init>(Lcom/vungle/publisher/rk;Z)V

    invoke-direct {p0, v0}, Lcom/vungle/publisher/rk;->a(Ljava/lang/Runnable;)V

    .line 52
    :cond_0
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
