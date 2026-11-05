.class public final Lcom/vungle/publisher/cp;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/cp$1;,
        Lcom/vungle/publisher/cp$a;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/hm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/hm",
            "<*>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Lcom/vungle/publisher/p;

.field d:Lcom/vungle/publisher/yu;

.field e:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/hs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 56
    iget-object v2, p0, Lcom/vungle/publisher/cp;->a:Lcom/vungle/publisher/hm;

    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-interface {v2}, Lcom/vungle/publisher/hm;->u()Lcom/vungle/publisher/fr$b;

    move-result-object v3

    .line 59
    invoke-interface {v2}, Lcom/vungle/publisher/hm;->t()Lcom/vungle/publisher/fr$a;

    move-result-object v4

    .line 60
    sget-object v5, Lcom/vungle/publisher/cp$1;->a:[I

    invoke-virtual {v4}, Lcom/vungle/publisher/fr$a;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :pswitch_0
    const-string v1, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " will begin downloading for ad_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/publisher/cp;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/cp;->d:Lcom/vungle/publisher/yu;

    invoke-interface {v2, v1}, Lcom/vungle/publisher/hm;->a(Lcom/vungle/publisher/yu;)V
    :try_end_0
    .catch Lcom/vungle/publisher/rw; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    invoke-interface {v2}, Lcom/vungle/publisher/hm;->b_()I

    .line 92
    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Lcom/vungle/publisher/cg$b;

    const-string v2, "external storage not available, could not download ad"

    invoke-direct {v1, v2, v0}, Lcom/vungle/publisher/cg$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 72
    :pswitch_1
    const-string v1, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " still downloading for ad_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/publisher/cp;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_2
    const-string v0, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " downloaded, continuing to postprocessing for ad_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/publisher/cp;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/vungle/publisher/cp;->a:Lcom/vungle/publisher/hm;

    invoke-interface {v0}, Lcom/vungle/publisher/hm;->h()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Lcom/vungle/publisher/cg$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/vungle/publisher/hm;->u()Lcom/vungle/publisher/fr$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " post processing failed for ad_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/vungle/publisher/hm;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vungle/publisher/cg$c;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/vungle/publisher/rw; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    :catch_1
    move-exception v0

    .line 81
    new-instance v1, Lcom/vungle/publisher/cg$b;

    const-string v2, "external storage not available, could not post process ad"

    invoke-direct {v1, v2, v0}, Lcom/vungle/publisher/cg$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move v0, v1

    .line 82
    goto/16 :goto_0

    .line 85
    :pswitch_3
    const-string v0, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " already "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for ad_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/publisher/cp;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 87
    goto/16 :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 41
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run PrepareViewableRunnable. adId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/cp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/cp;->a:Lcom/vungle/publisher/hm;

    invoke-interface {v2}, Lcom/vungle/publisher/hm;->u()Lcom/vungle/publisher/fr$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/cp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/vungle/publisher/cp;->e:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/au;

    iget-object v2, p0, Lcom/vungle/publisher/cp;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/publisher/cp;->c:Lcom/vungle/publisher/p;

    invoke-direct {v1, v2, v3}, Lcom/vungle/publisher/au;-><init>(Ljava/lang/String;Lcom/vungle/publisher/p;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    iget-object v1, p0, Lcom/vungle/publisher/cp;->f:Lcom/vungle/publisher/hs$a;

    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error processing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vungle/publisher/cp;->a:Lcom/vungle/publisher/hm;

    invoke-interface {v4}, Lcom/vungle/publisher/hm;->u()Lcom/vungle/publisher/fr$b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for ad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/publisher/cp;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". retryCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/publisher/cp;->d:Lcom/vungle/publisher/yu;

    iget v4, v4, Lcom/vungle/publisher/yu;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    iget-object v0, p0, Lcom/vungle/publisher/cp;->a:Lcom/vungle/publisher/hm;

    sget-object v1, Lcom/vungle/publisher/fr$a;->f:Lcom/vungle/publisher/fr$a;

    invoke-interface {v0, v1}, Lcom/vungle/publisher/hm;->b(Lcom/vungle/publisher/fr$a;)V

    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/cp;->e:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/aq;

    iget-object v2, p0, Lcom/vungle/publisher/cp;->d:Lcom/vungle/publisher/yu;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/aq;-><init>(Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
