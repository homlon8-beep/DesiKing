.class public Lcom/androidnative/features/ImmersiveMode;
.super Ljava/lang/Object;
.source "ImmersiveMode.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static IsImmersiveModeEnabled:Z

.field private static SYSTEM_UI_HIDE_DELAY:I

.field private static checkSystemUiRunnable:Ljava/lang/Runnable;

.field private static handler:Landroid/os/Handler;

.field private static isSystemUiShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/androidnative/features/ImmersiveMode;->IsImmersiveModeEnabled:Z

    .line 16
    const/16 v0, 0x7d0

    sput v0, Lcom/androidnative/features/ImmersiveMode;->SYSTEM_UI_HIDE_DELAY:I

    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/androidnative/features/ImmersiveMode;->isSystemUiShown:Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ApplyImmersive()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/androidnative/features/ImmersiveMode;->IsValidOSVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 117
    const/16 v1, 0x1706

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public static IsValidOSVersion()Z
    .locals 2

    .prologue
    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 131
    .local v0, "currentapiVersion":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 132
    const/4 v1, 0x1

    .line 134
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static UiChangeListener()V
    .locals 3

    .prologue
    .line 89
    const-string v1, "AndroidNative"

    const-string v2, "UiChangeListener: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "decorView":Landroid/view/View;
    new-instance v1, Lcom/androidnative/features/ImmersiveMode$3;

    invoke-direct {v1}, Lcom/androidnative/features/ImmersiveMode$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 110
    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 78
    invoke-static {}, Lcom/androidnative/features/ImmersiveMode;->checkHideSystemUI()V

    return-void
.end method

.method static synthetic access$1()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/androidnative/features/ImmersiveMode;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/androidnative/features/ImmersiveMode;->checkSystemUiRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lcom/androidnative/features/ImmersiveMode;->SYSTEM_UI_HIDE_DELAY:I

    return v0
.end method

.method static synthetic access$4(Z)V
    .locals 0

    .prologue
    .line 17
    sput-boolean p0, Lcom/androidnative/features/ImmersiveMode;->isSystemUiShown:Z

    return-void
.end method

.method static synthetic access$5()V
    .locals 0

    .prologue
    .line 112
    invoke-static {}, Lcom/androidnative/features/ImmersiveMode;->ApplyImmersive()V

    return-void
.end method

.method static synthetic access$6()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/androidnative/features/ImmersiveMode;->isSystemUiShown:Z

    return v0
.end method

.method private static checkHideSystemUI()V
    .locals 4

    .prologue
    .line 81
    sget-boolean v0, Lcom/androidnative/features/ImmersiveMode;->isSystemUiShown:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/androidnative/features/ImmersiveMode;->ApplyImmersive()V

    .line 83
    sget-object v0, Lcom/androidnative/features/ImmersiveMode;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/androidnative/features/ImmersiveMode;->checkSystemUiRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/androidnative/features/ImmersiveMode;->SYSTEM_UI_HIDE_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    :cond_0
    return-void
.end method

.method public static enableImmersiveMode()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 26
    sget-boolean v3, Lcom/androidnative/features/ImmersiveMode;->IsImmersiveModeEnabled:Z

    if-eqz v3, :cond_1

    .line 62
    .local v1, "mWindowFocusListener":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    :cond_0
    :goto_0
    return-void

    .line 30
    .end local v1    # "mWindowFocusListener":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    :cond_1
    new-instance v3, Lcom/androidnative/features/ImmersiveMode$1;

    invoke-direct {v3}, Lcom/androidnative/features/ImmersiveMode$1;-><init>()V

    sput-object v3, Lcom/androidnative/features/ImmersiveMode;->checkSystemUiRunnable:Ljava/lang/Runnable;

    .line 37
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    sput-object v3, Lcom/androidnative/features/ImmersiveMode;->handler:Landroid/os/Handler;

    .line 39
    invoke-static {}, Lcom/androidnative/features/ImmersiveMode;->IsValidOSVersion()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    sput-boolean v4, Lcom/androidnative/features/ImmersiveMode;->IsImmersiveModeEnabled:Z

    .line 42
    invoke-static {v4}, Lcom/androidnative/features/ImmersiveMode;->onWindowFocusChanged(Z)V

    .line 43
    invoke-static {}, Lcom/androidnative/features/ImmersiveMode;->UiChangeListener()V

    .line 47
    :try_start_0
    new-instance v1, Lcom/androidnative/features/ImmersiveMode$2;

    invoke-direct {v1}, Lcom/androidnative/features/ImmersiveMode$2;-><init>()V

    .line 54
    .restart local v1    # "mWindowFocusListener":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 55
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "AndroidNative"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding  OnWindowFocusChangeListener observer has failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static onWindowFocusChanged(Z)V
    .locals 1
    .param p0, "hasFocus"    # Z

    .prologue
    .line 67
    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/androidnative/features/ImmersiveMode;->IsImmersiveModeEnabled:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/androidnative/features/ImmersiveMode;->ApplyImmersive()V

    .line 74
    :cond_0
    return-void
.end method
