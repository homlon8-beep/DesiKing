.class public final Lcom/vungle/publisher/afc;
.super Lcom/vungle/publisher/aei;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/afc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/aei",
        "<",
        "Lcom/vungle/publisher/afc;",
        ">;"
    }
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/acy;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vungle/publisher/aei;-><init>()V

    .line 31
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
    .line 24
    invoke-super {p0}, Lcom/vungle/publisher/aei;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 25
    const-string v1, "campaignId"

    iget-object v2, p0, Lcom/vungle/publisher/afc;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v1, "extraInfo"

    iget-object v2, p0, Lcom/vungle/publisher/afc;->g:Lcom/vungle/publisher/acy;

    invoke-static {v2}, Lcom/vungle/publisher/ti;->a(Lcom/vungle/publisher/acj;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v1, "placement"

    iget-object v2, p0, Lcom/vungle/publisher/afc;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
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
    .line 13
    invoke-virtual {p0}, Lcom/vungle/publisher/afc;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
