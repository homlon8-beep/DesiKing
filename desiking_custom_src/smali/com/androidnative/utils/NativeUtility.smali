.class public Lcom/androidnative/utils/NativeUtility;
.super Ljava/lang/Object;
.source "NativeUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetApplicationContex()Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static GetLauncherActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method
