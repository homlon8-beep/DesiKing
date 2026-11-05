.class Lcom/soomla/Foreground$ForegroundNew;
.super Lcom/soomla/Foreground;
.source "Foreground.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/Foreground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ForegroundNew"
.end annotation


# instance fields
.field private count:I

.field private refs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Lcom/soomla/Foreground;-><init>()V

    .line 95
    iput v0, p0, Lcom/soomla/Foreground$ForegroundNew;->count:I

    .line 96
    iput v0, p0, Lcom/soomla/Foreground$ForegroundNew;->refs:I

    .line 100
    invoke-static {}, Lcom/soomla/SoomlaApp;->instance()Lcom/soomla/SoomlaApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/soomla/SoomlaApp;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 101
    return-void
.end method


# virtual methods
.method public isBackground()Z
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/soomla/Foreground$ForegroundNew;->refs:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/soomla/Foreground$ForegroundNew;->refs:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    iget v0, p0, Lcom/soomla/Foreground$ForegroundNew;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/soomla/Foreground$ForegroundNew;->count:I

    .line 124
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 170
    iget v0, p0, Lcom/soomla/Foreground$ForegroundNew;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/soomla/Foreground$ForegroundNew;->count:I

    .line 171
    iget v0, p0, Lcom/soomla/Foreground$ForegroundNew;->count:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/soomla/Foreground$ForegroundNew;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/soomla/Foreground$ForegroundNew;->TAG:Ljava/lang/String;

    const-string v1, "destroyed weirdly"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/events/AppToBackgroundEvent;

    invoke-direct {v1}, Lcom/soomla/events/AppToBackgroundEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 119
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.unity3d.player.UnityPlayerProxyActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget v0, p0, Lcom/soomla/Foreground$ForegroundNew;->refs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/soomla/Foreground$ForegroundNew;->refs:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/soomla/Foreground$ForegroundNew;->isChangingOrientation:Z

    if-nez v0, :cond_1

    .line 135
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/events/AppToForegroundEvent;

    invoke-direct {v1}, Lcom/soomla/events/AppToForegroundEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 136
    sget-object v0, Lcom/soomla/Foreground$ForegroundNew;->TAG:Ljava/lang/String;

    const-string v1, "became foreground"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    sget-object v0, Lcom/soomla/Foreground$ForegroundNew;->TAG:Ljava/lang/String;

    const-string v1, "still foreground"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/soomla/Foreground$ForegroundNew;->isChangingOrientation:Z

    .line 150
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.unity3d.player.UnityPlayerProxyActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget v0, p0, Lcom/soomla/Foreground$ForegroundNew;->refs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/soomla/Foreground$ForegroundNew;->refs:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/soomla/Foreground$ForegroundNew;->isChangingOrientation:Z

    if-nez v0, :cond_1

    .line 155
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/events/AppToBackgroundEvent;

    invoke-direct {v1}, Lcom/soomla/events/AppToBackgroundEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 156
    sget-object v0, Lcom/soomla/Foreground$ForegroundNew;->TAG:Ljava/lang/String;

    const-string v1, "became background"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    sget-object v0, Lcom/soomla/Foreground$ForegroundNew;->TAG:Ljava/lang/String;

    const-string v1, "still foreground"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
