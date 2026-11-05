.class public Lcom/androidnative/features/notifications/LocalNotificationManager;
.super Ljava/lang/Object;
.source "LocalNotificationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GCMLoadLastMessage()V
    .locals 4

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Lcom/androidnative/gcm/ANCloudMessageService;->GetInstance()Lcom/androidnative/gcm/ANCloudMessageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidnative/gcm/ANCloudMessageService;->LoadLastMessage()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    :goto_0
    return-void

    .line 88
    .end local v0    # "ex":Ljava/lang/NoClassDefFoundError;
    :catch_0
    move-exception v0

    .line 89
    .restart local v0    # "ex":Ljava/lang/NoClassDefFoundError;
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDefFoundError GCMLoadLastMessage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static GCMRemoveLastMessageInfo()V
    .locals 4

    .prologue
    .line 97
    :try_start_0
    invoke-static {}, Lcom/androidnative/gcm/ANCloudMessageService;->GetInstance()Lcom/androidnative/gcm/ANCloudMessageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androidnative/gcm/ANCloudMessageService;->RemoveLastMessageInfo()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    :goto_0
    return-void

    .line 98
    .end local v0    # "ex":Ljava/lang/NoClassDefFoundError;
    :catch_0
    move-exception v0

    .line 99
    .restart local v0    # "ex":Ljava/lang/NoClassDefFoundError;
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDefFoundError GCMLoadLastMessage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static GCMRgisterDevice(Ljava/lang/String;)V
    .locals 4
    .param p0, "senderId"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    invoke-static {}, Lcom/androidnative/gcm/ANCloudMessageService;->GetInstance()Lcom/androidnative/gcm/ANCloudMessageService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/androidnative/gcm/ANCloudMessageService;->registerDevice(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDefFoundError GCMRgisterDevice: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static HideAllNotifications()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetApplicationContex()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 40
    .local v0, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 41
    return-void
.end method

.method public static InitParsePushNotifications(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "dotNetKey"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    invoke-static {}, Lcom/androidnative/gcm/ANCloudMessageService;->GetInstance()Lcom/androidnative/gcm/ANCloudMessageService;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/androidnative/gcm/ANCloudMessageService;->initParsePushNotifications(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDefFoundError GCMRgisterDevice: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static InitPushNotifications(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "icon"    # Ljava/lang/String;
    .param p1, "sound"    # Ljava/lang/String;
    .param p2, "vibration"    # Ljava/lang/String;
    .param p3, "showWhenAppForeground"    # Ljava/lang/String;

    .prologue
    .line 60
    :try_start_0
    invoke-static {}, Lcom/androidnative/gcm/ANCloudMessageService;->GetInstance()Lcom/androidnative/gcm/ANCloudMessageService;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/androidnative/gcm/ANCloudMessageService;->InitNotificationParams(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/NoClassDefFoundError;
    const-string v1, "AndroidNative"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoClassDefFoundError InitPushNotifications: "

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

.method public static ScheduleLocalNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "seconds"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "sound"    # Ljava/lang/String;
    .param p6, "vibration"    # Ljava/lang/String;
    .param p7, "showIfAppIsForeground"    # Ljava/lang/String;
    .param p8, "largeIcon"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 26
    .local v3, "sec":I
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 27
    .local v4, "nId":I
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 28
    .local v7, "vibro":Z
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 29
    .local v8, "showIfAppForeground":Z
    invoke-static {}, Lcom/androidnative/features/notifications/LocalNotificationsController;->GetInstance()Lcom/androidnative/features/notifications/LocalNotificationsController;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/androidnative/features/notifications/LocalNotificationsController;->scheduleNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 31
    return-void
.end method

.method public static ShowToastNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetApplicationContex()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, "context":Landroid/content/Context;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 51
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 52
    return-void
.end method

.method public static canselLocalNotification(Ljava/lang/String;)V
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 35
    .local v0, "nId":I
    invoke-static {}, Lcom/androidnative/features/notifications/LocalNotificationsController;->GetInstance()Lcom/androidnative/features/notifications/LocalNotificationsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/androidnative/features/notifications/LocalNotificationsController;->canselNotification(I)V

    .line 36
    return-void
.end method

.method public static requestCurrentAppLaunchNotificationId()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/androidnative/features/notifications/LocalNotificationsController;->GetInstance()Lcom/androidnative/features/notifications/LocalNotificationsController;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/androidnative/features/notifications/LocalNotificationsController;->requestCurrentAppLaunchNotificationId()V

    .line 20
    return-void
.end method
