.class public final Lcom/vungle/publisher/afu$a;
.super Lcom/vungle/publisher/aft$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/afu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/aft$a",
        "<",
        "Lcom/vungle/publisher/afu;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/adh$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/vungle/publisher/aft$a;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/vungle/publisher/afu;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    if-eqz p1, :cond_0

    .line 104
    new-instance v1, Lcom/vungle/publisher/afu;

    invoke-direct {v1}, Lcom/vungle/publisher/afu;-><init>()V

    .line 105
    const-string v0, "postroll_click"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ti;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/afu;->a:Ljava/util/List;

    .line 106
    const-string v0, "video_click"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ti;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/afu;->b:Ljava/util/List;

    .line 107
    const-string v0, "video_close"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ti;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/afu;->c:Ljava/util/List;

    .line 108
    const-string v0, "error"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ti;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/afu;->d:Ljava/util/List;

    .line 109
    const-string v0, "mute"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ti;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/afu;->e:Ljava/util/List;

    .line 110
    const-string v0, "pause"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ti;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/afu;->f:Ljava/util/List;

    .line 111
    iget-object v0, p0, Lcom/vungle/publisher/afu$a;->a:Lcom/vungle/publisher/adh$a;

    const-string v2, "play_percentage"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/adh$a;->a(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/adh;

    iput-object v0, v1, Lcom/vungle/publisher/afu;->g:[Lcom/vungle/publisher/adh;

    .line 112
    const-string v0, "postroll_view"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ti;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/afu;->h:Ljava/util/List;

    .line 113
    const-string v0, "resume"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ti;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/afu;->i:Ljava/util/List;

    .line 114
    const-string v0, "unmute"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ti;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/afu;->j:Ljava/util/List;

    move-object v0, v1

    .line 116
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    new-array v0, p1, [Lcom/vungle/publisher/afu;

    return-object v0
.end method

.method public final synthetic b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aft;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/vungle/publisher/afu$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/afu;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/vungle/publisher/afu;

    invoke-direct {v0}, Lcom/vungle/publisher/afu;-><init>()V

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
    .line 93
    invoke-direct {p0, p1}, Lcom/vungle/publisher/afu$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/afu;

    move-result-object v0

    return-object v0
.end method
