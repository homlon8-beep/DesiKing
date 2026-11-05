.class public final Lcom/vungle/publisher/acl$a;
.super Lcom/vungle/publisher/acj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/acl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/acl$a$b;,
        Lcom/vungle/publisher/acl$a$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Integer;

.field protected b:Lcom/vungle/publisher/Demographic$Gender;

.field protected c:Lcom/vungle/publisher/acl$a$b;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 93
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
    .line 97
    invoke-super {p0}, Lcom/vungle/publisher/acj;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    const-string v1, "age"

    iget-object v2, p0, Lcom/vungle/publisher/acl$a;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v1, "gender"

    iget-object v2, p0, Lcom/vungle/publisher/acl$a;->b:Lcom/vungle/publisher/Demographic$Gender;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v1, "location"

    iget-object v2, p0, Lcom/vungle/publisher/acl$a;->c:Lcom/vungle/publisher/acl$a$b;

    invoke-static {v2}, Lcom/vungle/publisher/ti;->a(Lcom/vungle/publisher/acj;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
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
    .line 84
    invoke-virtual {p0}, Lcom/vungle/publisher/acl$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
