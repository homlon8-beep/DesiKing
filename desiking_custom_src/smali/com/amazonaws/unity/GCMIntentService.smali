.class public Lcom/amazonaws/unity/GCMIntentService;
.super Landroid/app/IntentService;
.source "GCMIntentService.java"


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final MESSAGE:Ljava/lang/String; = "message"

.field public static final TAG:Ljava/lang/String; = "GCMIntentService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "GcmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method private HandleMessage(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p0, p2}, Lcom/amazonaws/unity/Utils;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 27
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    const-string v3, "default"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/amazonaws/unity/GCMIntentService;->HandleMessage(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/amazonaws/unity/GCMBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 42
    .end local v0    # "action":Ljava/lang/String;
    :goto_1
    return-void

    .line 31
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/amazonaws/unity/GCMIntentService;->HandleMessage(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "GCMIntentService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v3, "GCMIntentService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    invoke-static {p1}, Lcom/amazonaws/unity/GCMBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_1

    .line 38
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 40
    invoke-static {p1}, Lcom/amazonaws/unity/GCMBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 41
    throw v3
.end method
