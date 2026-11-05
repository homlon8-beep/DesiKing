.class public final Lcom/vungle/publisher/b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/b$3;,
        Lcom/vungle/publisher/b$c;,
        Lcom/vungle/publisher/b$a;,
        Lcom/vungle/publisher/b$b;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/k;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/qs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Ljava/lang/Class;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Ljava/lang/Class;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Lcom/vungle/publisher/cz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/vs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/b$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/b$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/b$c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/zb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/ra;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lcom/vungle/publisher/ja$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public o:Lcom/vungle/publisher/kv$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field p:Lcom/vungle/publisher/v;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field q:Lcom/vungle/publisher/qu;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field r:Lcom/vungle/publisher/hs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field s:Lcom/vungle/publisher/dp$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field t:Lcom/vungle/publisher/fd$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Z)Lcom/vungle/publisher/et;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/vungle/publisher/et",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 143
    .line 145
    iget-object v1, p0, Lcom/vungle/publisher/b;->c:Lcom/vungle/publisher/qs;

    invoke-interface {v1}, Lcom/vungle/publisher/qs;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 146
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/vungle/publisher/b;->t:Lcom/vungle/publisher/fd$b;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/vungle/publisher/dp$c;

    const/4 v3, 0x0

    sget-object v4, Lcom/vungle/publisher/dp$c;->e:Lcom/vungle/publisher/dp$c;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/vungle/publisher/dp$c;->d:Lcom/vungle/publisher/dp$c;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/fd$b;->a([Lcom/vungle/publisher/dp$c;)Lcom/vungle/publisher/et;

    move-result-object v1

    .line 148
    :goto_0
    if-nez v1, :cond_1

    .line 149
    const-string v1, "VunglePrepare"

    const-string v2, "no local ad available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/vungle/publisher/b;->l:Lcom/vungle/publisher/zb;

    new-instance v2, Lcom/vungle/publisher/yu;

    invoke-direct {v2}, Lcom/vungle/publisher/yu;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/zb;->a(Lcom/vungle/publisher/yu;)V

    .line 170
    :goto_1
    return-object v0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/b;->t:Lcom/vungle/publisher/fd$b;

    invoke-virtual {v1}, Lcom/vungle/publisher/fd$b;->b()Lcom/vungle/publisher/et;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_1
    invoke-interface {v1}, Lcom/vungle/publisher/et;->g()Lcom/vungle/publisher/dp$c;

    move-result-object v2

    .line 154
    sget-object v3, Lcom/vungle/publisher/dp$c;->d:Lcom/vungle/publisher/dp$c;

    if-ne v2, v3, :cond_3

    .line 155
    if-eqz p1, :cond_2

    .line 156
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "local ad partially prepared, restarting preparation for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/vungle/publisher/et;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/vungle/publisher/b;->a:Lcom/vungle/publisher/k;

    invoke-interface {v1}, Lcom/vungle/publisher/et;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/vungle/publisher/et;->f()Lcom/vungle/publisher/p;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/vungle/publisher/k;->a(Ljava/lang/String;Lcom/vungle/publisher/p;)V

    goto :goto_1

    .line 159
    :cond_2
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "local ad partially prepared, but not restarting preparation for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/vungle/publisher/et;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_3
    sget-object v0, Lcom/vungle/publisher/dp$c;->e:Lcom/vungle/publisher/dp$c;

    if-ne v2, v0, :cond_4

    .line 163
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "local ad already available for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/vungle/publisher/et;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v0, v1

    .line 165
    goto :goto_1

    .line 168
    :cond_5
    const-string v1, "VunglePrepare"

    const-string v2, "unable to fetch local ad -  no external storage available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method final a(Ljava/lang/String;Lcom/vungle/publisher/u;)Lcom/vungle/publisher/ja;
    .locals 11

    .prologue
    .line 235
    const/4 v1, 0x0

    .line 238
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/vungle/publisher/b;->m:Lcom/vungle/publisher/ra;

    iget-boolean v2, v2, Lcom/vungle/publisher/ra;->b:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/vungle/publisher/b;->h:Lcom/vungle/publisher/vs;

    invoke-interface {v0}, Lcom/vungle/publisher/vs;->a()Lcom/vungle/publisher/vr;

    move-result-object v3

    iget-object v0, p0, Lcom/vungle/publisher/b;->m:Lcom/vungle/publisher/ra;

    iget-object v0, v0, Lcom/vungle/publisher/ra;->c:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "ad streaming "

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v2, "enabled"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connectivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_4

    .line 239
    const-string v0, "VunglePrepare"

    const-string v2, "requesting streaming ad"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/vungle/publisher/b;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/b$c;

    .line 241
    invoke-virtual {v0}, Lcom/vungle/publisher/b$c;->register()V

    .line 242
    iget-object v2, p0, Lcom/vungle/publisher/b;->l:Lcom/vungle/publisher/zb;

    invoke-virtual {v2, p1, p2}, Lcom/vungle/publisher/zb;->a(Ljava/lang/String;Lcom/vungle/publisher/u;)V

    .line 243
    iget-wide v2, v0, Lcom/vungle/publisher/b$c;->d:J

    .line 244
    iget-object v4, p0, Lcom/vungle/publisher/b;->m:Lcom/vungle/publisher/ra;

    iget v4, v4, Lcom/vungle/publisher/ra;->d:I

    const-string v5, "VungleConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "streaming response timeout config "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 245
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    :goto_2
    :try_start_1
    iget-boolean v6, v0, Lcom/vungle/publisher/b$c;->b:Z

    if-nez v6, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    .line 251
    :try_start_2
    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 254
    :catch_0
    move-exception v6

    goto :goto_2

    .line 238
    :cond_0
    :try_start_3
    const-string v2, "disabled"

    goto :goto_0

    :cond_1
    const-string v2, "VunglePrepare"

    const-string v3, "ad streaming disabled"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 270
    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 271
    :goto_3
    iget-object v2, p0, Lcom/vungle/publisher/b;->r:Lcom/vungle/publisher/hs$a;

    const-string v3, "VunglePrepare"

    const-string v4, "error getting streaming ad"

    invoke-virtual {v2, v3, v4, v1}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    :goto_4
    return-object v0

    .line 256
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 257
    iget-boolean v2, v0, Lcom/vungle/publisher/b$c;->b:Z

    if-eqz v2, :cond_3

    .line 258
    iget-object v2, v0, Lcom/vungle/publisher/b$c;->c:Lcom/vungle/publisher/ja;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 259
    if-eqz v2, :cond_5

    .line 260
    :try_start_5
    const-string v1, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "request streaming ad success after "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vungle/publisher/ja;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v1, v2

    .line 267
    :goto_5
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v0, v1

    goto :goto_4

    .line 264
    :cond_3
    :try_start_7
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "request streaming ad timeout after "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Lcom/vungle/publisher/b$c;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 267
    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_6
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 270
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 272
    goto :goto_4

    .line 267
    :catchall_1
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_6

    :cond_5
    move-object v1, v2

    goto :goto_5
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    iget-object v2, p0, Lcom/vungle/publisher/b;->q:Lcom/vungle/publisher/qu;

    iget-object v2, v2, Lcom/vungle/publisher/qu;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vungle/publisher/b;->q:Lcom/vungle/publisher/qu;

    invoke-virtual {v2}, Lcom/vungle/publisher/qu;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vungle/publisher/b;->t:Lcom/vungle/publisher/fd$b;

    invoke-virtual {v2}, Lcom/vungle/publisher/fd$b;->b()Lcom/vungle/publisher/et;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final b(Z)V
    .locals 8

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/b;->a(Z)Lcom/vungle/publisher/et;

    .line 295
    iget-object v0, p0, Lcom/vungle/publisher/b;->g:Lcom/vungle/publisher/cz;

    sget-object v1, Lcom/vungle/publisher/cz$b;->o:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cz;->a(Lcom/vungle/publisher/cz$b;)V

    iget-object v0, p0, Lcom/vungle/publisher/b;->t:Lcom/vungle/publisher/fd$b;

    invoke-virtual {v0}, Lcom/vungle/publisher/fd$b;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vungle/publisher/b;->g:Lcom/vungle/publisher/cz;

    new-instance v2, Lcom/vungle/publisher/b$2;

    invoke-direct {v2, p0}, Lcom/vungle/publisher/b$2;-><init>(Lcom/vungle/publisher/b;)V

    sget-object v3, Lcom/vungle/publisher/cz$b;->o:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;J)V

    .line 296
    :cond_0
    return-void
.end method
