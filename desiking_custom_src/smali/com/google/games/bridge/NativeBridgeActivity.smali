.class public final Lcom/google/games/bridge/NativeBridgeActivity;
.super Landroid/app/Activity;
.source "NativeBridgeActivity.java"


# static fields
.field private static final BG_COLOR:I = 0x40ffffff

.field private static final BRIDGED_INTENT:Ljava/lang/String; = "BRIDGED_INTENT"

.field private static final GPG_RESPONSE_CODE:I = 0x475047

.field private static final TAG:Ljava/lang/String; = "NativeBridgeActivity"


# instance fields
.field private pendingResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "gpg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private native forwardActivityResult(IILandroid/content/Intent;)V
.end method

.method public static launchBridgeIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 4
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    const-string v1, "NativeBridgeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching bridge activity: parent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/games/bridge/NativeBridgeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, "bridgeIntent":Landroid/content/Intent;
    const-string v1, "BRIDGED_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 91
    const v0, 0x475047

    if-ne p1, v0, :cond_0

    .line 92
    const-string v0, "NativeBridgeActivity"

    const-string v1, "Forwarding activity result to native SDK."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/google/games/bridge/NativeBridgeActivity;->forwardActivityResult(IILandroid/content/Intent;)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    .line 101
    :goto_0
    invoke-virtual {p0}, Lcom/google/games/bridge/NativeBridgeActivity;->finish()V

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    return-void

    .line 98
    :cond_0
    const-string v0, "NativeBridgeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult for unknown request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " calling finish()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "v":Landroid/view/View;
    const v1, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/google/games/bridge/NativeBridgeActivity;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-boolean v0, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "NativeBridgeActivity"

    const-string v1, "onDestroy called with pendingResult == true.  forwarding canceled result"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const v0, 0x475047

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/google/games/bridge/NativeBridgeActivity;->forwardActivityResult(IILandroid/content/Intent;)V

    .line 152
    iput-boolean v2, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    .line 155
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 156
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/games/bridge/NativeBridgeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "BRIDGED_INTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 61
    .local v0, "bridgedIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 62
    const v1, 0x475047

    invoke-virtual {p0, v0, v1}, Lcom/google/games/bridge/NativeBridgeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 65
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 80
    const v0, 0x475047

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    .line 81
    iget-boolean v0, p0, Lcom/google/games/bridge/NativeBridgeActivity;->pendingResult:Z

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "NativeBridgeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting GPG activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 87
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :cond_1
    const-string v0, "NativeBridgeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting non-GPG activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
