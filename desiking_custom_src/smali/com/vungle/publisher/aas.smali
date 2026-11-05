.class public final Lcom/vungle/publisher/aas;
.super Lcom/vungle/publisher/ya;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/agl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Ldagger/Lazy;
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

.field e:Lcom/vungle/publisher/cz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/aek$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/aew$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/aez$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lcom/vungle/publisher/afk$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field o:Lcom/vungle/publisher/qu;
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
    invoke-direct {p0}, Lcom/vungle/publisher/ya;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/aas;)Lcom/vungle/publisher/hs$a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vungle/publisher/aas;->i:Lcom/vungle/publisher/hs$a;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vungle/publisher/aas;->a:Lcom/vungle/publisher/agl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/vungle/publisher/agl;->a:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/vungle/publisher/agl;->b:J

    .line 82
    iget-object v0, p2, Lcom/vungle/publisher/xl;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/aas;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 84
    iget-object v0, p0, Lcom/vungle/publisher/aas;->d:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/rd;

    .line 85
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/vungle/publisher/rd;->a(J)V

    .line 86
    iget-object v2, p0, Lcom/vungle/publisher/aas;->f:Lcom/vungle/publisher/aek$a;

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/aek$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/aek;

    .line 87
    iget-boolean v2, v1, Lcom/vungle/publisher/aek;->k:Z

    .line 88
    iget-object v3, v1, Lcom/vungle/publisher/aej;->e:Lcom/vungle/publisher/p;

    .line 90
    if-eqz v2, :cond_5

    .line 92
    iget-object v0, v1, Lcom/vungle/publisher/aej;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 93
    const-string v0, "VungleNetwork"

    const-string v1, "received expired ad from server, tossing it and getting a new one"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/aas;->b:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/az;

    iget-object v2, p1, Lcom/vungle/publisher/xr;->c:Lcom/vungle/publisher/yu;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/az;-><init>(Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 115
    :cond_0
    :goto_1
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_2
    if-nez v3, :cond_3

    .line 96
    const-string v0, "VungleNetwork"

    const-string v1, "received null adType from server, tossing it and getting a new one"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/vungle/publisher/aas;->b:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/az;

    iget-object v2, p1, Lcom/vungle/publisher/xr;->c:Lcom/vungle/publisher/yu;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/az;-><init>(Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    :cond_3
    const-string v0, "VungleNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "received a valid ad, continue processing ad with type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, v1, Lcom/vungle/publisher/aek;->l:Lorg/json/JSONObject;

    .line 102
    iget-object v2, p1, Lcom/vungle/publisher/xr;->c:Lcom/vungle/publisher/yu;

    new-instance v4, Lcom/vungle/publisher/aas$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/vungle/publisher/aas$1;-><init>(Lcom/vungle/publisher/aas;Lorg/json/JSONObject;Lcom/vungle/publisher/yu;)V

    invoke-virtual {v4, v3}, Lcom/vungle/publisher/aas$1;->a(Lcom/vungle/publisher/p;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/aas;->o:Lcom/vungle/publisher/qu;

    iget-object v1, v1, Lcom/vungle/publisher/aej;->g:Ljava/lang/Integer;

    if-nez v1, :cond_4

    const-string v0, "VungleAd"

    const-string v1, "ignoring set null min ad delay seconds"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setting min ad delay seconds: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vungle/publisher/qu;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "VgAdDelayDuration"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 107
    :cond_5
    invoke-virtual {v1}, Lcom/vungle/publisher/aek;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 108
    const-string v4, "VungleNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "received sleep from server: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v2, v3}, Lcom/vungle/publisher/rd;->a(J)V

    .line 110
    iget-object v0, p0, Lcom/vungle/publisher/aas;->e:Lcom/vungle/publisher/cz;

    new-instance v4, Lcom/vungle/publisher/yt;

    invoke-direct {v4, p1}, Lcom/vungle/publisher/yt;-><init>(Lcom/vungle/publisher/xr;)V

    iget-object v5, p1, Lcom/vungle/publisher/xr;->d:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;J)V

    .line 111
    const-string v0, "pubNotFound"

    iget-object v1, v1, Lcom/vungle/publisher/aej;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "VungleNetwork"

    const-string v1, "received \'publisher app id not found\' error from server, please fix and try again"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected final a(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vungle/publisher/aas;->b:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/az;

    iget-object v2, p1, Lcom/vungle/publisher/xr;->c:Lcom/vungle/publisher/yu;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/az;-><init>(Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 167
    return-void
.end method
