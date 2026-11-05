.class public abstract Lcom/vungle/publisher/aee;
.super Lcom/vungle/publisher/adj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aee$a;
    }
.end annotation


# instance fields
.field protected t:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/vungle/publisher/adj;-><init>()V

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
    .line 66
    invoke-super {p0}, Lcom/vungle/publisher/adj;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 67
    const-string v1, "url"

    iget-object v2, p0, Lcom/vungle/publisher/aee;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
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
    .line 57
    invoke-virtual {p0}, Lcom/vungle/publisher/aee;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
