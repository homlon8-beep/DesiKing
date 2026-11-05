.class public Lcom/ninegame/payment/service/SDKService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ninegame/payment/service/SDKService$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/ninegame/payment/service/SDKService$a;

    invoke-direct {v0, p0}, Lcom/ninegame/payment/service/SDKService$a;-><init>(Lcom/ninegame/payment/service/SDKService;)V

    iput-object v0, p0, Lcom/ninegame/payment/service/SDKService;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/ninegame/payment/service/SDKService;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a()Lcom/ninegame/payment/sdk/dex/DexLoader;

    move-result-object v0

    sget-object v1, Lcom/ninegame/payment/face/Commands;->StartService:Lcom/ninegame/payment/face/Commands;

    invoke-virtual {v0, v1}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a(Lcom/ninegame/payment/face/Commands;)Lcom/ninegame/payment/face/IDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ninegame/payment/face/Commands;->StartService:Lcom/ninegame/payment/face/Commands;

    invoke-interface {v0, v1, v2, v2, v2}, Lcom/ninegame/payment/face/IDispatcher;->invoke(Lcom/ninegame/payment/face/Commands;Landroid/os/Bundle;Landroid/app/Activity;Lcom/ninegame/payment/sdk/SDKCallbackListener;)Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    :try_start_0
    invoke-static {}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a()Lcom/ninegame/payment/sdk/dex/DexLoader;

    move-result-object v0

    sget-object v1, Lcom/ninegame/payment/face/Commands;->StopService:Lcom/ninegame/payment/face/Commands;

    invoke-virtual {v0, v1}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a(Lcom/ninegame/payment/face/Commands;)Lcom/ninegame/payment/face/IDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ninegame/payment/face/Commands;->StopService:Lcom/ninegame/payment/face/Commands;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ninegame/payment/face/IDispatcher;->invoke(Lcom/ninegame/payment/face/Commands;Landroid/os/Bundle;Landroid/app/Activity;Lcom/ninegame/payment/sdk/SDKCallbackListener;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
