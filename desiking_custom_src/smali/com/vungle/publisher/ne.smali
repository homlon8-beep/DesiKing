.class public final Lcom/vungle/publisher/ne;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ra;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/ahf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/nd$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/yb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/cz;
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
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ne;->a:Lcom/vungle/publisher/ra;

    iget-wide v0, v0, Lcom/vungle/publisher/ra;->g:J

    .line 41
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 42
    const-string v2, "VungleData"

    const-string v3, "app fingerprinting allowed by server"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 44
    iget-object v4, p0, Lcom/vungle/publisher/ne;->a:Lcom/vungle/publisher/ra;

    iget-wide v4, v4, Lcom/vungle/publisher/ra;->f:J

    .line 45
    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/vungle/publisher/ne;->e:Lcom/vungle/publisher/cz;

    new-instance v1, Lcom/vungle/publisher/ne$1;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/ne$1;-><init>(Lcom/vungle/publisher/ne;)V

    sget-object v2, Lcom/vungle/publisher/cz$b;->s:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    .line 56
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "VungleData"

    const-string v1, "throttled fingerprint request"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    iget-object v1, p0, Lcom/vungle/publisher/ne;->f:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleData"

    const-string v3, "exception while throttling app fingerprint"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 51
    :cond_1
    :try_start_1
    const-string v0, "VungleData"

    const-string v1, "app fingerprinting not allowed by server"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
