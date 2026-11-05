.class public Lcom/androidnative/licensing/AppLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "AppLicenseCheckerCallback.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 10
    sparse-switch p1, :sswitch_data_0

    .line 19
    const-string v0, "AN_LicenseManager"

    const-string v1, "OnLicenseRequestRes"

    const-string v2, "ERROR_UNKNOWN"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_0
    return-void

    .line 13
    :sswitch_0
    const-string v0, "AN_LicenseManager"

    const-string v1, "OnLicenseRequestRes"

    const-string v2, "RESULT_LICENSED"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :sswitch_1
    const-string v0, "AN_LicenseManager"

    const-string v1, "OnLicenseRequestRes"

    const-string v2, "RESULT_RETRY"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x123 -> :sswitch_1
    .end sparse-switch
.end method

.method public applicationError(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 68
    const-string v0, "AN_LicenseManager"

    const-string v1, "OnLicenseRequestRes"

    const-string v2, "ERROR_UNKNOWN"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 50
    :pswitch_0
    const-string v0, "AN_LicenseManager"

    const-string v1, "OnLicenseRequestRes"

    const-string v2, "ERROR_CHECK_IN_PROGRESS"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_1
    const-string v0, "AN_LicenseManager"

    const-string v1, "OnLicenseRequestRes"

    const-string v2, "ERROR_INVALID_PACKAGE_NAME"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_2
    const-string v0, "AN_LicenseManager"

    const-string v1, "OnLicenseRequestRes"

    const-string v2, "ERROR_INVALID_PUBLIC_KEY"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_3
    const-string v0, "AN_LicenseManager"

    const-string v1, "OnLicenseRequestRes"

    const-string v2, "ERROR_MISSING_PERMISSION"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_4
    const-string v0, "AN_LicenseManager"

    const-string v1, "OnLicenseRequestRes"

    const-string v2, "ERROR_NON_MATCHING_UID"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_5
    const-string v0, "AN_LicenseManager"

    const-string v1, "OnLicenseRequestRes"

    const-string v2, "ERROR_NOT_MARKET_MANAGED"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dontAllow(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 25
    sparse-switch p1, :sswitch_data_0

    .line 41
    const-string v0, "AN_LicenseManager"

    const-string v1, "OnLicenseRequestRes"

    const-string v2, "ERROR_UNKNOWN"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 32
    :sswitch_0
    const-string v0, "AN_LicenseManager"

    const-string v1, "OnLicenseRequestRes"

    const-string v2, "RESULT_NOT_LICENSED"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :sswitch_1
    const-string v0, "AN_LicenseManager"

    const-string v1, "OnLicenseRequestRes"

    const-string v2, "RESULT_RETRY"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    nop

    :sswitch_data_0
    .sparse-switch
        0x123 -> :sswitch_1
        0x231 -> :sswitch_0
    .end sparse-switch
.end method
