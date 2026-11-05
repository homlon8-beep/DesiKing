.class public abstract Lcom/vungle/publisher/aej$a;
.super Lcom/vungle/publisher/ada;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/vungle/publisher/aej;",
        "T:",
        "Lcom/vungle/publisher/aft$a",
        "<*>;>",
        "Lcom/vungle/publisher/ada",
        "<TR;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/p$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/vungle/publisher/ada;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/vungle/publisher/aej;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/vungle/publisher/aej$a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aej;

    .line 102
    const-string v1, "app_id"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ti;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aej;->h:Ljava/lang/String;

    .line 103
    const-string v1, "delay"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ti;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aej;->g:Ljava/lang/Integer;

    .line 104
    const-string v1, "id"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ti;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aej;->i:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/vungle/publisher/aej$a;->a:Lcom/vungle/publisher/p$a;

    const-string v2, "adType"

    invoke-static {p1, v2}, Lcom/vungle/publisher/ti;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/p$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/p;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aej;->e:Lcom/vungle/publisher/p;

    .line 106
    const-string v1, "campaign"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ti;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aej;->f:Ljava/lang/String;

    .line 107
    const-string v1, "campaign"

    iget-object v2, v0, Lcom/vungle/publisher/aej;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/vungle/publisher/aej$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string v1, "expiry"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ti;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aej;->c:Ljava/lang/Long;

    .line 109
    const-string v2, "expiry"

    invoke-static {p1, v2, v1}, Lcom/vungle/publisher/aej$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string v1, "sleep"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ti;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aej;->b:Ljava/lang/Integer;

    .line 112
    const-string v1, "sleepCode"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ti;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aej;->a:Ljava/lang/String;

    .line 114
    :cond_0
    return-object v0
.end method

.method public synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aej$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/aej;

    move-result-object v0

    return-object v0
.end method
