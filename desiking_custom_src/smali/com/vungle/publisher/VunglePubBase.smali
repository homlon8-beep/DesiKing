.class public abstract Lcom/vungle/publisher/VunglePubBase;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field public static final VERSION:Ljava/lang/String; = "VungleDroid/4.0.2"


# instance fields
.field a:Lcom/vungle/publisher/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/InitializationEventListener;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/rx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/dl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/Demographic;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected f:Lcom/vungle/publisher/qs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/AdConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/v;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/ra;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/rd;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/qu;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lcom/vungle/publisher/ny$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private o:Z

.field private p:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/vungle/publisher/VunglePubBase;->o:Z

    .line 173
    if-nez v0, :cond_0

    .line 174
    const-string v1, "Vungle"

    const-string v2, "VunglePub not injected"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    return v0
.end method

.method private a(ZLjava/lang/String;)Z
    .locals 4

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/vungle/publisher/VunglePubBase;->p:Z

    .line 161
    if-eqz v0, :cond_1

    .line 162
    const-string v1, "Vungle"

    const-string v2, "VunglePub was initialized"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    if-eqz p1, :cond_0

    .line 165
    const-string v1, "Vungle"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Please call VunglePub.init() before "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public varargs addEventListeners([Lcom/vungle/publisher/EventListener;)V
    .locals 3
    .param p1, "eventListeners"    # [Lcom/vungle/publisher/EventListener;

    .prologue
    .line 206
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->j:Lcom/vungle/publisher/ra;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ra;->a([Lcom/vungle/publisher/EventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const-string v1, "Vungle"

    const-string v2, "error adding event listeners"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clearEventListeners()V
    .locals 3

    .prologue
    .line 226
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->j:Lcom/vungle/publisher/ra;

    invoke-virtual {v0}, Lcom/vungle/publisher/ra;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string v1, "Vungle"

    const-string v2, "error clearing event listeners"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getDemographic()Lcom/vungle/publisher/Demographic;
    .locals 3

    .prologue
    .line 197
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->e:Lcom/vungle/publisher/Demographic;

    return-object v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string v1, "Vungle"

    const-string v2, "error getting demographic info"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getGlobalAdConfig()Lcom/vungle/publisher/AdConfig;
    .locals 3

    .prologue
    .line 246
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->h:Lcom/vungle/publisher/AdConfig;

    return-object v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    const-string v1, "Vungle"

    const-string v2, "error getting globalAdConfig"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getMissingPermissions()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/vungle/publisher/VunglePubBase;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/vungle/publisher/VunglePubBase;->f:Lcom/vungle/publisher/qs;

    invoke-static {v1, v2}, Lcom/vungle/publisher/ahd;->b(Landroid/content/Context;Lcom/vungle/publisher/qs;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    const-string v2, "Vungle"

    const-string v3, "error getting missing permissions"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vungleAppId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 91
    iget-boolean v1, p0, Lcom/vungle/publisher/VunglePubBase;->p:Z

    .line 93
    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    const-string v0, "Vungle"

    const-string v2, "already initialized"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 113
    :goto_0
    return v0

    .line 96
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt v4, v0, :cond_1

    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    const-string v5, "VungleDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Device Android API level "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v0, :cond_d

    .line 97
    iget-boolean v0, p0, Lcom/vungle/publisher/VunglePubBase;->o:Z

    if-eqz v0, :cond_3

    const-string v0, "Vungle"

    const-string v4, "already injected"

    invoke-static {v0, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_3
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->m:Landroid/content/Context;

    iget-object v4, p0, Lcom/vungle/publisher/VunglePubBase;->f:Lcom/vungle/publisher/qs;

    invoke-static {v0, v4}, Lcom/vungle/publisher/ahd;->b(Landroid/content/Context;Lcom/vungle/publisher/qs;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_b

    move v0, v2

    :goto_4
    if-eqz v0, :cond_c

    .line 99
    const-string v0, "Vungle"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VungleDroid/4.0.2 init("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->c:Lcom/vungle/publisher/rx;

    const-string v3, "VungleFile"

    const-string v4, "deleting old ad temp directory"

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vungle/publisher/rx;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/rx;->a(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->b:Lcom/vungle/publisher/InitializationEventListener;

    invoke-virtual {v0}, Lcom/vungle/publisher/InitializationEventListener;->register()V

    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->d:Lcom/vungle/publisher/dl;

    iget-object v3, v0, Lcom/vungle/publisher/dl;->d:Lcom/vungle/publisher/cz;

    new-instance v4, Lcom/vungle/publisher/dl$1;

    invoke-direct {v4, v0}, Lcom/vungle/publisher/dl$1;-><init>(Lcom/vungle/publisher/dl;)V

    sget-object v0, Lcom/vungle/publisher/cz$b;->b:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v3, v4, v0}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->f:Lcom/vungle/publisher/qs;

    invoke-interface {v0}, Lcom/vungle/publisher/qs;->q()V

    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->n:Lcom/vungle/publisher/ny$a;

    iget-object v3, p0, Lcom/vungle/publisher/VunglePubBase;->m:Landroid/content/Context;

    iget-object v4, v0, Lcom/vungle/publisher/ny$a;->c:Lcom/vungle/publisher/dc;

    new-instance v5, Lcom/vungle/publisher/ny$a$1;

    invoke-direct {v5, v0, v3}, Lcom/vungle/publisher/ny$a$1;-><init>(Lcom/vungle/publisher/ny$a;Landroid/content/Context;)V

    iget-object v0, v4, Lcom/vungle/publisher/dc;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    const-string v0, "Vungle"

    const-string v3, "initialization successful"

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/VunglePubBase;->p:Z

    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v3

    .line 96
    goto/16 :goto_1

    :cond_2
    const-string v5, "VungleDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Device Android API level "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " does not meet required minimum 11"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v2, "Vungle"

    const-string v3, "VunglePub initialization failed"

    invoke-static {v2, v3, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto/16 :goto_0

    .line 97
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    :try_start_2
    iget-boolean v0, v4, Lcom/vungle/publisher/inject/Injector;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "VungleInject"

    const-string v4, "already initialized"

    invoke-static {v0, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    :try_start_3
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->b()Lcom/vungle/publisher/tg;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vungle/publisher/tg;->a(Lcom/vungle/publisher/VunglePubBase;)V

    const-string v0, "Vungle"

    const-string v4, "injection successful"

    invoke-static {v0, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/VunglePubBase;->o:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :cond_4
    :try_start_4
    const-string v0, "VungleInject"

    const-string v5, "initializing"

    invoke-static {v0, v5}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/vungle/publisher/inject/Injector;->a()Lcom/vungle/publisher/sh;

    move-result-object v0

    iget-boolean v5, v0, Lcom/vungle/publisher/sh;->h:Z

    if-eqz v5, :cond_a

    const-string v0, "VungleInject"

    const-string v5, "publisher module already initialized"

    invoke-static {v0, v5}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-static {}, Lcom/vungle/publisher/ta;->a()Lcom/vungle/publisher/ta$a;

    move-result-object v5

    invoke-virtual {v4}, Lcom/vungle/publisher/inject/Injector;->a()Lcom/vungle/publisher/sh;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/sh;

    iput-object v0, v5, Lcom/vungle/publisher/ta$a;->a:Lcom/vungle/publisher/sh;

    iget-object v0, v4, Lcom/vungle/publisher/inject/Injector;->b:Lcom/vungle/publisher/inject/EndpointModule;

    if-nez v0, :cond_5

    new-instance v0, Lcom/vungle/publisher/inject/EndpointModule;

    invoke-direct {v0}, Lcom/vungle/publisher/inject/EndpointModule;-><init>()V

    iput-object v0, v4, Lcom/vungle/publisher/inject/Injector;->b:Lcom/vungle/publisher/inject/EndpointModule;

    :cond_5
    iget-object v0, v4, Lcom/vungle/publisher/inject/Injector;->b:Lcom/vungle/publisher/inject/EndpointModule;

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/inject/EndpointModule;

    iput-object v0, v5, Lcom/vungle/publisher/ta$a;->b:Lcom/vungle/publisher/inject/EndpointModule;

    iget-object v0, v4, Lcom/vungle/publisher/inject/Injector;->c:Lcom/vungle/publisher/td;

    if-nez v0, :cond_6

    new-instance v0, Lcom/vungle/publisher/td;

    invoke-direct {v0}, Lcom/vungle/publisher/td;-><init>()V

    iput-object v0, v4, Lcom/vungle/publisher/inject/Injector;->c:Lcom/vungle/publisher/td;

    :cond_6
    iget-object v0, v4, Lcom/vungle/publisher/inject/Injector;->c:Lcom/vungle/publisher/td;

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/td;

    iput-object v0, v5, Lcom/vungle/publisher/ta$a;->c:Lcom/vungle/publisher/td;

    iget-object v0, v5, Lcom/vungle/publisher/ta$a;->a:Lcom/vungle/publisher/sh;

    if-nez v0, :cond_7

    new-instance v0, Lcom/vungle/publisher/sh;

    invoke-direct {v0}, Lcom/vungle/publisher/sh;-><init>()V

    iput-object v0, v5, Lcom/vungle/publisher/ta$a;->a:Lcom/vungle/publisher/sh;

    :cond_7
    iget-object v0, v5, Lcom/vungle/publisher/ta$a;->b:Lcom/vungle/publisher/inject/EndpointModule;

    if-nez v0, :cond_8

    new-instance v0, Lcom/vungle/publisher/inject/EndpointModule;

    invoke-direct {v0}, Lcom/vungle/publisher/inject/EndpointModule;-><init>()V

    iput-object v0, v5, Lcom/vungle/publisher/ta$a;->b:Lcom/vungle/publisher/inject/EndpointModule;

    :cond_8
    iget-object v0, v5, Lcom/vungle/publisher/ta$a;->c:Lcom/vungle/publisher/td;

    if-nez v0, :cond_9

    new-instance v0, Lcom/vungle/publisher/td;

    invoke-direct {v0}, Lcom/vungle/publisher/td;-><init>()V

    iput-object v0, v5, Lcom/vungle/publisher/ta$a;->c:Lcom/vungle/publisher/td;

    :cond_9
    new-instance v0, Lcom/vungle/publisher/ta;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Lcom/vungle/publisher/ta;-><init>(Lcom/vungle/publisher/ta$a;B)V

    iput-object v0, v4, Lcom/vungle/publisher/inject/Injector;->d:Lcom/vungle/publisher/tg;

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/vungle/publisher/inject/Injector;->a:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v0

    :try_start_5
    const-string v4, "VungleInject"

    const-string v5, "error initializing injector"

    invoke-static {v4, v5, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_5

    :cond_a
    :try_start_6
    const-string v5, "VungleInject"

    const-string v6, "initializing publisher module"

    invoke-static {v5, v6}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, v0, Lcom/vungle/publisher/sh;->a:Landroid/content/Context;

    iput-object p2, v0, Lcom/vungle/publisher/sh;->b:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/vungle/publisher/sh;->h:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_6

    :cond_b
    move v0, v3

    .line 98
    goto/16 :goto_4

    .line 106
    :cond_c
    :try_start_7
    const-string v0, "Vungle"

    const-string v2, "initialization failed"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_d
    move v0, v1

    .line 112
    goto/16 :goto_0
.end method

.method public isAdPlayable()Z
    .locals 4

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 276
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "isAdPlayable()"

    invoke-direct {p0, v1, v2}, Lcom/vungle/publisher/VunglePubBase;->a(ZLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/vungle/publisher/VunglePubBase;->a:Lcom/vungle/publisher/b;

    invoke-virtual {v1}, Lcom/vungle/publisher/b;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 279
    :catch_0
    move-exception v1

    .line 280
    const-string v2, "Vungle"

    const-string v3, "error returning ad playable"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 265
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "onPause()"

    invoke-direct {p0, v0, v1}, Lcom/vungle/publisher/VunglePubBase;->a(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->k:Lcom/vungle/publisher/rd;

    const-string v1, "VungleAd"

    const-string v2, "onDeveloperActivityPause()"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/rd;->a()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string v1, "Vungle"

    const-string v2, "error onPause()"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 255
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "onResume()"

    invoke-direct {p0, v0, v1}, Lcom/vungle/publisher/VunglePubBase;->a(ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->k:Lcom/vungle/publisher/rd;

    const-string v1, "VungleAd"

    const-string v2, "onDeveloperActivityResume()"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rd;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    const-string v1, "Vungle"

    const-string v2, "error onResume()"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public playAd()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/VunglePubBase;->playAd(Lcom/vungle/publisher/AdConfig;)V

    .line 287
    return-void
.end method

.method public playAd(Lcom/vungle/publisher/AdConfig;)V
    .locals 9
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 290
    :try_start_0
    const-string v2, "VungleAd"

    const-string v3, "VunglePub.playAd()"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v2, 0x1

    const-string v3, "playAd()"

    invoke-direct {p0, v2, v3}, Lcom/vungle/publisher/VunglePubBase;->a(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vungle/publisher/VunglePubBase;->l:Lcom/vungle/publisher/qu;

    invoke-virtual {v2}, Lcom/vungle/publisher/qu;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/vungle/publisher/qu;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/vungle/publisher/qu;->register()V

    :cond_0
    :goto_1
    if-eqz v0, :cond_6

    .line 294
    iget-object v3, p0, Lcom/vungle/publisher/VunglePubBase;->a:Lcom/vungle/publisher/b;

    const/4 v0, 0x2

    new-array v4, v0, [Lcom/vungle/publisher/AdConfig;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/vungle/publisher/VunglePubBase;->h:Lcom/vungle/publisher/AdConfig;

    aput-object v2, v4, v0

    const/4 v0, 0x1

    aput-object p1, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Lcom/vungle/publisher/s;

    move v2, v1

    :goto_2
    if-ge v2, v8, :cond_5

    aget-object v6, v4, v2

    if-eqz v6, :cond_7

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v6}, Lcom/vungle/publisher/AdConfig;->getDelegateAdConfig()Lcom/vungle/publisher/s;

    move-result-object v6

    aput-object v6, v5, v1

    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 293
    :cond_1
    const-string v0, "VungleAd"

    const-string v3, "ad already playing"

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/vungle/publisher/qu;->eventBus:Lcom/vungle/publisher/rq;

    new-instance v3, Lcom/vungle/publisher/bv;

    invoke-direct {v3}, Lcom/vungle/publisher/bv;-><init>()V

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, v2, Lcom/vungle/publisher/qu;->eventBus:Lcom/vungle/publisher/rq;

    new-instance v3, Lcom/vungle/publisher/bz;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/vungle/publisher/qu;->b()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v2}, Lcom/vungle/publisher/qu;->c()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/vungle/publisher/bz;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/vungle/publisher/VunglePubBase;->o:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->g:Lcom/vungle/publisher/rq;

    new-instance v2, Lcom/vungle/publisher/by;

    invoke-direct {v2}, Lcom/vungle/publisher/by;-><init>()V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    :cond_4
    move v0, v1

    goto :goto_1

    .line 294
    :cond_5
    new-instance v0, Lcom/vungle/publisher/u;

    invoke-direct {v0, v5}, Lcom/vungle/publisher/u;-><init>([Lcom/vungle/publisher/s;)V

    iget-object v1, v3, Lcom/vungle/publisher/b;->g:Lcom/vungle/publisher/cz;

    new-instance v2, Lcom/vungle/publisher/b$1;

    invoke-direct {v2, v3, v0}, Lcom/vungle/publisher/b$1;-><init>(Lcom/vungle/publisher/b;Lcom/vungle/publisher/u;)V

    sget-object v0, Lcom/vungle/publisher/cz$b;->p:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v1, v2, v0}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_6
    :goto_4
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    const-string v1, "VungleAd"

    const-string v2, "error playing ad"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    iget-boolean v0, p0, Lcom/vungle/publisher/VunglePubBase;->o:Z

    if-eqz v0, :cond_6

    .line 299
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->g:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/bx;

    invoke-direct {v1}, Lcom/vungle/publisher/bx;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public varargs removeEventListeners([Lcom/vungle/publisher/EventListener;)V
    .locals 9
    .param p1, "eventListeners"    # [Lcom/vungle/publisher/EventListener;

    .prologue
    const/4 v2, 0x0

    .line 236
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iget-object v4, p0, Lcom/vungle/publisher/VunglePubBase;->j:Lcom/vungle/publisher/ra;

    if-eqz p1, :cond_2

    array-length v5, p1

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, p1, v3

    iget-object v0, v4, Lcom/vungle/publisher/ra;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/rs;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_1

    const-string v1, "VungleConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "removing event listener "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/vungle/publisher/rs;->unregister()V

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    const-string v0, "VungleConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "event listener not found for remove "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string v1, "Vungle"

    const-string v2, "error removing event listeners"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :cond_2
    return-void
.end method

.method public varargs setEventListeners([Lcom/vungle/publisher/EventListener;)V
    .locals 3
    .param p1, "eventListeners"    # [Lcom/vungle/publisher/EventListener;

    .prologue
    .line 216
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase;->j:Lcom/vungle/publisher/ra;

    invoke-virtual {v0}, Lcom/vungle/publisher/ra;->a()V

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ra;->a([Lcom/vungle/publisher/EventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string v1, "Vungle"

    const-string v2, "error setting event listeners"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
