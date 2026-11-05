.class final Lcom/ninegame/payment/sdk/SDKCore$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ninegame/payment/sdk/SDKCore;->initSDK(Landroid/app/Activity;Landroid/content/Intent;Lcom/ninegame/payment/sdk/SDKCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/ninegame/payment/sdk/SDKCallbackListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/ninegame/payment/sdk/SDKCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ninegame/payment/sdk/SDKCore$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ninegame/payment/sdk/SDKCore$1;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/ninegame/payment/sdk/SDKCore$1;->c:Lcom/ninegame/payment/sdk/SDKCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a()Lcom/ninegame/payment/sdk/dex/DexLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ninegame/payment/sdk/SdkListener;->a()Lcom/ninegame/payment/sdk/SdkListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ninegame/payment/sdk/SDKCore$1;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ninegame/payment/sdk/SdkListener;->a(Landroid/content/Context;)Lcom/ninegame/payment/sdk/SdkListener;

    sget-object v0, Lcom/ninegame/payment/sdk/SharedVars;->globalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ninegame/payment/sdk/SDKCore$1$1;

    invoke-direct {v1, p0}, Lcom/ninegame/payment/sdk/SDKCore$1$1;-><init>(Lcom/ninegame/payment/sdk/SDKCore$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKCore$1;->c:Lcom/ninegame/payment/sdk/SDKCallbackListener;

    new-instance v1, Lcom/ninegame/payment/sdk/SDKError;

    const-string v2, "Load moudle occur error."

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/ninegame/payment/sdk/SDKError;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/ninegame/payment/sdk/SDKCallbackListener;->onErrorResponse(Lcom/ninegame/payment/sdk/SDKError;)V

    goto :goto_0
.end method
