.class public Lcom/ninegame/payment/sdk/log/AppContext;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_APP_ID:Ljava/lang/String; = "key_appId"

.field public static final KEY_CHANNEL_ID:Ljava/lang/String; = "key_channel_id"

.field public static final KEY_ROOT_DIR:Ljava/lang/String; = "key_rootDir"

.field public static final KEY_SDK_VERSION:Ljava/lang/String; = "key_sdk_version"

.field private static final a:Ljava/lang/String; = "AppContext"

.field private static b:Landroid/content/Context;

.field private static c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Object;

.field public static debugMode:Z

.field public static isInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ninegame/payment/sdk/log/AppContext;->isInit:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ninegame/payment/sdk/log/AppContext;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ninegame/payment/sdk/log/AppContext;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ninegame/payment/sdk/log/AppContext;->debugMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    sget-boolean v0, Lcom/ninegame/payment/sdk/log/AppContext;->isInit:Z

    if-nez v0, :cond_0

    const-string v0, "AppContext"

    const-string v1, "Class AppContext not call initConfig()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/log/AppContext;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "AppContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This map contains no mapping for the key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/ninegame/payment/sdk/log/AppContext;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    sget-boolean v0, Lcom/ninegame/payment/sdk/log/AppContext;->isInit:Z

    if-nez v0, :cond_0

    const-string v0, "AppContext"

    const-string v1, "Class LogInfoConfig not call initConfig()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/ninegame/payment/sdk/log/AppContext;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getInteger(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    sget-boolean v0, Lcom/ninegame/payment/sdk/log/AppContext;->isInit:Z

    if-nez v0, :cond_0

    const-string v0, "AppContext"

    const-string v1, "Class LogInfoConfig not call initConfig()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/ninegame/payment/sdk/log/AppContext;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    sget-boolean v0, Lcom/ninegame/payment/sdk/log/AppContext;->isInit:Z

    if-nez v0, :cond_0

    const-string v0, "AppContext"

    const-string v1, "Class LogInfoConfig not call initConfig()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/ninegame/payment/sdk/log/AppContext;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public static initConfig(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    sget-object v1, Lcom/ninegame/payment/sdk/log/AppContext;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/ninegame/payment/sdk/log/util/SdCardUtil;->getRootDir(Landroid/content/Context;Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_rootDir"

    invoke-static {v2, v0}, Lcom/ninegame/payment/sdk/log/AppContext;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ninegame/payment/sdk/log/AppContext;->isInit:Z

    monitor-exit v1

    return v3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ninegame/payment/sdk/log/AppContext;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ninegame/payment/sdk/log/AppContext;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static putInteger(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ninegame/payment/sdk/log/AppContext;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ninegame/payment/sdk/log/AppContext;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ninegame/payment/sdk/log/AppContext;->b:Landroid/content/Context;

    return-void
.end method
