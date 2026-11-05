.class public Lcom/androidnative/AndroidNativeProxy;
.super Landroid/app/Activity;
.source "AndroidNativeProxy.java"


# static fields
.field private static final BRIDGED_INTENT_KEY:Ljava/lang/String; = "BRIDGED_INTENT"

.field private static final BRIDGED_REQUEST_CODE_KEY:Ljava/lang/String; = "BRIDGED_REQUEST_CODE_KEY"

.field private static final CHOOSE_IMAGE_TASK:I = 0x1

.field private static final START_ACTIVITY_FOR_RESULT_TASK:I = 0x0

.field private static final TASK_ID:Ljava/lang/String; = "TASK_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private StartActivity()V
    .locals 5

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/androidnative/AndroidNativeProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "BRIDGED_REQUEST_CODE_KEY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 44
    .local v1, "requestCode":I
    invoke-virtual {p0}, Lcom/androidnative/AndroidNativeProxy;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "BRIDGED_INTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 46
    .local v0, "bridgedIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v1}, Lcom/androidnative/AndroidNativeProxy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 47
    return-void
.end method

.method public static startImageChooserProxy()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-class v2, Lcom/androidnative/AndroidNativeProxy;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "TASK_ID"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public static startProxyForResult(Landroid/content/Intent;I)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "requestCode"    # I

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-class v2, Lcom/androidnative/AndroidNativeProxy;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "TASK_ID"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v1, "BRIDGED_REQUEST_CODE_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v1, "BRIDGED_INTENT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method


# virtual methods
.method public GetImageFromGallery()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/androidnative/features/CameraAPI;->GetInstance()Lcom/androidnative/features/CameraAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/androidnative/features/CameraAPI;->StartImageChooser(Landroid/app/Activity;)V

    .line 112
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 52
    const-string v1, "AndroidNative"

    const-string v2, "AndroidNativeProxy::onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_0
    invoke-static {}, Lcom/androidnative/features/CameraAPI;->GetInstance()Lcom/androidnative/features/CameraAPI;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/androidnative/features/CameraAPI;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/androidnative/AndroidNativeProxy;->finish()V

    .line 65
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GooglePlaySupportActivity::onActivityResult Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    const-string v1, "AndroidNative"

    const-string v2, "AndroidNativeProxy::onNewIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_0
    invoke-static {}, Lcom/androidnative/features/social/twitter/ANTwitter;->GetInstance()Lcom/androidnative/features/social/twitter/ANTwitter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/androidnative/features/social/twitter/ANTwitter;->SetIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/androidnative/AndroidNativeProxy;->finish()V

    .line 81
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "AndroidNative"

    const-string v2, "onNewIntent has failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/androidnative/AndroidNativeProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TASK_ID"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 27
    .local v0, "taskID":I
    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 39
    return-void

    .line 29
    :pswitch_0
    invoke-direct {p0}, Lcom/androidnative/AndroidNativeProxy;->StartActivity()V

    goto :goto_0

    .line 32
    :pswitch_1
    invoke-virtual {p0}, Lcom/androidnative/AndroidNativeProxy;->GetImageFromGallery()V

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
