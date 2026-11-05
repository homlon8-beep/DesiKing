.class public final Lcom/vungle/publisher/afz$a;
.super Lcom/vungle/publisher/ada;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/afz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ada",
        "<",
        "Lcom/vungle/publisher/afz;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vungle/publisher/ada;-><init>()V

    return-void
.end method

.method protected static a(Lorg/json/JSONObject;)Lcom/vungle/publisher/afz;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    new-instance v1, Lcom/vungle/publisher/afz;

    invoke-direct {v1}, Lcom/vungle/publisher/afz;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/vungle/publisher/afz;->a:Ljava/util/Map;

    .line 36
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 37
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 40
    iget-object v4, v1, Lcom/vungle/publisher/afz;->a:Ljava/util/Map;

    new-instance v5, Lcom/vungle/publisher/afy;

    invoke-direct {v5, v0, v3}, Lcom/vungle/publisher/afy;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 43
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    new-array v0, p1, [Lcom/vungle/publisher/afz;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/vungle/publisher/afz;

    invoke-direct {v0}, Lcom/vungle/publisher/afz;-><init>()V

    return-object v0
.end method

.method protected final synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p1}, Lcom/vungle/publisher/afz$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/afz;

    move-result-object v0

    return-object v0
.end method
