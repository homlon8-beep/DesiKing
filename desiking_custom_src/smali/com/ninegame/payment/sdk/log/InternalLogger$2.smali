.class final Lcom/ninegame/payment/sdk/log/InternalLogger$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ninegame/payment/sdk/log/InternalLogger;->mark(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/ninegame/payment/sdk/log/InternalLogger$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ninegame/payment/sdk/log/InternalLogger$2;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ninegame/payment/sdk/log/InternalLogger$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "type"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lcom/ninegame/payment/sdk/log/LogEvent;

    iget-object v0, p0, Lcom/ninegame/payment/sdk/log/InternalLogger$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/ninegame/payment/sdk/log/InternalLogger$2;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/ninegame/payment/sdk/log/InternalLogger$2;->c:J

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/ninegame/payment/sdk/log/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-wide v4, p0, Lcom/ninegame/payment/sdk/log/InternalLogger$2;->c:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    invoke-static {}, Lcom/ninegame/payment/sdk/log/InternalLogger;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ninegame/payment/sdk/log/LogEvent;

    invoke-virtual {v0}, Lcom/ninegame/payment/sdk/log/LogEvent;->getMsg()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ninegame/payment/sdk/log/InternalLogger$2;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/ninegame/payment/sdk/log/LogEvent;->getLogTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/ninegame/payment/sdk/log/LogEvent;->setDuration(J)V

    invoke-static {}, Lcom/ninegame/payment/sdk/log/InternalLogger;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    const-string v3, "data"

    invoke-virtual {v0}, Lcom/ninegame/payment/sdk/log/LogEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "data"

    invoke-virtual {v2}, Lcom/ninegame/payment/sdk/log/LogEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ninegame/payment/sdk/log/util/Utils;->getM9(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "http://payment.ucweb.local:8064/sdk/logv2.htm"

    invoke-static {v0, v1}, Lcom/ninegame/payment/sdk/log/util/LogUploadUtil;->postLogToRemoteServerByBatch(Ljava/lang/String;Lorg/json/JSONArray;)Z

    :goto_0
    return-void

    :cond_3
    iget-wide v4, p0, Lcom/ninegame/payment/sdk/log/InternalLogger$2;->c:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ninegame/payment/sdk/log/InternalLogger;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
