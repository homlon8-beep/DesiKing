.class public final Lcom/vungle/publisher/afi$a;
.super Lcom/vungle/publisher/acj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/afi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/afi$a$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Float;

.field protected b:Ljava/lang/Integer;

.field protected c:Ljava/lang/Boolean;

.field protected d:Ljava/lang/Boolean;

.field protected e:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 170
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
    .line 194
    invoke-super {p0}, Lcom/vungle/publisher/acj;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 195
    const-string v1, "click_area"

    iget-object v2, p0, Lcom/vungle/publisher/afi$a;->a:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v1, "enabled"

    iget-object v2, p0, Lcom/vungle/publisher/afi$a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v1, "show_onclick"

    iget-object v2, p0, Lcom/vungle/publisher/afi$a;->d:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v1, "time_show"

    iget-object v2, p0, Lcom/vungle/publisher/afi$a;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v1, "time_enabled"

    iget-object v2, p0, Lcom/vungle/publisher/afi$a;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
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
    .line 157
    invoke-virtual {p0}, Lcom/vungle/publisher/afi$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vungle/publisher/afi$a;->a:Ljava/lang/Float;

    return-object v0
.end method

.method public final e()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vungle/publisher/afi$a;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final f()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vungle/publisher/afi$a;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final g()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/vungle/publisher/afi$a;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public final h()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vungle/publisher/afi$a;->b:Ljava/lang/Integer;

    return-object v0
.end method
