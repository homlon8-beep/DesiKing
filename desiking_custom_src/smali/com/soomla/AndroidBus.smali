.class public Lcom/soomla/AndroidBus;
.super Lcom/squareup/otto/Bus;
.source "AndroidBus.java"


# instance fields
.field private final mainThread:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/squareup/otto/Bus;-><init>()V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/soomla/AndroidBus;->mainThread:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 38
    invoke-super {p0, p1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 47
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/soomla/AndroidBus;->mainThread:Landroid/os/Handler;

    new-instance v1, Lcom/soomla/AndroidBus$1;

    invoke-direct {v1, p0, p1}, Lcom/soomla/AndroidBus$1;-><init>(Lcom/soomla/AndroidBus;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public register(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 57
    invoke-super {p0, p1}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 66
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/soomla/AndroidBus;->mainThread:Landroid/os/Handler;

    new-instance v1, Lcom/soomla/AndroidBus$2;

    invoke-direct {v1, p0, p1}, Lcom/soomla/AndroidBus$2;-><init>(Lcom/soomla/AndroidBus;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 76
    invoke-super {p0, p1}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/soomla/AndroidBus;->mainThread:Landroid/os/Handler;

    new-instance v1, Lcom/soomla/AndroidBus$3;

    invoke-direct {v1, p0, p1}, Lcom/soomla/AndroidBus$3;-><init>(Lcom/soomla/AndroidBus;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
