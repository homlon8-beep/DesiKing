.class public final Lcom/vungle/publisher/zb;
.super Lcom/vungle/publisher/xe;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/rd;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/zl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/aam;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/aav;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/abe;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/abk;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/abq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/abz;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/acf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/agl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/cu;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/hs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected n:Lcom/vungle/publisher/cz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/vungle/publisher/xe;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vungle/publisher/zb;->n:Lcom/vungle/publisher/cz;

    new-instance v1, Lcom/vungle/publisher/zb$2;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/zb$2;-><init>(Lcom/vungle/publisher/zb;)V

    sget-object v2, Lcom/vungle/publisher/cz$b;->j:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    .line 117
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/vungle/publisher/zb;->n:Lcom/vungle/publisher/cz;

    new-instance v1, Lcom/vungle/publisher/zb$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/publisher/zb$6;-><init>(Lcom/vungle/publisher/zb;J)V

    sget-object v2, Lcom/vungle/publisher/cz$b;->m:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    .line 238
    return-void
.end method

.method public final a(JJ)V
    .locals 7

    .prologue
    .line 200
    iget-object v6, p0, Lcom/vungle/publisher/zb;->n:Lcom/vungle/publisher/cz;

    new-instance v0, Lcom/vungle/publisher/zb$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vungle/publisher/zb$5;-><init>(Lcom/vungle/publisher/zb;JJ)V

    sget-object v1, Lcom/vungle/publisher/cz$b;->l:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v6, v0, v1}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    .line 214
    return-void
.end method

.method public final a(Lcom/vungle/publisher/dw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dw",
            "<****>;)V"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vungle/publisher/zb;->n:Lcom/vungle/publisher/cz;

    new-instance v1, Lcom/vungle/publisher/zb$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/zb$1;-><init>(Lcom/vungle/publisher/zb;Lcom/vungle/publisher/dw;)V

    sget-object v2, Lcom/vungle/publisher/cz$b;->d:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    .line 101
    return-void
.end method

.method public final a(Lcom/vungle/publisher/yu;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 127
    iget-object v0, p0, Lcom/vungle/publisher/zb;->b:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/rd;

    .line 128
    iget-object v1, v0, Lcom/vungle/publisher/rd;->l:Landroid/content/SharedPreferences;

    const-string v2, "VgSleepWakeupTime"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/16 v1, 0x7d0

    invoke-virtual {p1, v1}, Lcom/vungle/publisher/yu;->a(I)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 129
    const-string v1, "VungleProtocol"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "scheduling local ad request in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/vungle/publisher/zb;->n:Lcom/vungle/publisher/cz;

    new-instance v4, Lcom/vungle/publisher/zb$3;

    invoke-direct {v4, p0, v0, p1}, Lcom/vungle/publisher/zb$3;-><init>(Lcom/vungle/publisher/zb;Lcom/vungle/publisher/rd;Lcom/vungle/publisher/yu;)V

    sget-object v0, Lcom/vungle/publisher/cz$b;->f:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;J)V

    .line 154
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/vungle/publisher/u;)V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vungle/publisher/zb;->n:Lcom/vungle/publisher/cz;

    new-instance v1, Lcom/vungle/publisher/zb$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/publisher/zb$4;-><init>(Lcom/vungle/publisher/zb;Ljava/lang/String;Lcom/vungle/publisher/u;)V

    sget-object v2, Lcom/vungle/publisher/cz$b;->c:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    .line 186
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vungle/publisher/zb;->a:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/al;

    invoke-direct {v1}, Lcom/vungle/publisher/al;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public final b(Lcom/vungle/publisher/yu;)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vungle/publisher/zb;->b:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/rd;

    iget-object v0, v0, Lcom/vungle/publisher/rd;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/zb;->a(Lcom/vungle/publisher/yu;)V

    .line 164
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/vungle/publisher/zb;->n:Lcom/vungle/publisher/cz;

    new-instance v1, Lcom/vungle/publisher/zb$8;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/zb$8;-><init>(Lcom/vungle/publisher/zb;)V

    sget-object v2, Lcom/vungle/publisher/cz$b;->n:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    .line 281
    return-void
.end method

.method public final c(Lcom/vungle/publisher/yu;)V
    .locals 6

    .prologue
    .line 246
    iget-object v0, p0, Lcom/vungle/publisher/zb;->n:Lcom/vungle/publisher/cz;

    new-instance v1, Lcom/vungle/publisher/zb$7;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/zb$7;-><init>(Lcom/vungle/publisher/zb;Lcom/vungle/publisher/yu;)V

    sget-object v2, Lcom/vungle/publisher/cz$b;->e:Lcom/vungle/publisher/cz$b;

    const/16 v3, 0x1388

    invoke-virtual {p1, v3}, Lcom/vungle/publisher/yu;->a(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;J)V

    .line 261
    return-void
.end method
