.class public final Lcom/vungle/publisher/afx;
.super Lcom/vungle/publisher/adg;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/afx$a;
    }
.end annotation


# instance fields
.field protected d:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/adg;-><init>()V

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
    .line 19
    invoke-super {p0}, Lcom/vungle/publisher/adg;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 20
    const-string v1, "videoLength"

    iget-object v2, p0, Lcom/vungle/publisher/afx;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v1, "videoViewed"

    iget-object v2, p0, Lcom/vungle/publisher/afx;->a:Ljava/lang/Integer;

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
    .line 10
    invoke-virtual {p0}, Lcom/vungle/publisher/afx;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
