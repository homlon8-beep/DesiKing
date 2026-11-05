.class public Lcom/ninegame/payment/sdk/log/Logs;
.super Ljava/lang/Object;


# static fields
.field public static TAG:Ljava/lang/String; = null

.field private static final a:Ljava/lang/String; = "success"

.field private static final b:Ljava/lang/String; = "fail"

.field private static final c:Ljava/lang/String; = "error"

.field private static final d:Ljava/lang/String; = "end"

.field private static final e:Ljava/lang/String; = "mark"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IPS"

    sput-object v0, Lcom/ninegame/payment/sdk/log/Logs;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/ninegame/payment/sdk/log/Logger;->action(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/ninegame/payment/sdk/log/Logger;->mark(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/ninegame/payment/sdk/log/Logger;->action(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/ninegame/payment/sdk/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/ninegame/payment/sdk/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/ninegame/payment/sdk/log/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static im(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/ninegame/payment/sdk/log/Logger;->immediately(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static markEnd(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "end"

    invoke-static {p0, v0, p1, p2}, Lcom/ninegame/payment/sdk/log/Logs;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static markError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "error"

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Lcom/ninegame/payment/sdk/log/Logs;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static markFail(Ljava/lang/String;)V
    .locals 4

    const-string v0, "fail"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/ninegame/payment/sdk/log/Logs;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static markFail(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "fail"

    invoke-static {p0, v0, p1, p2}, Lcom/ninegame/payment/sdk/log/Logs;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static markSuccess(Ljava/lang/String;)V
    .locals 4

    const-string v0, "success"

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/ninegame/payment/sdk/log/Logs;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static markSuccess(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "success"

    invoke-static {p0, v0, p1, p2}, Lcom/ninegame/payment/sdk/log/Logs;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static setDebugMode()V
    .locals 1

    invoke-static {}, Lcom/ninegame/payment/sdk/log/a;->a()Lcom/ninegame/payment/sdk/log/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ninegame/payment/sdk/log/a;->b()V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/ninegame/payment/sdk/log/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
