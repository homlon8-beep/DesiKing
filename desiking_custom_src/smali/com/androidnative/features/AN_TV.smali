.class public Lcom/androidnative/features/AN_TV;
.super Ljava/lang/Object;
.source "AN_TV.java"


# static fields
.field private static TV_SERVICE_LISTNER_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "TVAppController"

    sput-object v0, Lcom/androidnative/features/AN_TV;->TV_SERVICE_LISTNER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AN_CheckForATVDevice()V
    .locals 4

    .prologue
    .line 20
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "uimode"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 21
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 22
    const-string v1, "AndroidNative"

    const-string v2, "Running on a TV Device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object v1, Lcom/androidnative/features/AN_TV;->TV_SERVICE_LISTNER_NAME:Ljava/lang/String;

    const-string v2, "OnDeviceStateResponce"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v1, "AndroidNative"

    const-string v2, "Running on a non-TV Device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object v1, Lcom/androidnative/features/AN_TV;->TV_SERVICE_LISTNER_NAME:Ljava/lang/String;

    const-string v2, "OnDeviceStateResponce"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
