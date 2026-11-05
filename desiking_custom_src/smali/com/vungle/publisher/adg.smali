.class public Lcom/vungle/publisher/adg;
.super Lcom/vungle/publisher/acj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/adg$b;,
        Lcom/vungle/publisher/adg$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Integer;

.field protected b:Ljava/lang/Long;

.field protected c:[Lcom/vungle/publisher/adg$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/vungle/publisher/acj;-><init>()V

    .line 54
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
    .line 19
    invoke-super {p0}, Lcom/vungle/publisher/acj;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 20
    const-string v1, "userActions"

    iget-object v2, p0, Lcom/vungle/publisher/adg;->c:[Lcom/vungle/publisher/adg$b;

    invoke-static {v2}, Lcom/vungle/publisher/ti;->a([Lcom/vungle/publisher/acj;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v1, "startTime"

    iget-object v2, p0, Lcom/vungle/publisher/adg;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
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
    .line 10
    invoke-virtual {p0}, Lcom/vungle/publisher/adg;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
