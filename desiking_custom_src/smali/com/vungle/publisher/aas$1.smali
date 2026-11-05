.class final Lcom/vungle/publisher/aas$1;
.super Lcom/vungle/publisher/t;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aas;
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
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/vungle/publisher/yu;

.field final synthetic c:Lcom/vungle/publisher/aas;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aas;Lorg/json/JSONObject;Lcom/vungle/publisher/yu;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/vungle/publisher/aas$1;->c:Lcom/vungle/publisher/aas;

    iput-object p2, p0, Lcom/vungle/publisher/aas$1;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/vungle/publisher/aas$1;->b:Lcom/vungle/publisher/yu;

    invoke-direct {p0}, Lcom/vungle/publisher/t;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONException;)V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vungle/publisher/aas$1;->c:Lcom/vungle/publisher/aas;

    invoke-static {v0}, Lcom/vungle/publisher/aas;->a(Lcom/vungle/publisher/aas;)Lcom/vungle/publisher/hs$a;

    move-result-object v0

    const-string v1, "VungleNetwork"

    const-string v2, "error parsing json response from RequestLocalAd"

    invoke-virtual {v0, v1, v2, p1}, Lcom/vungle/publisher/hs$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    iget-object v0, p0, Lcom/vungle/publisher/aas$1;->c:Lcom/vungle/publisher/aas;

    iget-object v0, v0, Lcom/vungle/publisher/aas;->b:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/az;

    iget-object v2, p0, Lcom/vungle/publisher/aas$1;->b:Lcom/vungle/publisher/yu;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/az;-><init>(Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method private e()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aas$1;->c:Lcom/vungle/publisher/aas;

    iget-object v0, v0, Lcom/vungle/publisher/aas;->b:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/bb;

    iget-object v2, p0, Lcom/vungle/publisher/aas$1;->c:Lcom/vungle/publisher/aas;

    iget-object v2, v2, Lcom/vungle/publisher/aas;->g:Lcom/vungle/publisher/aew$a;

    iget-object v3, p0, Lcom/vungle/publisher/aas$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/aew$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aew;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/aas$1;->b:Lcom/vungle/publisher/yu;

    invoke-direct {v1, v2, v3}, Lcom/vungle/publisher/bb;-><init>(Lcom/vungle/publisher/aew;Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-direct {p0, v0}, Lcom/vungle/publisher/aas$1;->a(Lorg/json/JSONException;)V

    goto :goto_0
.end method

.method private f()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 132
    const-string v0, "VungleNetwork"

    const-string v1, "received invalid ad from server, tossing it and getting a new one"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/vungle/publisher/aas$1;->c:Lcom/vungle/publisher/aas;

    iget-object v0, v0, Lcom/vungle/publisher/aas;->b:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/az;

    iget-object v2, p0, Lcom/vungle/publisher/aas$1;->b:Lcom/vungle/publisher/yu;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/az;-><init>(Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method private g()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aas$1;->c:Lcom/vungle/publisher/aas;

    iget-object v0, v0, Lcom/vungle/publisher/aas;->b:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/bc;

    iget-object v2, p0, Lcom/vungle/publisher/aas$1;->c:Lcom/vungle/publisher/aas;

    iget-object v2, v2, Lcom/vungle/publisher/aas;->n:Lcom/vungle/publisher/afk$a;

    iget-object v3, p0, Lcom/vungle/publisher/aas$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/afk$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/afk;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/aas$1;->b:Lcom/vungle/publisher/yu;

    invoke-direct {v1, v2, v3}, Lcom/vungle/publisher/bc;-><init>(Lcom/vungle/publisher/afk;Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-direct {p0, v0}, Lcom/vungle/publisher/aas$1;->a(Lorg/json/JSONException;)V

    goto :goto_0
.end method

.method private h()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aas$1;->c:Lcom/vungle/publisher/aas;

    iget-object v0, v0, Lcom/vungle/publisher/aas;->b:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/ba;

    iget-object v2, p0, Lcom/vungle/publisher/aas$1;->c:Lcom/vungle/publisher/aas;

    iget-object v2, v2, Lcom/vungle/publisher/aas;->h:Lcom/vungle/publisher/aez$a;

    iget-object v3, p0, Lcom/vungle/publisher/aas$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/aez$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aez;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/aas$1;->b:Lcom/vungle/publisher/yu;

    invoke-direct {v1, v2, v3}, Lcom/vungle/publisher/ba;-><init>(Lcom/vungle/publisher/aez;Lcom/vungle/publisher/yu;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-direct {p0, v0}, Lcom/vungle/publisher/aas$1;->a(Lorg/json/JSONException;)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/vungle/publisher/aas$1;->e()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/vungle/publisher/aas$1;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/vungle/publisher/aas$1;->g()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/vungle/publisher/aas$1;->h()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
