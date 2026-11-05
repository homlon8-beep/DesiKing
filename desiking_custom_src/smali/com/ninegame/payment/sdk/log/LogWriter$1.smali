.class Lcom/ninegame/payment/sdk/log/LogWriter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ninegame/payment/sdk/log/LogWriter;->writeLog(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ninegame/payment/sdk/log/LogWriter;


# direct methods
.method constructor <init>(Lcom/ninegame/payment/sdk/log/LogWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ninegame/payment/sdk/log/LogWriter$1;->d:Lcom/ninegame/payment/sdk/log/LogWriter;

    iput p2, p0, Lcom/ninegame/payment/sdk/log/LogWriter$1;->a:I

    iput-object p3, p0, Lcom/ninegame/payment/sdk/log/LogWriter$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ninegame/payment/sdk/log/LogWriter$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget v1, p0, Lcom/ninegame/payment/sdk/log/LogWriter$1;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    iget-object v2, p0, Lcom/ninegame/payment/sdk/log/LogWriter$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/ninegame/payment/sdk/log/LogWriter$1;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ninegame/payment/sdk/log/LogFormater;->formatSystemErrorLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ninegame/payment/sdk/log/util/Utils;->getM9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const-string v1, "type"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    iget-object v2, p0, Lcom/ninegame/payment/sdk/log/LogWriter$1;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/ninegame/payment/sdk/log/LogFormater;->formatBussinessLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
