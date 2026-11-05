.class public final Lcom/vungle/publisher/xv;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/xy;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/xl$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/xg$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 36
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/vungle/publisher/xf$b;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2c

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-static {p1, p2}, Lcom/vungle/publisher/xv;->a(II)Z

    move-result v1

    .line 174
    if-eqz v1, :cond_0

    .line 175
    const-string v2, " redirect count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    const-string v2, " response code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", content-type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    if-lez p1, :cond_1

    .line 187
    const-string v2, " original URL "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    :cond_1
    const-string v2, " requested URL "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    if-eqz v1, :cond_2

    .line 194
    const-string v1, ", next URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/vungle/publisher/xf;)V
    .locals 10

    .prologue
    .line 141
    iget-object v2, p1, Lcom/vungle/publisher/xf;->c:Landroid/os/Bundle;

    .line 142
    if-eqz v2, :cond_2

    .line 143
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 146
    const-string v7, "VungleNetwork"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "request header: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, v0, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    :cond_1
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 151
    const-string v4, "VungleNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "request header: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    return-void
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(II)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 159
    if-gtz p0, :cond_1

    const/16 v2, 0x12d

    if-eq p1, v2, :cond_0

    const/16 v2, 0x12e

    if-ne p1, v2, :cond_3

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/xf;)Lcom/vungle/publisher/xl;
    .locals 16

    .prologue
    const-wide/16 v14, -0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 53
    .line 54
    const/4 v4, -0x1

    .line 55
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 57
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/publisher/xf;->b()Lcom/vungle/publisher/xf$b;

    move-result-object v2

    .line 58
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/vungle/publisher/xf;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v9, v10

    .line 60
    :goto_0
    const/4 v5, 0x5

    if-gt v3, v5, :cond_3

    .line 61
    :try_start_1
    const-string v4, "VungleNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 63
    const/16 v4, 0x2710

    invoke-virtual {v9, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v4, 0x2710

    invoke-virtual {v9, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/vungle/publisher/xf$b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 64
    :cond_0
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lcom/vungle/publisher/xv;->a(Ljava/net/HttpURLConnection;Lcom/vungle/publisher/xf;)V

    .line 65
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/vungle/publisher/xf;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "VungleNetwork"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "request body: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v6, "gzip"

    const-string v5, "Content-Encoding"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/vungle/publisher/xf;->c:Landroid/os/Bundle;

    if-nez v8, :cond_4

    move-object v5, v10

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    array-length v5, v4

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v8, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v6, "VungleNetwork"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "gzipped request from "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " bytes down to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v8, v4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " bytes"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v9, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    array-length v5, v4

    invoke-virtual {v9, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 67
    :cond_2
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 68
    invoke-static {v3, v4}, Lcom/vungle/publisher/xv;->a(II)Z

    move-result v5

    .line 69
    if-eqz v5, :cond_7

    .line 70
    const-string v5, "Location"

    invoke-virtual {v9, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 71
    const-string v5, "Date"

    const-wide/16 v12, -0x1

    invoke-virtual {v9, v5, v12, v13}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v12

    cmp-long v5, v12, v14

    if-nez v5, :cond_5

    move-object v6, v10

    .line 72
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vungle/publisher/xv;->c:Lcom/vungle/publisher/xg$a;

    iget-object v5, v5, Lcom/vungle/publisher/xg$a;->a:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vungle/publisher/xg;

    iput-object v7, v5, Lcom/vungle/publisher/xg;->b:Ljava/lang/String;

    iput v4, v5, Lcom/vungle/publisher/xg;->c:I

    iput-object v8, v5, Lcom/vungle/publisher/xg;->a:Ljava/lang/String;

    iput-object v6, v5, Lcom/vungle/publisher/xg;->d:Ljava/lang/Long;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-static {v4}, Lcom/vungle/publisher/xv;->a(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 74
    const-string v12, "VungleNetwork"

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/vungle/publisher/xf;->b:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/vungle/publisher/xv;->a(Lcom/vungle/publisher/xf$b;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 108
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vungle/publisher/xv;->b:Lcom/vungle/publisher/xl$a;

    iget-object v2, v2, Lcom/vungle/publisher/xl$a;->a:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/publisher/xl;

    iput-object v9, v2, Lcom/vungle/publisher/xl;->a:Ljava/net/HttpURLConnection;

    iput-object v11, v2, Lcom/vungle/publisher/xl;->d:Ljava/util/List;

    iput v4, v2, Lcom/vungle/publisher/xl;->b:I

    if-nez v9, :cond_9

    move-object v3, v10

    :goto_4
    iput-object v3, v2, Lcom/vungle/publisher/xl;->c:Ljava/lang/String;

    return-object v2

    .line 65
    :cond_4
    :try_start_2
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/vungle/publisher/xf;->c:Landroid/os/Bundle;

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 71
    :cond_5
    const-string v5, "Date"

    const-wide/16 v12, -0x1

    invoke-virtual {v9, v5, v12, v13}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v6, v5

    goto :goto_2

    .line 78
    :cond_6
    const-string v12, "VungleNetwork"

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/vungle/publisher/xf;->b:Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Lcom/vungle/publisher/xv;->a(Lcom/vungle/publisher/xf$b;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    add-int/lit8 v3, v3, 0x1

    move-object v7, v8

    goto/16 :goto_0

    .line 82
    :cond_7
    invoke-static {v4}, Lcom/vungle/publisher/xv;->a(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 83
    const-string v12, "VungleNetwork"

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/vungle/publisher/xf;->b:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/vungle/publisher/xv;->a(Lcom/vungle/publisher/xf$b;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    .line 92
    :catch_0
    move-exception v2

    .line 93
    :goto_5
    const-string v3, "VungleNetwork"

    invoke-static {v2}, Lcom/vungle/publisher/aha;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/16 v4, 0x259

    .line 107
    goto :goto_3

    .line 87
    :cond_8
    :try_start_3
    const-string v12, "VungleNetwork"

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/vungle/publisher/xf;->b:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/vungle/publisher/xv;->a(Lcom/vungle/publisher/xf$b;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    .line 96
    :catch_1
    move-exception v2

    .line 97
    :goto_6
    const-string v3, "VungleNetwork"

    invoke-static {v2}, Lcom/vungle/publisher/aha;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/16 v4, 0x25a

    .line 107
    goto/16 :goto_3

    .line 100
    :catch_2
    move-exception v2

    move-object v9, v10

    .line 101
    :goto_7
    const-string v3, "VungleNetwork"

    invoke-static {v2}, Lcom/vungle/publisher/aha;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/16 v4, 0x25b

    .line 107
    goto/16 :goto_3

    .line 104
    :catch_3
    move-exception v2

    move-object v9, v10

    .line 105
    :goto_8
    const-string v3, "VungleNetwork"

    invoke-static {v2}, Lcom/vungle/publisher/aha;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/16 v4, 0x258

    goto/16 :goto_3

    .line 108
    :cond_9
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 104
    :catch_4
    move-exception v2

    goto :goto_8

    .line 100
    :catch_5
    move-exception v2

    goto :goto_7

    .line 96
    :catch_6
    move-exception v2

    move-object v9, v10

    goto :goto_6

    .line 92
    :catch_7
    move-exception v2

    move-object v9, v10

    goto :goto_5
.end method
