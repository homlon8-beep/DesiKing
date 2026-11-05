.class public Lcom/vungle/VunglePlugin;
.super Ljava/lang/Object;
.source "VunglePlugin.java"


# static fields
.field protected static final MANAGER_NAME:Ljava/lang/String; = "VungleManager"

.field protected static final TAG:Ljava/lang/String; = "Vungle"

.field private static _instance:Lcom/vungle/VunglePlugin;


# instance fields
.field public _activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 59
    const-string p2, ""

    .line 63
    :cond_0
    :try_start_0
    const-string v0, "VungleManager"

    invoke-static {v0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 67
    const-string v0, "Vungle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnitySendMessage: VungleManager, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/vungle/VunglePlugin;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/VunglePlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/vungle/VunglePlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/vungle/VunglePlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 4

    .prologue
    .line 44
    :try_start_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 48
    const-string v1, "Vungle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error getting currentActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/vungle/VunglePlugin;->_activity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public static instance()Lcom/vungle/VunglePlugin;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/vungle/VunglePlugin;->_instance:Lcom/vungle/VunglePlugin;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/vungle/VunglePlugin;

    invoke-direct {v0}, Lcom/vungle/VunglePlugin;-><init>()V

    sput-object v0, Lcom/vungle/VunglePlugin;->_instance:Lcom/vungle/VunglePlugin;

    .line 36
    :cond_0
    sget-object v0, Lcom/vungle/VunglePlugin;->_instance:Lcom/vungle/VunglePlugin;

    return-object v0
.end method

.method private runSafelyOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/vungle/VunglePlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vungle/VunglePlugin$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/VunglePlugin$1;-><init>(Lcom/vungle/VunglePlugin;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/vungle/VunglePlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vungle/VunglePlugin$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/vungle/VunglePlugin$2;-><init>(Lcom/vungle/VunglePlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public isSoundEnabled()Z
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->getGlobalAdConfig()Lcom/vungle/publisher/AdConfig;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/vungle/publisher/AdConfig;->isSoundEnabled()Z

    move-result v0

    return v0
.end method

.method public isVideoAvailable()Z
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->onPause()V

    .line 166
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->onResume()V

    .line 172
    return-void
.end method

.method public playAd(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/vungle/VunglePlugin$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/vungle/VunglePlugin$3;-><init>(Lcom/vungle/VunglePlugin;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vungle/VunglePlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method

.method public playAdEx(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/vungle/VunglePlugin$5;

    invoke-direct {v0, p0, p1}, Lcom/vungle/VunglePlugin$5;-><init>(Lcom/vungle/VunglePlugin;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vungle/VunglePlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method

.method public playAdEx(ZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 218
    new-instance v0, Lcom/vungle/VunglePlugin$4;

    move-object v1, p0

    move v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/vungle/VunglePlugin$4;-><init>(Lcom/vungle/VunglePlugin;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vungle/VunglePlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method

.method public setAdOrientation(I)V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->getGlobalAdConfig()Lcom/vungle/publisher/AdConfig;

    move-result-object v0

    .line 156
    if-nez p1, :cond_0

    .line 157
    sget-object v1, Lcom/vungle/publisher/Orientation;->autoRotate:Lcom/vungle/publisher/Orientation;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setOrientation(Lcom/vungle/publisher/Orientation;)V

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    sget-object v1, Lcom/vungle/publisher/Orientation;->matchVideo:Lcom/vungle/publisher/Orientation;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setOrientation(Lcom/vungle/publisher/Orientation;)V

    goto :goto_0
.end method

.method public setSoundEnabled(Z)V
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->getGlobalAdConfig()Lcom/vungle/publisher/AdConfig;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p1}, Lcom/vungle/publisher/AdConfig;->setSoundEnabled(Z)V

    .line 185
    return-void
.end method
