.class public final Lcom/vungle/publisher/cu;
.super Lcom/vungle/publisher/rj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/cu$1;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/fu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/ky$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/hy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/k;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/zb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vungle/publisher/rj;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/aej;Lcom/vungle/publisher/fc;Lcom/vungle/publisher/yu;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/vungle/publisher/dp;",
            "R:",
            "Lcom/vungle/publisher/aej;",
            ">(TR;",
            "Lcom/vungle/publisher/fc",
            "<TA;TR;>;",
            "Lcom/vungle/publisher/yu;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v1, p1, Lcom/vungle/publisher/aej;->f:Ljava/lang/String;

    .line 75
    invoke-interface {p2, v1}, Lcom/vungle/publisher/fc;->b(Ljava/lang/String;)Lcom/vungle/publisher/et;

    move-result-object v2

    .line 76
    if-nez v2, :cond_0

    .line 79
    :try_start_0
    invoke-interface {p2}, Lcom/vungle/publisher/fc;->d()I

    .line 80
    invoke-interface {p2, p1}, Lcom/vungle/publisher/fc;->a(Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/dp;

    move-result-object v0

    .line 81
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "received new "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/dp;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/vungle/publisher/dp;->v()Ljava/lang/Object;

    .line 83
    iget-object v2, p0, Lcom/vungle/publisher/cu;->d:Lcom/vungle/publisher/k;

    invoke-virtual {v0}, Lcom/vungle/publisher/dp;->f()Lcom/vungle/publisher/p;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/vungle/publisher/k;->a(Ljava/lang/String;Lcom/vungle/publisher/p;)V
    :try_end_0
    .catch Lcom/vungle/publisher/rw; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fatal error preparing ad "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    iget-object v0, p0, Lcom/vungle/publisher/cu;->eventBus:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/ar;

    invoke-direct {v1}, Lcom/vungle/publisher/ar;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :catch_1
    move-exception v0

    .line 88
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error preparing ad "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", retrying"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    invoke-direct {p0, p3}, Lcom/vungle/publisher/cu;->a(Lcom/vungle/publisher/yu;)V

    goto :goto_0

    .line 95
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/vungle/publisher/et;->c()Lcom/vungle/publisher/dp;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/vungle/publisher/fc;->b(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 101
    :goto_1
    invoke-interface {v2}, Lcom/vungle/publisher/et;->g()Lcom/vungle/publisher/dp$c;

    move-result-object v0

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "received "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/vungle/publisher/et;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    sget-object v4, Lcom/vungle/publisher/cu$1;->a:[I

    invoke-virtual {v0}, Lcom/vungle/publisher/dp$c;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 117
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :catch_2
    move-exception v0

    .line 99
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error updating ad "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 108
    :pswitch_0
    const-string v0, "VunglePrepare"

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/vungle/publisher/cu;->d:Lcom/vungle/publisher/k;

    invoke-interface {v2}, Lcom/vungle/publisher/et;->f()Lcom/vungle/publisher/p;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/k;->a(Ljava/lang/String;Lcom/vungle/publisher/p;)V

    goto/16 :goto_0

    .line 113
    :pswitch_1
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - retrying"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, p3}, Lcom/vungle/publisher/cu;->a(Lcom/vungle/publisher/yu;)V

    goto/16 :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/vungle/publisher/yu;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vungle/publisher/cu;->e:Lcom/vungle/publisher/zb;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/zb;->b(Lcom/vungle/publisher/yu;)V

    .line 70
    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/vungle/publisher/az;)V
    .locals 2
    .param p1, "event"    # Lcom/vungle/publisher/az;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/vungle/publisher/cu;->unregister()V

    .line 46
    const-string v0, "VungleEvent"

    const-string v1, "LocalVideoAd request failure"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p1, Lcom/vungle/publisher/as;->a:Lcom/vungle/publisher/yu;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/cu;->a(Lcom/vungle/publisher/yu;)V

    .line 48
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/ba;)V
    .locals 3
    .param p1, "mraidAdSuccessEvent"    # Lcom/vungle/publisher/ba;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/vungle/publisher/cu;->unregister()V

    .line 64
    const-string v0, "VungleEvent"

    const-string v1, "LocalMraidAd request successful"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p1, Lcom/vungle/publisher/ay;->a:Lcom/vungle/publisher/aej;

    iget-object v1, p0, Lcom/vungle/publisher/cu;->c:Lcom/vungle/publisher/hy$a;

    iget-object v2, p1, Lcom/vungle/publisher/ay;->b:Lcom/vungle/publisher/yu;

    invoke-direct {p0, v0, v1, v2}, Lcom/vungle/publisher/cu;->a(Lcom/vungle/publisher/aej;Lcom/vungle/publisher/fc;Lcom/vungle/publisher/yu;)V

    .line 66
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/bb;)V
    .locals 3
    .param p1, "localVideoAdSuccessEvent"    # Lcom/vungle/publisher/bb;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/vungle/publisher/cu;->unregister()V

    .line 52
    const-string v0, "VungleEvent"

    const-string v1, "LocalVideoAd request successful"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p1, Lcom/vungle/publisher/ay;->a:Lcom/vungle/publisher/aej;

    iget-object v1, p0, Lcom/vungle/publisher/cu;->a:Lcom/vungle/publisher/fu$a;

    iget-object v2, p1, Lcom/vungle/publisher/ay;->b:Lcom/vungle/publisher/yu;

    invoke-direct {p0, v0, v1, v2}, Lcom/vungle/publisher/cu;->a(Lcom/vungle/publisher/aej;Lcom/vungle/publisher/fc;Lcom/vungle/publisher/yu;)V

    .line 54
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/bc;)V
    .locals 3
    .param p1, "vungleMraidAdSuccessEvent"    # Lcom/vungle/publisher/bc;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/vungle/publisher/cu;->unregister()V

    .line 58
    const-string v0, "VungleEvent"

    const-string v1, "LocalVungleMraidAd request successful"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p1, Lcom/vungle/publisher/ay;->a:Lcom/vungle/publisher/aej;

    iget-object v1, p0, Lcom/vungle/publisher/cu;->b:Lcom/vungle/publisher/ky$a;

    iget-object v2, p1, Lcom/vungle/publisher/ay;->b:Lcom/vungle/publisher/yu;

    invoke-direct {p0, v0, v1, v2}, Lcom/vungle/publisher/cu;->a(Lcom/vungle/publisher/aej;Lcom/vungle/publisher/fc;Lcom/vungle/publisher/yu;)V

    .line 60
    return-void
.end method
