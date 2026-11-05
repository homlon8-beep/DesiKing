.class public Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;
.super Ljava/lang/Object;


# static fields
.field public static final REQUEST_TIMEOUT:I = 0x7530

.field public static final SO_TIMEOUT:I = 0x7530


# instance fields
.field private a:Lorg/apache/http/client/HttpClient;

.field private b:Lorg/apache/http/client/methods/HttpPost;

.field private c:Lorg/apache/http/client/methods/HttpGet;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->a:Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->b:Lorg/apache/http/client/methods/HttpPost;

    iput-object v0, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->c:Lorg/apache/http/client/methods/HttpGet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->a:Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->b:Lorg/apache/http/client/methods/HttpPost;

    iput-object v0, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->c:Lorg/apache/http/client/methods/HttpGet;

    return-void
.end method


# virtual methods
.method public disconnectRequest()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->b:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->b:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->b:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_0
    iget-object v0, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->c:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->isAborted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->c:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_1
    iget-object v0, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestByHttpPost(Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->b:Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x989681

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/ninegame/payment/sdk/NativeApi;->signData(I[BI)[B

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-ge v4, v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v3, "binary/octet-stream"

    invoke-virtual {v4, v3}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->b:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v4, 0x7530

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v4, 0x7530

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v4, "ISO-8859-1"

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v4, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->a:Lorg/apache/http/client/HttpClient;

    iget-object v3, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->a:Lorg/apache/http/client/HttpClient;

    iget-object v4, p0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->b:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_7

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/ninegame/payment/sdk/NativeApi;->vaildData(I[BI)[B

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v3, v2

    if-ge v3, v0, :cond_6

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    if-eqz v3, :cond_7

    const-string v2, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-nez v2, :cond_1

    :cond_7
    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
