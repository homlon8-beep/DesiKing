.class public interface abstract Lcom/ninegame/payment/face/IDispatcher;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCallbackListener()Lcom/ninegame/payment/face/listener/CallbackListener;
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
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDispatcher(Lcom/ninegame/payment/face/Commands;)Lcom/ninegame/payment/face/IDispatcher;
.end method

.method public abstract invoke(Lcom/ninegame/payment/face/Commands;Landroid/os/Bundle;Landroid/app/Activity;Lcom/ninegame/payment/sdk/SDKCallbackListener;)Landroid/os/Bundle;
.end method

.method public abstract register(Landroid/content/Context;Ljava/lang/String;Lcom/ninegame/payment/face/listener/CallbackListener;Ljava/util/HashMap;)V
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
.end method
