.class public Lcom/androidnative/AN_Bridge;
.super Ljava/lang/Object;
.source "AN_Bridge.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AndroidNative"

.field public static final UNITY_EOF:Ljava/lang/String; = "endofline"

.field public static final UNITY_SPLITTER:Ljava/lang/String; = "|"

.field private static fos:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AuthificateUser()V
    .locals 6

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Lcom/androidnative/features/social/twitter/ANTwitter;->GetInstance()Lcom/androidnative/features/social/twitter/ANTwitter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidnative/features/social/twitter/ANTwitter;->AuthificateUser()Z

    move-result v0

    .line 128
    .local v0, "IsAuthed":Z
    if-nez v0, :cond_0

    .line 129
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/androidnative/AndroidNativeProxy;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "ex":Ljava/lang/NoClassDefFoundError;
    const-string v3, "AndroidNative"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NoClassDefFoundError AuthificateUser: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static GetImageFromCamera(Ljava/lang/String;)V
    .locals 4
    .param p0, "bSaveToGallery"    # Ljava/lang/String;

    .prologue
    .line 101
    :try_start_0
    invoke-static {}, Lcom/androidnative/features/CameraAPI;->GetInstance()Lcom/androidnative/features/CameraAPI;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/androidnative/features/CameraAPI;->GetImageFromCamera(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 106
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDefFoundError GetImageFromCamera: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static GetImageFromGallery()V
    .locals 4

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Lcom/androidnative/features/CameraAPI;->GetInstance()Lcom/androidnative/features/CameraAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidnative/features/CameraAPI;->GetImageFromGallery()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDefFoundError GetImageFromGallery: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static InitCameraAPI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "folderName"    # Ljava/lang/String;
    .param p1, "maxSize"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Lcom/androidnative/features/CameraAPI;->GetInstance()Lcom/androidnative/features/CameraAPI;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/androidnative/features/CameraAPI;->Init(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 78
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDefFoundError InitCameraAPI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static LoadPackageInfo()V
    .locals 0

    .prologue
    .line 217
    invoke-static {}, Lcom/androidnative/features/AppInfoLoader;->LoadPackageInfo()V

    .line 218
    return-void
.end method

.method public static LoadUserData()V
    .locals 4

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Lcom/androidnative/features/social/twitter/ANTwitter;->GetInstance()Lcom/androidnative/features/social/twitter/ANTwitter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidnative/features/social/twitter/ANTwitter;->LoadUserData()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    :goto_0
    return-void

    .line 142
    .end local v0    # "ex":Ljava/lang/NoClassDefFoundError;
    :catch_0
    move-exception v0

    .line 143
    .restart local v0    # "ex":Ljava/lang/NoClassDefFoundError;
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDefFoundError LoadUserData: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static LogoutFromTwitter()V
    .locals 4

    .prologue
    .line 178
    :try_start_0
    invoke-static {}, Lcom/androidnative/features/social/twitter/ANTwitter;->GetInstance()Lcom/androidnative/features/social/twitter/ANTwitter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidnative/features/social/twitter/ANTwitter;->logoutFromTwitter()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    :goto_0
    return-void

    .line 179
    .end local v0    # "ex":Ljava/lang/NoClassDefFoundError;
    :catch_0
    move-exception v0

    .line 180
    .restart local v0    # "ex":Ljava/lang/NoClassDefFoundError;
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDefFoundError LogoutFromTwitter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static OpenAppInStore(Ljava/lang/String;)V
    .locals 4
    .param p0, "appPackageName"    # Ljava/lang/String;

    .prologue
    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 245
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 247
    return-void
.end method

.method public static SaveToGalalry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "ImageData"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Lcom/androidnative/features/CameraAPI;->GetInstance()Lcom/androidnative/features/CameraAPI;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/androidnative/features/CameraAPI;->SaveToGalalry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 63
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDefFoundError SaveToGalalry: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static StartLockTask()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 224
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->startLockTask()V

    .line 226
    const-string v0, "AndroidNative"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lock Task Started for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetApplicationContex()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "AndroidNative"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This API is NOT supported for current SDK version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static StopLockTask()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 235
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->stopLockTask()V

    .line 237
    const-string v0, "AndroidNative"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lock Task Stoped for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetApplicationContex()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    const-string v0, "AndroidNative"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This API is NOT supported for current SDK version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static Test()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "AndroidNative"

    const-string v1, "Test called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public static TwitterInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "consumer_key"    # Ljava/lang/String;
    .param p1, "consumer_secret"    # Ljava/lang/String;

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Lcom/androidnative/features/social/twitter/ANTwitter;->GetInstance()Lcom/androidnative/features/social/twitter/ANTwitter;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/androidnative/features/social/twitter/ANTwitter;->Init(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDefFoundError TwitterInit: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static TwitterPost(Ljava/lang/String;)V
    .locals 4
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 150
    :try_start_0
    invoke-static {}, Lcom/androidnative/features/social/twitter/ANTwitter;->GetInstance()Lcom/androidnative/features/social/twitter/ANTwitter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/androidnative/features/social/twitter/ANTwitter;->Twitt(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDefFoundError ANTwitter.GetInstance().Twitt(status);: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static TwitterPostWithImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/androidnative/utils/Base64DecoderException;
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    const-string v3, "AndroidNative"

    const-string v4, "TwitterPostWithImage: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {p1}, Lcom/androidnative/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 164
    .local v0, "byteArray":[B
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "twitter_post_image"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .local v2, "tempFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v3, Lcom/androidnative/AN_Bridge;->fos:Ljava/io/FileOutputStream;

    .line 166
    sget-object v3, Lcom/androidnative/AN_Bridge;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 168
    invoke-static {}, Lcom/androidnative/features/social/twitter/ANTwitter;->GetInstance()Lcom/androidnative/features/social/twitter/ANTwitter;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/androidnative/features/social/twitter/ANTwitter;->Twitt(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0    # "byteArray":[B
    .end local v2    # "tempFile":Ljava/io/File;
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "ex":Ljava/lang/NoClassDefFoundError;
    const-string v3, "AndroidNative"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NoClassDefFoundError TwitterPostWithImage: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPackageInstalled(Ljava/lang/String;)V
    .locals 4
    .param p0, "packagename"    # Ljava/lang/String;

    .prologue
    .line 192
    :try_start_0
    invoke-static {}, Lcom/androidnative/features/common/AndroidNativeUtility;->GetInstance()Lcom/androidnative/features/common/AndroidNativeUtility;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/androidnative/features/common/AndroidNativeUtility;->isPackageInstalled(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

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

.method public static loadAddressBook()V
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/androidnative/features/common/AddressBookManager;->GetInstance()Lcom/androidnative/features/common/AddressBookManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnative/features/common/AddressBookManager;->load()V

    .line 214
    return-void
.end method

.method public static loadAndroidId()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/androidnative/features/common/AndroidNativeUtility;->GetInstance()Lcom/androidnative/features/common/AndroidNativeUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidnative/features/common/AndroidNativeUtility;->GetAndroidId()V

    .line 53
    return-void
.end method

.method public static runPackage(Ljava/lang/String;)V
    .locals 4
    .param p0, "packagename"    # Ljava/lang/String;

    .prologue
    .line 201
    :try_start_0
    invoke-static {}, Lcom/androidnative/features/common/AndroidNativeUtility;->GetInstance()Lcom/androidnative/features/common/AndroidNativeUtility;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/androidnative/features/common/AndroidNativeUtility;->runPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

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
