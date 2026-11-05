.class public abstract Lcom/vungle/publisher/agh;
.super Lcom/vungle/publisher/rj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/dp;",
        ">",
        "Lcom/vungle/publisher/rj;"
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/dp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field protected b:Lcom/vungle/publisher/dv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/dv",
            "<***>;"
        }
    .end annotation
.end field

.field protected c:Lcom/vungle/publisher/dw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/dw",
            "<***TA;>;"
        }
    .end annotation
.end field

.field d:Lcom/vungle/publisher/dw$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/hs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/agi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/wy;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vungle/publisher/rj;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/vungle/publisher/agh;->unregister()V

    .line 113
    iget-object v0, p0, Lcom/vungle/publisher/agh;->c:Lcom/vungle/publisher/dw;

    .line 114
    if-nez v0, :cond_0

    .line 115
    const-string v0, "VungleReport"

    const-string v1, "no current ad report"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/agh;->f:Lcom/vungle/publisher/agi;

    invoke-virtual {v0}, Lcom/vungle/publisher/agi;->a()V

    .line 123
    iput-object v2, p0, Lcom/vungle/publisher/agh;->a:Lcom/vungle/publisher/dp;

    iput-object v2, p0, Lcom/vungle/publisher/agh;->c:Lcom/vungle/publisher/dw;

    iput-object v2, p0, Lcom/vungle/publisher/agh;->b:Lcom/vungle/publisher/dv;

    invoke-virtual {p0}, Lcom/vungle/publisher/agh;->a()V

    .line 124
    return-void

    .line 118
    :cond_0
    sget-object v1, Lcom/vungle/publisher/dw$c;->d:Lcom/vungle/publisher/dw$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dw;->a(Lcom/vungle/publisher/dw$c;)V

    .line 119
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dw;->a(Ljava/lang/Long;)V

    .line 120
    invoke-virtual {v0}, Lcom/vungle/publisher/dw;->y()Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final a(Lcom/vungle/publisher/ad;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ad",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-interface {p1}, Lcom/vungle/publisher/ad;->a()Lcom/vungle/publisher/dp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/agh;->a(Lcom/vungle/publisher/dp;)V

    .line 48
    return-void
.end method

.method public final a(Lcom/vungle/publisher/dp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/agh;->a:Lcom/vungle/publisher/dp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/agh;->a:Lcom/vungle/publisher/dp;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/dp;->a(Lcom/vungle/publisher/dp;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new ad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/publisher/dp;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/vungle/publisher/agh;->a:Lcom/vungle/publisher/dp;

    .line 54
    iget-object v0, p0, Lcom/vungle/publisher/agh;->d:Lcom/vungle/publisher/dw$b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/dw$b;->a(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/agh;->c:Lcom/vungle/publisher/dw;

    .line 55
    iget-object v0, p0, Lcom/vungle/publisher/agh;->c:Lcom/vungle/publisher/dw;

    invoke-virtual {v0}, Lcom/vungle/publisher/dw;->s()Lcom/vungle/publisher/dv;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/agh;->b:Lcom/vungle/publisher/dv;

    .line 56
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current play: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/agh;->b:Lcom/vungle/publisher/dv;

    invoke-virtual {v2}, Lcom/vungle/publisher/dv;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/vungle/publisher/agh;->a()V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "same ad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/publisher/dp;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(Lcom/vungle/publisher/ko;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vungle/publisher/agh;->a(Lcom/vungle/publisher/ko;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method protected final a(Lcom/vungle/publisher/ko;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/agh;->b:Lcom/vungle/publisher/dv;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/publisher/dv;->a(Lcom/vungle/publisher/ko;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    iget-object v1, p0, Lcom/vungle/publisher/agh;->e:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleReport"

    const-string v3, "error reporting event"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/vungle/publisher/bf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/bf",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/vungle/publisher/agh;, "Lcom/vungle/publisher/agh<TA;>;"
    .local p1, "startPlayAdEvent":Lcom/vungle/publisher/bf;, "Lcom/vungle/publisher/bf<TA;>;"
    :try_start_0
    const-string v0, "VungleReport"

    const-string v1, "received play ad start"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p1, Lcom/vungle/publisher/bf;->a:Lcom/vungle/publisher/a;

    .line 68
    iget-object v1, p0, Lcom/vungle/publisher/agh;->c:Lcom/vungle/publisher/dw;

    .line 69
    sget-object v2, Lcom/vungle/publisher/dw$c;->c:Lcom/vungle/publisher/dw$c;

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/dw;->a(Lcom/vungle/publisher/dw$c;)V

    .line 70
    invoke-interface {v0}, Lcom/vungle/publisher/a;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/dw;->a(Ljava/util/Map;)V

    .line 71
    invoke-interface {v0}, Lcom/vungle/publisher/a;->isIncentivized()Z

    move-result v2

    .line 72
    invoke-virtual {v1, v2}, Lcom/vungle/publisher/dw;->b(Z)V

    .line 73
    if-eqz v2, :cond_0

    .line 74
    invoke-interface {v0}, Lcom/vungle/publisher/a;->getIncentivizedUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/dw;->b(Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-interface {v0}, Lcom/vungle/publisher/a;->getPlacement()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/vungle/publisher/ahe;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/dw;->c(Ljava/lang/String;)V

    .line 80
    :cond_1
    iget-wide v2, p1, Lcom/vungle/publisher/ri;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/dw;->c(Ljava/lang/Long;)V

    .line 81
    invoke-virtual {v1}, Lcom/vungle/publisher/dw;->y()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lcom/vungle/publisher/agh;->e:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleReport"

    const-string v3, "error processing ad start event"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/vungle/publisher/cc;)V
    .locals 2
    .param p1, "destroyedErrorEndPlayEvent"    # Lcom/vungle/publisher/cc;

    .prologue
    .line 90
    .local p0, "this":Lcom/vungle/publisher/agh;, "Lcom/vungle/publisher/agh<TA;>;"
    :try_start_0
    const-string v0, "VungleReport"

    const-string v1, "received destroyed ad end"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-wide v0, p1, Lcom/vungle/publisher/ri;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/agh;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    const-string v0, "VungleReport"

    const-string v1, "error processing destroyed ad end"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
