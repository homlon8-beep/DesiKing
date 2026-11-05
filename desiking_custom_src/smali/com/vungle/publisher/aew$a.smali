.class public final Lcom/vungle/publisher/aew$a;
.super Lcom/vungle/publisher/afi$b;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/afi$b",
        "<",
        "Lcom/vungle/publisher/aew;",
        "Lcom/vungle/publisher/afu$a;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Lcom/vungle/publisher/ahf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/afu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/vungle/publisher/afi$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lorg/json/JSONObject;)Lcom/vungle/publisher/aej;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aew$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aew;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a()Lcom/vungle/publisher/aft$a;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vungle/publisher/aew$a;->c:Lcom/vungle/publisher/afu$a;

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    new-array v0, p1, [Lcom/vungle/publisher/aew;

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aew;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-super {p0, p1}, Lcom/vungle/publisher/afi$b;->d(Lorg/json/JSONObject;)Lcom/vungle/publisher/afi;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aew;

    .line 126
    const-string v1, "postBundle"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ti;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aew;->k:Ljava/lang/String;

    .line 127
    const-string v1, "preBundle"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ti;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aew;->l:Ljava/lang/String;

    .line 128
    const-string v1, "size"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ti;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aew;->m:Ljava/lang/Integer;

    .line 129
    const-string v1, "md5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aew;->n:Ljava/lang/String;

    .line 130
    const-string v1, "md5"

    iget-object v2, v0, Lcom/vungle/publisher/aew;->n:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/vungle/publisher/aew$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    :cond_0
    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/vungle/publisher/aew;

    iget-object v1, p0, Lcom/vungle/publisher/aew$a;->b:Lcom/vungle/publisher/ahf;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/aew;-><init>(Lcom/vungle/publisher/ahf;)V

    return-object v0
.end method

.method public final synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aew$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aew;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Lorg/json/JSONObject;)Lcom/vungle/publisher/afi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aew$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aew;

    move-result-object v0

    return-object v0
.end method
