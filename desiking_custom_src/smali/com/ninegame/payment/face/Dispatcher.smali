.class public abstract Lcom/ninegame/payment/face/Dispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ninegame/payment/face/IDispatcher;


# instance fields
.field protected context:Landroid/content/Context;

.field protected dispatcherMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/ninegame/payment/face/Commands;",
            "Lcom/ninegame/payment/face/IDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field protected listener:Lcom/ninegame/payment/face/listener/CallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ninegame/payment/face/listener/CallbackListener",
            "<",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ninegame/payment/face/Dispatcher;->listener:Lcom/ninegame/payment/face/listener/CallbackListener;

    iput-object v0, p0, Lcom/ninegame/payment/face/Dispatcher;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/ninegame/payment/face/Dispatcher;->dispatcherMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getCallbackListener()Lcom/ninegame/payment/face/listener/CallbackListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ninegame/payment/face/listener/CallbackListener",
            "<",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ninegame/payment/face/Dispatcher;->listener:Lcom/ninegame/payment/face/listener/CallbackListener;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ninegame/payment/face/Dispatcher;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDispatcher(Lcom/ninegame/payment/face/Commands;)Lcom/ninegame/payment/face/IDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/ninegame/payment/face/Dispatcher;->dispatcherMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/face/Dispatcher;->dispatcherMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/face/Dispatcher;->dispatcherMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ninegame/payment/face/IDispatcher;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract invoke(Lcom/ninegame/payment/face/Commands;Landroid/os/Bundle;Landroid/app/Activity;Lcom/ninegame/payment/sdk/SDKCallbackListener;)Landroid/os/Bundle;
.end method

.method public register(Landroid/content/Context;Ljava/lang/String;Lcom/ninegame/payment/face/listener/CallbackListener;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/ninegame/payment/face/listener/CallbackListener",
            "<",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/ninegame/payment/face/Commands;",
            "Lcom/ninegame/payment/face/IDispatcher;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ninegame/payment/face/Dispatcher;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/ninegame/payment/face/Dispatcher;->listener:Lcom/ninegame/payment/face/listener/CallbackListener;

    iput-object p4, p0, Lcom/ninegame/payment/face/Dispatcher;->dispatcherMap:Ljava/util/HashMap;

    return-void
.end method
