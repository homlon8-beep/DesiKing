.class public final Lcom/vungle/publisher/to;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/tn;


# instance fields
.field a:Z

.field b:Z

.field c:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Landroid/location/Location;

.field private final f:Lcom/vungle/publisher/tn;

.field private final g:Lcom/vungle/publisher/tn;


# direct methods
.method constructor <init>()V
    .locals 7
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/vungle/publisher/to;->a:Z

    .line 27
    iput-boolean v1, p0, Lcom/vungle/publisher/to;->b:Z

    .line 28
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/vungle/publisher/to;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->b()Lcom/vungle/publisher/tg;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/vungle/publisher/tg;->a(Lcom/vungle/publisher/to;)V

    .line 46
    :try_start_0
    new-instance v2, Lcom/vungle/publisher/tr;

    iget-object v1, p0, Lcom/vungle/publisher/to;->c:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/vungle/publisher/tr;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 51
    :goto_0
    :try_start_1
    new-instance v1, Lcom/vungle/publisher/ts;

    iget-object v3, p0, Lcom/vungle/publisher/to;->c:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/vungle/publisher/ts;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-object v0, v1

    move-object v1, v2

    .line 58
    :goto_1
    iput-object v1, p0, Lcom/vungle/publisher/to;->f:Lcom/vungle/publisher/tn;

    .line 59
    iput-object v0, p0, Lcom/vungle/publisher/to;->g:Lcom/vungle/publisher/tn;

    .line 60
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    :try_start_2
    const-string v2, "VungleLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GoogleLocationClientDetailedLocationProvider not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v0

    goto :goto_0

    .line 52
    :catch_1
    move-exception v1

    .line 53
    :try_start_3
    const-string v3, "VungleLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GoogleLocationServicesDetailedLocationProvider not found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v2

    .line 57
    goto :goto_1

    .line 55
    :catch_2
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    .line 56
    :goto_2
    const-string v3, "VungleLocation"

    const-string v4, "error initializing detailed location providers "

    invoke-static {v3, v4, v2}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 55
    :catch_3
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_2
.end method


# virtual methods
.method public final b()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/to;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const/4 v1, 0x0

    .line 67
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/publisher/to;->b:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/vungle/publisher/to;->g:Lcom/vungle/publisher/tn;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    :try_start_1
    invoke-interface {v1}, Lcom/vungle/publisher/tn;->b()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/to;->e:Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 80
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/vungle/publisher/to;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vungle/publisher/to;->e:Landroid/location/Location;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v0, :cond_1

    .line 82
    :try_start_3
    iget-object v1, p0, Lcom/vungle/publisher/to;->f:Lcom/vungle/publisher/tn;

    .line 83
    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v1}, Lcom/vungle/publisher/tn;->b()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/to;->e:Landroid/location/Location;
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 97
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/vungle/publisher/to;->e:Landroid/location/Location;

    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    :try_start_4
    const-string v2, "VungleLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "permanent error obtaining detailed location "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/to;->b:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .line 94
    const-string v2, "VungleLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error obtaining detailed location "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 76
    :catch_2
    move-exception v0

    .line 77
    :try_start_5
    const-string v2, "VungleLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error obtaining detailed location "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :catch_3
    move-exception v0

    .line 87
    const-string v2, "VungleLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "permanent error obtaining detailed location "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/to;->a:Z

    goto :goto_1

    .line 89
    :catch_4
    move-exception v0

    .line 90
    const-string v2, "VungleLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error obtaining detailed location "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method
