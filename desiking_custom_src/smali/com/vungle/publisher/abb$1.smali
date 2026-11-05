.class final Lcom/vungle/publisher/abb$1;
.super Lcom/vungle/publisher/t;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/abb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/t",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/xr;

.field final synthetic b:Lcom/vungle/publisher/xl;

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Lcom/vungle/publisher/yu;

.field final synthetic e:Lcom/vungle/publisher/abb;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/abb;Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;Lorg/json/JSONObject;Lcom/vungle/publisher/yu;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vungle/publisher/abb$1;->e:Lcom/vungle/publisher/abb;

    iput-object p2, p0, Lcom/vungle/publisher/abb$1;->a:Lcom/vungle/publisher/xr;

    iput-object p3, p0, Lcom/vungle/publisher/abb$1;->b:Lcom/vungle/publisher/xl;

    iput-object p4, p0, Lcom/vungle/publisher/abb$1;->c:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/vungle/publisher/abb$1;->d:Lcom/vungle/publisher/yu;

    invoke-direct {p0}, Lcom/vungle/publisher/t;-><init>()V

    return-void
.end method

.method private e()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/abb$1;->e:Lcom/vungle/publisher/abb;

    iget-object v0, v0, Lcom/vungle/publisher/abb;->a:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/be;

    iget-object v2, p0, Lcom/vungle/publisher/abb$1;->e:Lcom/vungle/publisher/abb;

    iget-object v2, v2, Lcom/vungle/publisher/abb;->b:Lcom/vungle/publisher/aff$a;

    iget-object v3, p0, Lcom/vungle/publisher/abb$1;->c:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/aff$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aff;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/abb$1;->d:Lcom/vungle/publisher/yu;

    invoke-direct {v1, v2, v3}, Lcom/vungle/publisher/be;-><init>(Lcom/vungle/publisher/aff;Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    iget-object v1, p0, Lcom/vungle/publisher/abb$1;->e:Lcom/vungle/publisher/abb;

    invoke-static {v1}, Lcom/vungle/publisher/abb;->b(Lcom/vungle/publisher/abb;)Lcom/vungle/publisher/hs$a;

    move-result-object v1

    const-string v2, "VungleNetwork"

    const-string v3, "error parsing json response from RequestStreamingAd for vungle streaming ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private f()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/abb$1;->e:Lcom/vungle/publisher/abb;

    iget-object v0, v0, Lcom/vungle/publisher/abb;->a:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/bd;

    iget-object v2, p0, Lcom/vungle/publisher/abb$1;->e:Lcom/vungle/publisher/abb;

    iget-object v2, v2, Lcom/vungle/publisher/abb;->c:Lcom/vungle/publisher/aez$a;

    iget-object v3, p0, Lcom/vungle/publisher/abb$1;->c:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/aez$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aez;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/abb$1;->d:Lcom/vungle/publisher/yu;

    invoke-direct {v1, v2, v3}, Lcom/vungle/publisher/bd;-><init>(Lcom/vungle/publisher/aez;Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    iget-object v1, p0, Lcom/vungle/publisher/abb$1;->e:Lcom/vungle/publisher/abb;

    invoke-static {v1}, Lcom/vungle/publisher/abb;->d(Lcom/vungle/publisher/abb;)Lcom/vungle/publisher/hs$a;

    move-result-object v1

    const-string v2, "VungleNetwork"

    const-string v3, "error parsing json response from RequestStreamingAd for third party mraid ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/abb$1;->e:Lcom/vungle/publisher/abb;

    invoke-static {v0}, Lcom/vungle/publisher/abb;->a(Lcom/vungle/publisher/abb;)Lcom/vungle/publisher/hs$a;

    move-result-object v0

    const-string v1, "VungleNetwork"

    const-string v2, "received local ad, expected streaming ad from server, ignoring"

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/hs$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/vungle/publisher/abb$1;->e:Lcom/vungle/publisher/abb;

    iget-object v1, p0, Lcom/vungle/publisher/abb$1;->a:Lcom/vungle/publisher/xr;

    iget-object v2, p0, Lcom/vungle/publisher/abb$1;->b:Lcom/vungle/publisher/xl;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/abb;->b(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/vungle/publisher/abb$1;->e()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/abb$1;->e:Lcom/vungle/publisher/abb;

    invoke-static {v0}, Lcom/vungle/publisher/abb;->c(Lcom/vungle/publisher/abb;)Lcom/vungle/publisher/hs$a;

    move-result-object v0

    const-string v1, "VungleNetwork"

    const-string v2, "received vungle mraid ad, expected streaming ad from server, ignoring"

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/hs$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/vungle/publisher/abb$1;->e:Lcom/vungle/publisher/abb;

    iget-object v1, p0, Lcom/vungle/publisher/abb$1;->a:Lcom/vungle/publisher/xr;

    iget-object v2, p0, Lcom/vungle/publisher/abb$1;->b:Lcom/vungle/publisher/xl;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/abb;->b(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/vungle/publisher/abb$1;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
