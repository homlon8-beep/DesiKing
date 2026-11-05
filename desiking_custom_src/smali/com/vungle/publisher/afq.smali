.class public final Lcom/vungle/publisher/afq;
.super Lcom/vungle/publisher/acj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/afq$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vungle/publisher/acj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-super {p0}, Lcom/vungle/publisher/acj;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 33
    const-string v1, "ifa"

    iget-object v2, p0, Lcom/vungle/publisher/afq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v1, "isu"

    iget-object v2, p0, Lcom/vungle/publisher/afq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v1, "mac"

    iget-object v2, p0, Lcom/vungle/publisher/afq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v1, "pubAppId"

    iget-object v2, p0, Lcom/vungle/publisher/afq;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vungle/publisher/afq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    const-string v1, "pubAppId"

    iget-object v2, p0, Lcom/vungle/publisher/afq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v1, "start"

    iget-object v2, p0, Lcom/vungle/publisher/afq;->e:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/vungle/publisher/afq;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string v1, "start"

    iget-object v2, p0, Lcom/vungle/publisher/afq;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/vungle/publisher/afq;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
