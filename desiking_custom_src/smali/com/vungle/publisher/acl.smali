.class public abstract Lcom/vungle/publisher/acl;
.super Lcom/vungle/publisher/acj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/acl$b;,
        Lcom/vungle/publisher/acl$a;,
        Lcom/vungle/publisher/acl$c;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Lcom/vungle/publisher/acl$a;

.field protected d:Lcom/vungle/publisher/acl$b;

.field protected e:Ljava/lang/Boolean;

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vungle/publisher/acj;-><init>()V

    .line 204
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0}, Lcom/vungle/publisher/acj;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 46
    const-string v1, "isu"

    iget-object v2, p0, Lcom/vungle/publisher/acl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v1, "ifa"

    iget-object v2, p0, Lcom/vungle/publisher/acl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v1, "demo"

    iget-object v2, p0, Lcom/vungle/publisher/acl;->c:Lcom/vungle/publisher/acl$a;

    invoke-static {v2}, Lcom/vungle/publisher/ti;->a(Lcom/vungle/publisher/acj;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "deviceInfo"

    iget-object v2, p0, Lcom/vungle/publisher/acl;->d:Lcom/vungle/publisher/acl$b;

    invoke-static {v2}, Lcom/vungle/publisher/ti;->a(Lcom/vungle/publisher/acj;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v1, "adTrackingEnabled"

    iget-object v2, p0, Lcom/vungle/publisher/acl;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v1, "pubAppId"

    iget-object v2, p0, Lcom/vungle/publisher/acl;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/vungle/publisher/acl;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
