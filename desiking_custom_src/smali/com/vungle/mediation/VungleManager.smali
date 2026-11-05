.class Lcom/vungle/mediation/VungleManager;
.super Ljava/lang/Object;
.source "VungleManager.java"

# interfaces
.implements Lcom/vungle/publisher/EventListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VERSION:Ljava/lang/String; = "2.1.0"

.field private static instance:Lcom/vungle/mediation/VungleManager;


# instance fields
.field private currentPlayId:Ljava/lang/String;

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vungle/mediation/VungleListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVunglePub:Lcom/vungle/publisher/VunglePub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/vungle/mediation/VungleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/mediation/VungleManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vungle/mediation/VungleManager;->currentPlayId:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vungle/mediation/VungleManager;->listeners:Ljava/util/Map;

    .line 38
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;

    move-result-object v0

    .line 39
    .local v0, "injector":Lcom/vungle/publisher/inject/Injector;
    sget-object v1, Lcom/vungle/publisher/env/WrapperFramework;->admob:Lcom/vungle/publisher/env/WrapperFramework;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/inject/Injector;->setWrapperFramework(Lcom/vungle/publisher/env/WrapperFramework;)V

    .line 40
    const-string v1, "2.1.0"

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/inject/Injector;->setWrapperFrameworkVersion(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/mediation/VungleManager;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    .line 43
    iget-object v1, p0, Lcom/vungle/mediation/VungleManager;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v1, p2, p1}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;)Z

    .line 44
    iget-object v1, p0, Lcom/vungle/mediation/VungleManager;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/vungle/publisher/EventListener;

    aput-object p0, v2, v4

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/VunglePub;->setEventListeners([Lcom/vungle/publisher/EventListener;)V

    .line 45
    iget-object v1, p0, Lcom/vungle/mediation/VungleManager;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v1}, Lcom/vungle/publisher/VunglePub;->getGlobalAdConfig()Lcom/vungle/publisher/AdConfig;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/vungle/publisher/AdConfig;->setTransitionAnimationEnabled(Z)V

    .line 46
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/vungle/mediation/VungleManager;
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v0, Lcom/vungle/mediation/VungleManager;->instance:Lcom/vungle/mediation/VungleManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/vungle/mediation/VungleManager;

    invoke-direct {v0, p0, p1}, Lcom/vungle/mediation/VungleManager;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/vungle/mediation/VungleManager;->instance:Lcom/vungle/mediation/VungleManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/vungle/mediation/VungleManager;->instance:Lcom/vungle/mediation/VungleManager;

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/String;Lcom/vungle/mediation/VungleListener;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/vungle/mediation/VungleListener;

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/vungle/mediation/VungleManager;->removeListener(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/vungle/mediation/VungleManager;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public isAdPlayable()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vungle/mediation/VungleManager;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v0

    return v0
.end method

.method public onAdEnd(ZZ)V
    .locals 5
    .param p1, "wasSuccessfulView"    # Z
    .param p2, "wasCallToActionClicked"    # Z

    .prologue
    .line 78
    iget-object v2, p0, Lcom/vungle/mediation/VungleManager;->listeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vungle/mediation/VungleListener;>;"
    :try_start_0
    iget-object v2, p0, Lcom/vungle/mediation/VungleManager;->currentPlayId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vungle/mediation/VungleManager;->currentPlayId:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/mediation/VungleListener;

    invoke-virtual {v2, p1, p2}, Lcom/vungle/mediation/VungleListener;->onAdEnd(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/vungle/mediation/VungleManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vungle/mediation/VungleListener;>;"
    :cond_2
    return-void
.end method

.method public onAdPlayableChanged(Z)V
    .locals 4
    .param p1, "b"    # Z

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 119
    :cond_0
    return-void

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/vungle/mediation/VungleManager;->listeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vungle/mediation/VungleListener;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/mediation/VungleListener;

    invoke-virtual {v2}, Lcom/vungle/mediation/VungleListener;->isWaitingForAd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/mediation/VungleListener;

    invoke-virtual {v2}, Lcom/vungle/mediation/VungleListener;->onAdAvailable()V

    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/mediation/VungleListener;

    invoke-virtual {v2}, Lcom/vungle/mediation/VungleListener;->clearWaitForAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/vungle/mediation/VungleManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onAdStart()V
    .locals 5

    .prologue
    .line 90
    iget-object v2, p0, Lcom/vungle/mediation/VungleManager;->listeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 92
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vungle/mediation/VungleListener;>;"
    :try_start_0
    iget-object v2, p0, Lcom/vungle/mediation/VungleManager;->currentPlayId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vungle/mediation/VungleManager;->currentPlayId:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/mediation/VungleListener;

    invoke-virtual {v2}, Lcom/vungle/mediation/VungleListener;->onAdStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/vungle/mediation/VungleManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vungle/mediation/VungleListener;>;"
    :cond_2
    return-void
.end method

.method public onAdUnavailable(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 103
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vungle/mediation/VungleManager;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->onPause()V

    .line 66
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vungle/mediation/VungleManager;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->onResume()V

    .line 70
    return-void
.end method

.method public onVideoView(ZII)V
    .locals 0
    .param p1, "b"    # Z
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 124
    return-void
.end method

.method public playAd(Lcom/vungle/publisher/AdConfig;Ljava/lang/String;)V
    .locals 1
    .param p1, "cfg"    # Lcom/vungle/publisher/AdConfig;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p2, p0, Lcom/vungle/mediation/VungleManager;->currentPlayId:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/vungle/mediation/VungleManager;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/VunglePub;->playAd(Lcom/vungle/publisher/AdConfig;)V

    .line 62
    return-void
.end method

.method public removeListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vungle/mediation/VungleManager;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/vungle/mediation/VungleManager;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    return-void
.end method
