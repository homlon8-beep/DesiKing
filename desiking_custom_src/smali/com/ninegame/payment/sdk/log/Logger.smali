.class public Lcom/ninegame/payment/sdk/log/Logger;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x21

.field private static final b:I = 0x22

.field private static final c:I = 0x23

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Logger"

    sput-object v0, Lcom/ninegame/payment/sdk/log/Logger;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/ninegame/payment/sdk/log/Logger$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/ninegame/payment/sdk/log/Logger$1;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ninegame/payment/sdk/log/util/BackgroundHandler;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static action(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x21

    sget-object v1, Lcom/ninegame/payment/sdk/log/Logger;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/ninegame/payment/sdk/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static action(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ninegame/payment/sdk/log/Logger;->action(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x21

    invoke-static {v0, p0, p1}, Lcom/ninegame/payment/sdk/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static action(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/ninegame/payment/sdk/log/Logger;->action(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x21

    invoke-static {v1, p0, v0}, Lcom/ninegame/payment/sdk/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    sget-object v1, Lcom/ninegame/payment/sdk/log/Logger;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/ninegame/payment/sdk/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ninegame/payment/sdk/log/Logger;->debug(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/ninegame/payment/sdk/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    sget-object v1, Lcom/ninegame/payment/sdk/log/Logger;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/ninegame/payment/sdk/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ninegame/payment/sdk/log/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/ninegame/payment/sdk/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static immediately(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x22

    invoke-static {v0, p0, p1}, Lcom/ninegame/payment/sdk/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    sget-object v1, Lcom/ninegame/payment/sdk/log/Logger;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/ninegame/payment/sdk/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ninegame/payment/sdk/log/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/ninegame/payment/sdk/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static mark(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/ninegame/payment/sdk/log/InternalLogger;->mark(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    sget-object v1, Lcom/ninegame/payment/sdk/log/Logger;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/ninegame/payment/sdk/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ninegame/payment/sdk/log/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/ninegame/payment/sdk/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
