.class Lcom/androidnative/popups/PopUpsManager$2;
.super Ljava/lang/Object;
.source "PopUpsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidnative/popups/PopUpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 163
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 164
    const-string v0, "AndroidNative"

    const-string v1, "AndroidPopUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v0, "AndroidPopUp"

    const-string v1, "onPopUpCallBack"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "AndroidRateUsPopUp"

    const-string v1, "onPopUpCallBack"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "AndroidNative"

    const-string v1, "AndroidRateUsPopUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 170
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
