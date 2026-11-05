.class public Lcom/ninegame/payment/sdk/log/InternalLogger;
.super Ljava/lang/Object;


# static fields
.field public static final BUSINESS_LOG:I = 0x2

.field public static final LOG_SERVER:Ljava/lang/String; = "http://payment.ucweb.local:8064/sdk/logv2.htm"

.field public static final MARK_LOG:I = 0x3

.field public static final SYSTEM_LOG:I = 0x1

.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/ninegame/payment/sdk/log/LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/ninegame/payment/sdk/log/LogWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ninegame/payment/sdk/log/InternalLogger;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/ninegame/payment/sdk/log/InternalLogger;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    sput-object v0, Lcom/ninegame/payment/sdk/log/InternalLogger;->c:Lcom/ninegame/payment/sdk/log/LogWriter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    sget-object v0, Lcom/ninegame/payment/sdk/log/InternalLogger;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v1, 0x80

    invoke-static {v1}, Lcom/ninegame/payment/sdk/log/a;->a(I)Z

    move-result v0

    invoke-static {v1}, Lcom/ninegame/payment/sdk/log/a;->c(I)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "acts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/ninegame/payment/sdk/log/InternalLogger;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/ninegame/payment/sdk/log/InternalLogger;->c:Lcom/ninegame/payment/sdk/log/LogWriter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ninegame/payment/sdk/log/LogWriter;

    invoke-direct {v0}, Lcom/ninegame/payment/sdk/log/LogWriter;-><init>()V

    sput-object v0, Lcom/ninegame/payment/sdk/log/InternalLogger;->c:Lcom/ninegame/payment/sdk/log/LogWriter;

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/log/InternalLogger;->c:Lcom/ninegame/payment/sdk/log/LogWriter;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ninegame/payment/sdk/log/InternalLogger;->c:Lcom/ninegame/payment/sdk/log/LogWriter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/ninegame/payment/sdk/log/LogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    sget-object v1, Lcom/ninegame/payment/sdk/log/InternalLogger;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/ninegame/payment/sdk/log/InternalLogger;->a(Ljava/lang/String;Ljava/lang/String;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static canUploadServer(I)Z
    .locals 1

    invoke-static {p0}, Lcom/ninegame/payment/sdk/log/a;->b(I)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/ninegame/payment/sdk/log/a;->a(I)Z

    move-result v0

    invoke-static {v1}, Lcom/ninegame/payment/sdk/log/a;->c(I)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/ninegame/payment/sdk/log/a;->a(I)Z

    move-result v0

    invoke-static {v1}, Lcom/ninegame/payment/sdk/log/a;->c(I)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/ninegame/payment/sdk/log/InternalLogger;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public static getLevelString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "TRACE"

    goto :goto_0

    :sswitch_1
    const-string v0, "DEBUG"

    goto :goto_0

    :sswitch_2
    const-string v0, "INFO"

    goto :goto_0

    :sswitch_3
    const-string v0, "WARN"

    goto :goto_0

    :sswitch_4
    const-string v0, "ERROR"

    goto :goto_0

    :sswitch_5
    const-string v0, "FATAL"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/ninegame/payment/sdk/log/a;->a(I)Z

    move-result v0

    invoke-static {v1}, Lcom/ninegame/payment/sdk/log/a;->c(I)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static im(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x80

    invoke-static {v1}, Lcom/ninegame/payment/sdk/log/a;->a(I)Z

    move-result v0

    invoke-static {v1}, Lcom/ninegame/payment/sdk/log/a;->c(I)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/ninegame/payment/sdk/log/InternalLogger$1;

    invoke-direct {v0, p0, p1}, Lcom/ninegame/payment/sdk/log/InternalLogger$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ninegame/payment/sdk/log/util/BackgroundHandler;->post(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static isDebugMode()Z
    .locals 1

    invoke-static {}, Lcom/ninegame/payment/sdk/log/a;->c()Z

    move-result v0

    return v0
.end method

.method public static mark(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    const/16 v1, 0x80

    invoke-static {v1}, Lcom/ninegame/payment/sdk/log/a;->a(I)Z

    move-result v0

    invoke-static {v1}, Lcom/ninegame/payment/sdk/log/a;->c(I)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    const-class v0, Lcom/ninegame/payment/sdk/log/InternalLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/ninegame/payment/sdk/log/InternalLogger$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ninegame/payment/sdk/log/InternalLogger$2;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/ninegame/payment/sdk/log/util/BackgroundHandler;->post(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/ninegame/payment/sdk/log/a;->a(I)Z

    move-result v0

    invoke-static {v1}, Lcom/ninegame/payment/sdk/log/a;->c(I)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "warning"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/ninegame/payment/sdk/log/InternalLogger;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method
