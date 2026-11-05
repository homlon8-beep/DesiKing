.class public Lcom/soomla/SoomlaApp;
.super Landroid/app/Application;
.source "SoomlaApp.java"


# static fields
.field public static ForegroundService:Lcom/soomla/Foreground;

.field private static context:Landroid/content/Context;

.field protected static mInstance:Lcom/soomla/SoomlaApp;


# instance fields
.field private defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/soomla/SoomlaApp;->mInstance:Lcom/soomla/SoomlaApp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/soomla/SoomlaApp;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/soomla/SoomlaApp;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/soomla/SoomlaApp;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/soomla/SoomlaApp;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static instance()Lcom/soomla/SoomlaApp;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/soomla/SoomlaApp;->mInstance:Lcom/soomla/SoomlaApp;

    return-object v0
.end method

.method public static setExternalContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "oContext"    # Landroid/content/Context;

    .prologue
    .line 66
    sput-object p0, Lcom/soomla/SoomlaApp;->context:Landroid/content/Context;

    .line 67
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 40
    sput-object p0, Lcom/soomla/SoomlaApp;->mInstance:Lcom/soomla/SoomlaApp;

    .line 41
    invoke-virtual {p0}, Lcom/soomla/SoomlaApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/soomla/SoomlaApp;->context:Landroid/content/Context;

    .line 45
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    invoke-static {}, Lcom/soomla/Foreground;->init()Lcom/soomla/Foreground;

    move-result-object v0

    sput-object v0, Lcom/soomla/SoomlaApp;->ForegroundService:Lcom/soomla/Foreground;

    .line 53
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/SoomlaApp;->defaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 54
    new-instance v0, Lcom/soomla/SoomlaApp$1;

    invoke-direct {v0, p0}, Lcom/soomla/SoomlaApp$1;-><init>(Lcom/soomla/SoomlaApp;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 61
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method
