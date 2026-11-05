.class final Lcom/vungle/publisher/b$c;
.super Lcom/vungle/publisher/rj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field volatile b:Z

.field volatile c:Lcom/vungle/publisher/ja;

.field final d:J

.field e:Lcom/vungle/publisher/ja$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/vungle/publisher/rj;-><init>()V

    .line 344
    const-string v0, "VunglePrepare"

    iput-object v0, p0, Lcom/vungle/publisher/b$c;->a:Ljava/lang/String;

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/publisher/b$c;->d:J

    .line 352
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/b$c;->b:Z

    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 358
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onEvent(Lcom/vungle/publisher/al;)V
    .locals 6
    .param p1, "prepareStreamingAdFailureEvent"    # Lcom/vungle/publisher/al;

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/vungle/publisher/b$c;->unregister()V

    .line 363
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request streaming ad failure after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/vungle/publisher/ri;->e:J

    iget-wide v4, p0, Lcom/vungle/publisher/b$c;->d:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/vungle/publisher/b$c;->a()V

    .line 365
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/be;)V
    .locals 6
    .param p1, "prepareStreamingAdSuccessEvent"    # Lcom/vungle/publisher/be;

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/vungle/publisher/b$c;->unregister()V

    .line 369
    iget-wide v0, p1, Lcom/vungle/publisher/ri;->e:J

    iget-wide v2, p0, Lcom/vungle/publisher/b$c;->d:J

    sub-long v2, v0, v2

    .line 370
    iget-object v0, p1, Lcom/vungle/publisher/ay;->a:Lcom/vungle/publisher/aej;

    check-cast v0, Lcom/vungle/publisher/aff;

    .line 371
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/vungle/publisher/aff;->k:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    const-string v1, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "received streaming ad "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/vungle/publisher/aej;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v2, v0, Lcom/vungle/publisher/aej;->f:Ljava/lang/String;

    .line 374
    iget-object v1, p0, Lcom/vungle/publisher/b$c;->e:Lcom/vungle/publisher/ja$a;

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ja$a;->b(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/ja;

    .line 375
    if-nez v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/vungle/publisher/b$c;->e:Lcom/vungle/publisher/ja$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ja$a;->a(Lcom/vungle/publisher/aff;)Lcom/vungle/publisher/ja;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/b$c;->c:Lcom/vungle/publisher/ja;

    .line 377
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "inserting new "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/ja;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :try_start_0
    invoke-virtual {v0}, Lcom/vungle/publisher/ja;->r()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    invoke-virtual {p0}, Lcom/vungle/publisher/b$c;->a()V

    .line 416
    return-void

    .line 382
    :catch_0
    move-exception v0

    const-string v0, "VunglePrepare"

    const-string v1, "did not insert streaming ad - possible duplicate"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/vungle/publisher/b$c;->e:Lcom/vungle/publisher/ja$a;

    invoke-virtual {v3, v1, v0}, Lcom/vungle/publisher/ja$a;->a(Lcom/vungle/publisher/kq;Lcom/vungle/publisher/afi;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 394
    :goto_1
    invoke-virtual {v1}, Lcom/vungle/publisher/ja;->g()Lcom/vungle/publisher/dp$c;

    move-result-object v0

    .line 395
    sget-object v2, Lcom/vungle/publisher/b$3;->a:[I

    invoke-virtual {v0}, Lcom/vungle/publisher/dp$c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 408
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "existing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/publisher/ja;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with status "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - ignoring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :catch_1
    move-exception v0

    .line 392
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error updating ad "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 397
    :pswitch_0
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unexpected ad status "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vungle/publisher/ja;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :pswitch_1
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "existing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/publisher/ja;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-object v2, Lcom/vungle/publisher/dp$c;->e:Lcom/vungle/publisher/dp$c;

    if-eq v0, v2, :cond_1

    .line 403
    sget-object v0, Lcom/vungle/publisher/dp$c;->e:Lcom/vungle/publisher/dp$c;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ja;->b(Lcom/vungle/publisher/dp$c;)V

    .line 405
    :cond_1
    iput-object v1, p0, Lcom/vungle/publisher/b$c;->c:Lcom/vungle/publisher/ja;

    goto/16 :goto_0

    .line 413
    :cond_2
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "no streaming ad to play after "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
