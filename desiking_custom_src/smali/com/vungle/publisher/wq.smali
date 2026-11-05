.class public final Lcom/vungle/publisher/wq;
.super Lcom/vungle/publisher/yf;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/wq$1;,
        Lcom/vungle/publisher/wq$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/vungle/publisher/fr$b;

.field d:Lcom/vungle/publisher/p;

.field e:Ljava/lang/Integer;

.field f:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/dp$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/kv$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/vungle/publisher/yf;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/hm;Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/hm",
            "<*>;",
            "Lcom/vungle/publisher/xr;",
            "Lcom/vungle/publisher/xl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/vungle/publisher/fr$a;->f:Lcom/vungle/publisher/fr$a;

    invoke-interface {p1, v0}, Lcom/vungle/publisher/hm;->a(Lcom/vungle/publisher/fr$a;)V

    .line 129
    invoke-interface {p1}, Lcom/vungle/publisher/hm;->b_()I

    .line 130
    invoke-virtual {p0, p2, p3}, Lcom/vungle/publisher/wq;->b(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 68
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/wq;->h:Lcom/vungle/publisher/kv$b;

    iget-object v2, p0, Lcom/vungle/publisher/wq;->e:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/vungle/publisher/wq;->c:Lcom/vungle/publisher/fr$b;

    sget-object v5, Lcom/vungle/publisher/kv$1;->a:[I

    invoke-virtual {v4}, Lcom/vungle/publisher/fr$b;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot get local viewable type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_0
    iget-object v3, p1, Lcom/vungle/publisher/xr;->a:Lcom/vungle/publisher/xf;

    .line 108
    if-eqz v2, :cond_0

    .line 110
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 116
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 118
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 124
    :cond_1
    :goto_2
    throw v0

    .line 71
    :pswitch_0
    :try_start_3
    iget-object v0, v0, Lcom/vungle/publisher/kv$b;->b:Lcom/vungle/publisher/em$a;

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/em$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hm;

    move-object v4, v0

    .line 72
    :goto_3
    iget-object v5, p2, Lcom/vungle/publisher/xl;->a:Ljava/net/HttpURLConnection;

    .line 73
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 74
    :try_start_4
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/vungle/publisher/wq;->b:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {v6}, Lcom/vungle/publisher/sa;->b(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    const-string v0, "VungleNetwork"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "downloading to: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vungle/publisher/wq;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/16 v0, 0x2000

    new-array v7, v0, [B

    .line 80
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v1, v3

    .line 81
    :goto_4
    :try_start_5
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    .line 82
    add-int/2addr v1, v3

    .line 83
    const/4 v6, 0x0

    invoke-virtual {v0, v7, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 107
    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_0

    .line 71
    :pswitch_1
    :try_start_6
    iget-object v0, v0, Lcom/vungle/publisher/kv$b;->c:Lcom/vungle/publisher/kz$a;

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/kz$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hm;

    move-object v4, v0

    goto :goto_3

    :pswitch_2
    iget-object v0, v0, Lcom/vungle/publisher/kv$b;->d:Lcom/vungle/publisher/fv$a;

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/fv$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hm;

    move-object v4, v0

    goto :goto_3

    :pswitch_3
    iget-object v0, v0, Lcom/vungle/publisher/kv$b;->e:Lcom/vungle/publisher/ft$a;

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ft$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hm;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v4, v0

    goto :goto_3

    .line 85
    :cond_2
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 86
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 87
    const-string v5, "VungleNetwork"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "response ContentLength = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-gt v3, v1, :cond_5

    .line 92
    const-string v3, "VungleNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "download complete: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vungle/publisher/wq;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v3, Lcom/vungle/publisher/wq$1;->a:[I

    iget-object v5, p0, Lcom/vungle/publisher/wq;->c:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v5}, Lcom/vungle/publisher/fr$b;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_1

    :goto_5
    const-string v1, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/vungle/publisher/wq;->c:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " downloaded for ad "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/vungle/publisher/wq;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/publisher/fr$a;->d:Lcom/vungle/publisher/fr$a;

    invoke-interface {v4, v1}, Lcom/vungle/publisher/hm;->a(Lcom/vungle/publisher/fr$a;)V

    invoke-interface {v4}, Lcom/vungle/publisher/hm;->b_()I

    .line 94
    iget-object v1, p0, Lcom/vungle/publisher/wq;->f:Lcom/vungle/publisher/rq;

    new-instance v3, Lcom/vungle/publisher/ah;

    iget-object v5, p0, Lcom/vungle/publisher/wq;->d:Lcom/vungle/publisher/p;

    iget-object v6, p1, Lcom/vungle/publisher/xr;->c:Lcom/vungle/publisher/yu;

    invoke-direct {v3, v5, v4, v6}, Lcom/vungle/publisher/ah;-><init>(Lcom/vungle/publisher/p;Lcom/vungle/publisher/hm;Lcom/vungle/publisher/yu;)V

    invoke-virtual {v1, v3}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 107
    :goto_6
    iget-object v1, p1, Lcom/vungle/publisher/xr;->a:Lcom/vungle/publisher/xf;

    .line 108
    if-eqz v2, :cond_3

    .line 110
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 116
    :cond_3
    :goto_7
    if-eqz v0, :cond_4

    .line 118
    :try_start_9
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 124
    :cond_4
    :goto_8
    return-void

    .line 93
    :pswitch_4
    :try_start_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Lcom/vungle/publisher/hm;->a(Ljava/lang/Integer;)V

    goto :goto_5

    .line 97
    :cond_5
    const-string v5, "VungleNetwork"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "download size mismatch: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vungle/publisher/wq;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", expected size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", actual size: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, v4, p1, p2}, Lcom/vungle/publisher/wq;->a(Lcom/vungle/publisher/hm;Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    .line 102
    :cond_6
    :try_start_b
    const-string v0, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "could not create or directory not writeable: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, v4, p1, p2}, Lcom/vungle/publisher/wq;->a(Lcom/vungle/publisher/hm;Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object v0, v1

    goto :goto_6

    .line 112
    :catch_0
    move-exception v2

    .line 113
    const-string v3, "VungleNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": error closing input stream"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 120
    :catch_1
    move-exception v0

    .line 121
    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": error closing output stream"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 112
    :catch_2
    move-exception v2

    .line 113
    const-string v4, "VungleNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": error closing input stream"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 120
    :catch_3
    move-exception v1

    .line 121
    const-string v2, "VungleNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": error closing output stream"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 107
    :catchall_2
    move-exception v0

    goto/16 :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 93
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected final b(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vungle/publisher/wq;->f:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/aq;

    iget-object v2, p1, Lcom/vungle/publisher/xr;->c:Lcom/vungle/publisher/yu;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/aq;-><init>(Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 136
    return-void
.end method
