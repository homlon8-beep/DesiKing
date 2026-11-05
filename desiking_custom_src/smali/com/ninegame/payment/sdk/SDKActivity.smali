.class public Lcom/ninegame/payment/sdk/SDKActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/ninegame/payment/face/IActivityControl;


# static fields
.field private static final a:Ljava/lang/String; = "SdkActivity"


# instance fields
.field private b:Lcom/ninegame/payment/face/listener/CallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ninegame/payment/face/listener/CallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    const-string v0, "SdkActivity"

    const-string v1, "==finish=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ninegame/payment/face/listener/CallbackListener;->callback(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "SdkActivity"

    const-string v1, "==onActivityResult=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "requestCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "resultCode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    const/16 v2, 0xd

    invoke-interface {v1, v2, v0}, Lcom/ninegame/payment/face/listener/CallbackListener;->callback(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const-string v0, "SdkActivity"

    const-string v1, "==onBackPressed=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ninegame/payment/face/listener/CallbackListener;->callback(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "SdkActivity"

    const-string v1, "==onConfigurtionChanged=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "configuratin"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    const/16 v2, 0xc

    invoke-interface {v1, v2, v0}, Lcom/ninegame/payment/face/listener/CallbackListener;->callback(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v1, 0x400

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ninegame/payment/sdk/SDKActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/ninegame/payment/sdk/SDKActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/ninegame/payment/sdk/SDKActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/ninegame/payment/sdk/SDKActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/ninegame/payment/sdk/SDKActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a()Lcom/ninegame/payment/sdk/dex/DexLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a(Ljava/lang/String;)Lcom/ninegame/payment/face/IDispatcher;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/ninegame/payment/face/Commands;->ActivityCallback:Lcom/ninegame/payment/face/Commands;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p0, v3}, Lcom/ninegame/payment/face/IDispatcher;->invoke(Lcom/ninegame/payment/face/Commands;Landroid/os/Bundle;Landroid/app/Activity;Lcom/ninegame/payment/sdk/SDKCallbackListener;)Landroid/os/Bundle;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ninegame/payment/sdk/SDKActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ninegame/payment/sdk/SDKActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SdkActivity"

    const-string v1, "==onDestroy=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/ninegame/payment/face/listener/CallbackListener;->callback(ILjava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "SdkActivity"

    const-string v1, "==onKeyDown=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "keyCode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "keyEvent"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    const/16 v2, 0xb

    invoke-interface {v1, v2, v0}, Lcom/ninegame/payment/face/listener/CallbackListener;->callback(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 3

    const-string v0, "SdkActivity"

    const-string v1, "==onLowMemory=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ninegame/payment/face/listener/CallbackListener;->callback(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SdkActivity"

    const-string v1, "==onNewIntent=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "intent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lcom/ninegame/payment/face/listener/CallbackListener;->callback(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "SdkActivity"

    const-string v1, "==onPause=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ninegame/payment/face/listener/CallbackListener;->callback(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SdkActivity"

    const-string v1, "==onRestoreInstanceState=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lcom/ninegame/payment/face/listener/CallbackListener;->callback(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    const-string v0, "SdkActivity"

    const-string v1, "==onResume=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ninegame/payment/face/listener/CallbackListener;->callback(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SdkActivity"

    const-string v1, "==onSaveInstanceState=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/ninegame/payment/face/listener/CallbackListener;->callback(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    const-string v0, "SdkActivity"

    const-string v1, "==onStart=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ninegame/payment/face/listener/CallbackListener;->callback(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    const-string v0, "SdkActivity"

    const-string v1, "==onStop=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ninegame/payment/face/listener/CallbackListener;->callback(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setListener(Lcom/ninegame/payment/face/listener/CallbackListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ninegame/payment/face/listener/CallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ninegame/payment/sdk/SDKActivity;->b:Lcom/ninegame/payment/face/listener/CallbackListener;

    return-void
.end method
