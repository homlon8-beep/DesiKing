.class public Lcom/androidnative/features/notifications/LocalNotificationsController;
.super Ljava/lang/Object;
.source "LocalNotificationsController.java"


# static fields
.field public static final ICON_NAME:Ljava/lang/String; = "ICON_NAME"

.field public static final ID_KEY:Ljava/lang/String; = "ID_KEY"

.field public static final LARGE_ICON:Ljava/lang/String; = "LARGE_ICON"

.field public static final MESSAGE_KEY:Ljava/lang/String; = "MESSAGE_KEY"

.field public static final SHOW_IF_APP_FOREGROUND:Ljava/lang/String; = "SHOW_IF_APP_FOREGROUND"

.field public static final SOUND_NAME:Ljava/lang/String; = "SOUND_NAME"

.field public static final SOUND_SILENT:Ljava/lang/String; = "SOUND_SILENT"

.field public static final TITILE_KEY:Ljava/lang/String; = "TITILE_KEY"

.field public static final VIBRATION:Ljava/lang/String; = "VIBRATION"

.field private static _inctance:Lcom/androidnative/features/notifications/LocalNotificationsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/androidnative/features/notifications/LocalNotificationsController;->_inctance:Lcom/androidnative/features/notifications/LocalNotificationsController;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetInstance()Lcom/androidnative/features/notifications/LocalNotificationsController;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/androidnative/features/notifications/LocalNotificationsController;->_inctance:Lcom/androidnative/features/notifications/LocalNotificationsController;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/androidnative/features/notifications/LocalNotificationsController;

    invoke-direct {v0}, Lcom/androidnative/features/notifications/LocalNotificationsController;-><init>()V

    sput-object v0, Lcom/androidnative/features/notifications/LocalNotificationsController;->_inctance:Lcom/androidnative/features/notifications/LocalNotificationsController;

    .line 36
    :cond_0
    sget-object v0, Lcom/androidnative/features/notifications/LocalNotificationsController;->_inctance:Lcom/androidnative/features/notifications/LocalNotificationsController;

    return-object v0
.end method


# virtual methods
.method public canselNotification(I)V
    .locals 6
    .param p1, "id"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetApplicationContex()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/androidnative/features/notifications/LocalNotificationReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v1, "resultIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 83
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetApplicationContex()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v3, p1, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 85
    .local v2, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 87
    const-string v3, "AndroidNative"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LocalNotificationsController canselNotification with id:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public requestCurrentAppLaunchNotificationId()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, -0x1

    .line 42
    .local v0, "id":I
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ID_KEY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ID_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    :cond_0
    const-string v1, "AndroidNotificationManager"

    const-string v2, "OnNotificationIdLoadedEvent"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public scheduleNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "seconds"    # I
    .param p4, "id"    # I
    .param p5, "icon"    # Ljava/lang/String;
    .param p6, "sound"    # Ljava/lang/String;
    .param p7, "vibration"    # Z
    .param p8, "showIfAppForeground"    # Z
    .param p9, "largeIcon"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetApplicationContex()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/androidnative/features/notifications/LocalNotificationReceiver;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v4, "resultIntent":Landroid/content/Intent;
    const-string v6, "TITILE_KEY"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v6, "MESSAGE_KEY"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v6, "ID_KEY"

    invoke-virtual {v4, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    const-string v6, "ICON_NAME"

    invoke-virtual {v4, v6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v6, "SOUND_NAME"

    move-object/from16 v0, p6

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v6, "VIBRATION"

    move/from16 v0, p7

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    const-string v6, "SHOW_IF_APP_FOREGROUND"

    move/from16 v0, p8

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    const-string v6, "LARGE_ICON"

    move-object/from16 v0, p9

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 65
    .local v3, "cal":Ljava/util/Calendar;
    const/16 v6, 0xd

    invoke-virtual {v3, v6, p3}, Ljava/util/Calendar;->add(II)V

    .line 67
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 69
    .local v2, "am":Landroid/app/AlarmManager;
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetApplicationContex()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x8000000

    invoke-static {v6, p4, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 71
    .local v5, "sender":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2, v6, v8, v9, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 73
    const-string v6, "AndroidNative"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "LocalNotificationsController scheduleNotification with id: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method
