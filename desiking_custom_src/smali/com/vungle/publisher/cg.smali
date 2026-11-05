.class public final Lcom/vungle/publisher/cg;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/cg$1;,
        Lcom/vungle/publisher/cg$b;,
        Lcom/vungle/publisher/cg$c;,
        Lcom/vungle/publisher/cg$a;,
        Lcom/vungle/publisher/cg$d;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/Object;


# instance fields
.field a:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/dw$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/dp$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/cz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/cp$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/cg$d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/hs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lcom/vungle/publisher/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vungle/publisher/cg;->h:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/vungle/publisher/et;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/et",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 93
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prepareAd with id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/cg;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/cg;->j:Lcom/vungle/publisher/p;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/vungle/publisher/cg;->i:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/vungle/publisher/cg;->c:Lcom/vungle/publisher/dp$b;

    iget-object v1, p0, Lcom/vungle/publisher/cg;->j:Lcom/vungle/publisher/p;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dp$b;->a(Lcom/vungle/publisher/p;)Lcom/vungle/publisher/fc;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/vungle/publisher/fc;->a(Ljava/lang/String;)Lcom/vungle/publisher/et;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "no ad "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    invoke-interface {v0}, Lcom/vungle/publisher/et;->g()Lcom/vungle/publisher/dp$c;

    move-result-object v1

    .line 101
    const/4 v3, 0x0

    .line 102
    sget-object v4, Lcom/vungle/publisher/cg$1;->a:[I

    invoke-virtual {v1}, Lcom/vungle/publisher/dp$c;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 112
    :try_start_0
    invoke-direct {p0, v0}, Lcom/vungle/publisher/cg;->a(Lcom/vungle/publisher/et;)Lcom/vungle/publisher/et;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 117
    :try_start_1
    invoke-interface {v0}, Lcom/vungle/publisher/et;->b_()I

    .line 118
    invoke-interface {v1}, Lcom/vungle/publisher/et;->g()Lcom/vungle/publisher/dp$c;

    move-result-object v0

    sget-object v3, Lcom/vungle/publisher/dp$c;->e:Lcom/vungle/publisher/dp$c;

    if-ne v0, v3, :cond_1

    .line 119
    iget-object v0, p0, Lcom/vungle/publisher/cg;->a:Lcom/vungle/publisher/rq;

    new-instance v3, Lcom/vungle/publisher/am;

    invoke-direct {v3}, Lcom/vungle/publisher/am;-><init>()V

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v0, v1

    .line 125
    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    new-instance v0, Lcom/vungle/publisher/cg$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ad status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/cg$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :pswitch_1
    const-string v1, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ad already "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/vungle/publisher/dp$c;->e:Lcom/vungle/publisher/dp$c;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "error saving ad "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/vungle/publisher/cg;->g:Lcom/vungle/publisher/hs$a;

    const-string v3, "VunglePrepare"

    invoke-virtual {v2, v3, v1, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    new-instance v0, Lcom/vungle/publisher/cg$b;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/cg$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :catchall_0
    move-exception v1

    .line 117
    :try_start_2
    invoke-interface {v0}, Lcom/vungle/publisher/et;->b_()I

    .line 118
    invoke-interface {v3}, Lcom/vungle/publisher/et;->g()Lcom/vungle/publisher/dp$c;

    move-result-object v0

    sget-object v3, Lcom/vungle/publisher/dp$c;->e:Lcom/vungle/publisher/dp$c;

    if-ne v0, v3, :cond_2

    .line 119
    iget-object v0, p0, Lcom/vungle/publisher/cg;->a:Lcom/vungle/publisher/rq;

    new-instance v3, Lcom/vungle/publisher/am;

    invoke-direct {v3}, Lcom/vungle/publisher/am;-><init>()V

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 125
    :cond_2
    throw v1

    .line 122
    :catch_1
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "error saving ad "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/vungle/publisher/cg;->g:Lcom/vungle/publisher/hs$a;

    const-string v3, "VunglePrepare"

    invoke-virtual {v2, v3, v1, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    new-instance v0, Lcom/vungle/publisher/cg$b;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/cg$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/vungle/publisher/et;)Lcom/vungle/publisher/et;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/et",
            "<*>;)",
            "Lcom/vungle/publisher/et",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-interface {p1}, Lcom/vungle/publisher/et;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/vungle/publisher/et;->g()Lcom/vungle/publisher/dp$c;

    move-result-object v1

    sget-object v2, Lcom/vungle/publisher/dp$c;->b:Lcom/vungle/publisher/dp$c;

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/vungle/publisher/dp$c;->d:Lcom/vungle/publisher/dp$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/vungle/publisher/et;->l()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clock change detected; updating ad.id "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " status from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/vungle/publisher/et;->a(Lcom/vungle/publisher/dp$c;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/vungle/publisher/dp$c;->b:Lcom/vungle/publisher/dp$c;

    .line 135
    invoke-interface {p1}, Lcom/vungle/publisher/et;->g()Lcom/vungle/publisher/dp$c;

    move-result-object v1

    .line 136
    :goto_1
    invoke-interface {p1}, Lcom/vungle/publisher/et;->i()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    .line 138
    :try_start_0
    sget-object v2, Lcom/vungle/publisher/cg$1;->a:[I

    invoke-virtual {v1}, Lcom/vungle/publisher/dp$c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected ad.status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/vungle/publisher/cg$c; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/vungle/publisher/cg$c;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for ad.id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/publisher/cg;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-interface {p1}, Lcom/vungle/publisher/et;->k()V

    goto :goto_1

    .line 133
    :cond_1
    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    const-wide/16 v6, 0x5a0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    const-string v3, "VunglePrepare"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "retrying "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/vungle/publisher/dp$c;->b:Lcom/vungle/publisher/dp$c;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ad.id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " after "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/1440 minutes; updating status from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/vungle/publisher/et;->a(Lcom/vungle/publisher/dp$c;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lcom/vungle/publisher/cg$b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad marked failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minutes ago"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/cg$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/vungle/publisher/cg;->b:Lcom/vungle/publisher/dw$b;

    invoke-virtual {v2, p1}, Lcom/vungle/publisher/dw$b;->a(Lcom/vungle/publisher/et;)Lcom/vungle/publisher/fi;

    sget-object v2, Lcom/vungle/publisher/dp$c;->d:Lcom/vungle/publisher/dp$c;

    invoke-interface {p1, v2}, Lcom/vungle/publisher/et;->a(Lcom/vungle/publisher/dp$c;)V

    .line 143
    :pswitch_1
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "prepare_retry_count "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " for ad "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/vungle/publisher/cg;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/vungle/publisher/cg;->b(Lcom/vungle/publisher/et;)V

    .line 150
    :goto_2
    return-object p1

    .line 149
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/vungle/publisher/cg;->c(Lcom/vungle/publisher/et;)V
    :try_end_1
    .catch Lcom/vungle/publisher/cg$c; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 160
    :cond_3
    sget-object v1, Lcom/vungle/publisher/dp$c;->b:Lcom/vungle/publisher/dp$c;

    invoke-interface {p1, v1}, Lcom/vungle/publisher/et;->a(Lcom/vungle/publisher/dp$c;)V

    .line 161
    new-instance v1, Lcom/vungle/publisher/cg$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to prepare ad after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " attempts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vungle/publisher/cg$b;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic a(Lcom/vungle/publisher/cg;Lcom/vungle/publisher/p;)Lcom/vungle/publisher/p;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vungle/publisher/cg;->j:Lcom/vungle/publisher/p;

    return-object p1
.end method

.method public static synthetic a(Lcom/vungle/publisher/cg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vungle/publisher/cg;->i:Ljava/lang/String;

    return-object p1
.end method

.method private b(Lcom/vungle/publisher/et;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/et",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 201
    .line 202
    invoke-static {p1}, Lcom/vungle/publisher/cg;->d(Lcom/vungle/publisher/et;)V

    .line 203
    invoke-interface {p1}, Lcom/vungle/publisher/et;->g_()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hm;

    .line 204
    invoke-interface {v0}, Lcom/vungle/publisher/hm;->t()Lcom/vungle/publisher/fr$a;

    move-result-object v5

    const-string v6, "VunglePrepare"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/vungle/publisher/hm;->u()Lcom/vungle/publisher/fr$b;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/vungle/publisher/fr$a;->a:Lcom/vungle/publisher/fr$a;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/vungle/publisher/fr$a;->f:Lcom/vungle/publisher/fr$a;

    if-ne v5, v6, :cond_1

    :cond_0
    sget-object v6, Lcom/vungle/publisher/fr$a;->b:Lcom/vungle/publisher/fr$a;

    invoke-interface {v0, v6}, Lcom/vungle/publisher/hm;->b(Lcom/vungle/publisher/fr$a;)V

    iget-object v6, p0, Lcom/vungle/publisher/cg;->i:Ljava/lang/String;

    iget-object v7, p0, Lcom/vungle/publisher/cg;->f:Lcom/vungle/publisher/cg$d;

    invoke-virtual {v7, v6}, Lcom/vungle/publisher/cg$d;->a(Ljava/lang/String;)Lcom/vungle/publisher/yu;

    move-result-object v6

    const-string v7, "VunglePrepare"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "begin preparing "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/vungle/publisher/hm;->u()Lcom/vungle/publisher/fr$b;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for adType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vungle/publisher/cg;->j:Lcom/vungle/publisher/p;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vungle/publisher/cg;->d:Lcom/vungle/publisher/cz;

    iget-object v8, p0, Lcom/vungle/publisher/cg;->e:Lcom/vungle/publisher/cp$a;

    iget-object v9, p0, Lcom/vungle/publisher/cg;->j:Lcom/vungle/publisher/p;

    invoke-virtual {v8, v9, v0, v6}, Lcom/vungle/publisher/cp$a;->a(Lcom/vungle/publisher/p;Lcom/vungle/publisher/hm;Lcom/vungle/publisher/yu;)Lcom/vungle/publisher/cp;

    move-result-object v0

    sget-object v6, Lcom/vungle/publisher/cz$b;->h:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v7, v0, v6}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    :cond_1
    sget-object v0, Lcom/vungle/publisher/fr$a;->e:Lcom/vungle/publisher/fr$a;

    if-ne v5, v0, :cond_2

    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    move v0, v3

    :goto_2
    move v1, v0

    .line 207
    goto/16 :goto_0

    :cond_2
    move v0, v3

    .line 204
    goto :goto_1

    .line 208
    :cond_3
    if-eqz v1, :cond_4

    .line 209
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad ready "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/vungle/publisher/et;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/vungle/publisher/dp$c;->e:Lcom/vungle/publisher/dp$c;

    invoke-interface {p1, v0}, Lcom/vungle/publisher/et;->a(Lcom/vungle/publisher/dp$c;)V

    .line 211
    iget-object v0, p0, Lcom/vungle/publisher/cg;->b:Lcom/vungle/publisher/dw$b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/dw$b;->b(Lcom/vungle/publisher/et;)Lcom/vungle/publisher/fi;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/publisher/fi;->a_(Ljava/lang/Long;)V

    .line 217
    :goto_3
    return-void

    .line 215
    :cond_4
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad not ready "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/vungle/publisher/et;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private c(Lcom/vungle/publisher/et;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/et",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 220
    invoke-interface {p1}, Lcom/vungle/publisher/et;->d()Ljava/lang/String;

    move-result-object v1

    .line 221
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "re-verify prepare_retry_count "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/vungle/publisher/et;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for ad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {p1}, Lcom/vungle/publisher/cg;->d(Lcom/vungle/publisher/et;)V

    .line 223
    invoke-interface {p1}, Lcom/vungle/publisher/et;->g_()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hm;

    .line 224
    invoke-interface {v0}, Lcom/vungle/publisher/hm;->i()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Lcom/vungle/publisher/cg$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/vungle/publisher/hm;->u()Lcom/vungle/publisher/fr$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " re-verification failed for ad_id "

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

    .line 226
    :cond_1
    sget-object v0, Lcom/vungle/publisher/dp$c;->e:Lcom/vungle/publisher/dp$c;

    .line 227
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "re-verified ad and set to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/vungle/publisher/cg;->b:Lcom/vungle/publisher/dw$b;

    invoke-virtual {v1, p1}, Lcom/vungle/publisher/dw$b;->a(Lcom/vungle/publisher/et;)Lcom/vungle/publisher/fi;

    move-result-object v1

    .line 229
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vungle/publisher/fi;->a_(Ljava/lang/Long;)V

    .line 230
    invoke-interface {p1, v0}, Lcom/vungle/publisher/et;->a(Lcom/vungle/publisher/dp$c;)V

    .line 231
    return-void
.end method

.method private static d(Lcom/vungle/publisher/et;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/et",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/cg$b;
        }
    .end annotation

    .prologue
    .line 239
    invoke-interface {p0}, Lcom/vungle/publisher/et;->h_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/vungle/publisher/cg$b;

    const-string v1, "invalid ad - no viewables"

    invoke-direct {v0, v1}, Lcom/vungle/publisher/cg$b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 68
    sget-object v1, Lcom/vungle/publisher/cg;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "run PrepareAdRunnable. adId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vungle/publisher/cg;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/cg;->j:Lcom/vungle/publisher/p;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/vungle/publisher/cg;->f:Lcom/vungle/publisher/cg$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/vungle/publisher/cg;->i:Ljava/lang/String;

    iget-object v3, v2, Lcom/vungle/publisher/cg$d;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/vungle/publisher/cg$d;->a:Ljava/util/Map;

    new-instance v4, Lcom/vungle/publisher/yu;

    invoke-direct {v4}, Lcom/vungle/publisher/yu;-><init>()V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/vungle/publisher/cg;->a()Lcom/vungle/publisher/et;

    move-result-object v0

    .line 74
    invoke-interface {v0}, Lcom/vungle/publisher/et;->g()Lcom/vungle/publisher/dp$c;

    move-result-object v0

    sget-object v3, Lcom/vungle/publisher/dp$c;->e:Lcom/vungle/publisher/dp$c;

    if-ne v0, v3, :cond_1

    .line 75
    iget-object v0, p0, Lcom/vungle/publisher/cg;->i:Ljava/lang/String;

    iget-object v3, v2, Lcom/vungle/publisher/cg$d;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/cg;->a:Lcom/vungle/publisher/rq;

    new-instance v3, Lcom/vungle/publisher/at;

    invoke-direct {v3}, Lcom/vungle/publisher/at;-><init>()V

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/vungle/publisher/cg$b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/vungle/publisher/cg$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for ad.id "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/vungle/publisher/cg;->i:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ". retryCount = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/vungle/publisher/cg;->i:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/vungle/publisher/cg$d;->a(Ljava/lang/String;)Lcom/vungle/publisher/yu;

    move-result-object v4

    iget v4, v4, Lcom/vungle/publisher/yu;->b:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/vungle/publisher/cg;->a:Lcom/vungle/publisher/rq;

    new-instance v3, Lcom/vungle/publisher/aq;

    iget-object v4, p0, Lcom/vungle/publisher/cg;->i:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/vungle/publisher/cg$d;->a(Ljava/lang/String;)Lcom/vungle/publisher/yu;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/vungle/publisher/aq;-><init>(Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 85
    :catch_1
    move-exception v0

    .line 86
    :try_start_3
    iget-object v3, p0, Lcom/vungle/publisher/cg;->g:Lcom/vungle/publisher/hs$a;

    const-string v4, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error processing ad.id: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vungle/publisher/cg;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/cg;->a:Lcom/vungle/publisher/rq;

    new-instance v3, Lcom/vungle/publisher/aq;

    iget-object v4, p0, Lcom/vungle/publisher/cg;->i:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/vungle/publisher/cg$d;->a(Ljava/lang/String;)Lcom/vungle/publisher/yu;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/vungle/publisher/aq;-><init>(Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
