.class public final Lcom/vungle/publisher/abb;
.super Lcom/vungle/publisher/yf;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/aff$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/aez$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/aek$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0}, Lcom/vungle/publisher/yf;-><init>()V

    .line 46
    iput v0, p0, Lcom/vungle/publisher/yf;->k:I

    .line 47
    iput v0, p0, Lcom/vungle/publisher/yf;->j:I

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/abb;)Lcom/vungle/publisher/hs$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/publisher/abb;->i:Lcom/vungle/publisher/hs$a;

    return-object v0
.end method

.method static synthetic b(Lcom/vungle/publisher/abb;)Lcom/vungle/publisher/hs$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/publisher/abb;->i:Lcom/vungle/publisher/hs$a;

    return-object v0
.end method

.method static synthetic c(Lcom/vungle/publisher/abb;)Lcom/vungle/publisher/hs$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/publisher/abb;->i:Lcom/vungle/publisher/hs$a;

    return-object v0
.end method

.method static synthetic d(Lcom/vungle/publisher/abb;)Lcom/vungle/publisher/hs$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/publisher/abb;->i:Lcom/vungle/publisher/hs$a;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p2, Lcom/vungle/publisher/xl;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/abb;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/vungle/publisher/abb;->d:Lcom/vungle/publisher/aek$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/aek$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aek;

    .line 56
    iget-object v6, v0, Lcom/vungle/publisher/aej;->e:Lcom/vungle/publisher/p;

    .line 57
    iget-object v4, v0, Lcom/vungle/publisher/aek;->l:Lorg/json/JSONObject;

    .line 58
    if-nez v6, :cond_0

    .line 59
    const-string v0, "VungleNetwork"

    const-string v1, "received ad with null ad type"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/abb;->b(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v5, p1, Lcom/vungle/publisher/xr;->c:Lcom/vungle/publisher/yu;

    new-instance v0, Lcom/vungle/publisher/abb$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/vungle/publisher/abb$1;-><init>(Lcom/vungle/publisher/abb;Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;Lorg/json/JSONObject;Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v6}, Lcom/vungle/publisher/abb$1;->a(Lcom/vungle/publisher/p;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final b(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vungle/publisher/abb;->a:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/al;

    invoke-direct {v1}, Lcom/vungle/publisher/al;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 108
    return-void
.end method
