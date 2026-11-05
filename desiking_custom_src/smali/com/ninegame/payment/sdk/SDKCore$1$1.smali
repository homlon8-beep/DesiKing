.class Lcom/ninegame/payment/sdk/SDKCore$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ninegame/payment/sdk/SDKCore$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ninegame/payment/sdk/SDKCore$1;


# direct methods
.method constructor <init>(Lcom/ninegame/payment/sdk/SDKCore$1;)V
    .locals 0

    iput-object p1, p0, Lcom/ninegame/payment/sdk/SDKCore$1$1;->a:Lcom/ninegame/payment/sdk/SDKCore$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ninegame/payment/sdk/SDKCore$1$1;->a:Lcom/ninegame/payment/sdk/SDKCore$1;

    iget-object v1, v1, Lcom/ninegame/payment/sdk/SDKCore$1;->a:Landroid/app/Activity;

    const-class v2, Lcom/ninegame/payment/service/SDKService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/ninegame/payment/sdk/SDKCore$1$1;->a:Lcom/ninegame/payment/sdk/SDKCore$1;

    iget-object v1, v1, Lcom/ninegame/payment/sdk/SDKCore$1;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a()Lcom/ninegame/payment/sdk/dex/DexLoader;

    move-result-object v0

    sget-object v1, Lcom/ninegame/payment/face/Commands;->InitSdk:Lcom/ninegame/payment/face/Commands;

    invoke-virtual {v0, v1}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a(Lcom/ninegame/payment/face/Commands;)Lcom/ninegame/payment/face/IDispatcher;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SDKCore"

    const-string v1, "dispatcher Is Null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/ninegame/payment/face/Commands;->InitSdk:Lcom/ninegame/payment/face/Commands;

    iget-object v2, p0, Lcom/ninegame/payment/sdk/SDKCore$1$1;->a:Lcom/ninegame/payment/sdk/SDKCore$1;

    iget-object v2, v2, Lcom/ninegame/payment/sdk/SDKCore$1;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/ninegame/payment/sdk/SDKCore$1$1;->a:Lcom/ninegame/payment/sdk/SDKCore$1;

    iget-object v3, v3, Lcom/ninegame/payment/sdk/SDKCore$1;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/ninegame/payment/sdk/SDKCore$1$1;->a:Lcom/ninegame/payment/sdk/SDKCore$1;

    iget-object v4, v4, Lcom/ninegame/payment/sdk/SDKCore$1;->c:Lcom/ninegame/payment/sdk/SDKCallbackListener;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ninegame/payment/face/IDispatcher;->invoke(Lcom/ninegame/payment/face/Commands;Landroid/os/Bundle;Landroid/app/Activity;Lcom/ninegame/payment/sdk/SDKCallbackListener;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v5, Lcom/ninegame/payment/sdk/SharedVars;->keyStroe:Ljava/lang/String;

    sput-object v5, Lcom/ninegame/payment/sdk/SharedVars;->vipapaSeed:Ljava/lang/String;

    iget-object v1, p0, Lcom/ninegame/payment/sdk/SDKCore$1$1;->a:Lcom/ninegame/payment/sdk/SDKCore$1;

    iget-object v1, v1, Lcom/ninegame/payment/sdk/SDKCore$1;->b:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    if-nez v0, :cond_0

    const-string v0, "SDKCore"

    const-string v1, "result Is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
