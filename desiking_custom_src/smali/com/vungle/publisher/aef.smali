.class public final Lcom/vungle/publisher/aef;
.super Lcom/vungle/publisher/adj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aef$a;
    }
.end annotation


# instance fields
.field t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vungle/publisher/adj;-><init>()V

    .line 25
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
    .line 20
    invoke-super {p0}, Lcom/vungle/publisher/adj;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 21
    const-string v1, "templateId"

    iget-object v2, p0, Lcom/vungle/publisher/aef;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
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
    invoke-virtual {p0}, Lcom/vungle/publisher/aef;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
