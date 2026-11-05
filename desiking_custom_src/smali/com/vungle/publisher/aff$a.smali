.class public final Lcom/vungle/publisher/aff$a;
.super Lcom/vungle/publisher/afi$b;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/afi$b",
        "<",
        "Lcom/vungle/publisher/aff;",
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
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/vungle/publisher/afi$b;-><init>()V

    return-void
.end method

.method private c()Lcom/vungle/publisher/aff;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/vungle/publisher/aff;

    iget-object v1, p0, Lcom/vungle/publisher/aff$a;->b:Lcom/vungle/publisher/ahf;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/aff;-><init>(Lcom/vungle/publisher/ahf;)V

    return-object v0
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
    .line 45
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aff$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aff;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a()Lcom/vungle/publisher/aft$a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vungle/publisher/aff$a;->c:Lcom/vungle/publisher/afu$a;

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    new-array v0, p1, [Lcom/vungle/publisher/aff;

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aff;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    if-eqz p1, :cond_0

    .line 59
    const-string v0, "shouldStream"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ti;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 61
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-super {p0, p1}, Lcom/vungle/publisher/afi$b;->d(Lorg/json/JSONObject;)Lcom/vungle/publisher/afi;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aff;

    .line 68
    :goto_0
    iput-object v1, v0, Lcom/vungle/publisher/aff;->k:Ljava/lang/Boolean;

    .line 70
    :cond_0
    return-object v0

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/vungle/publisher/aff$a;->c()Lcom/vungle/publisher/aff;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vungle/publisher/aff$a;->c()Lcom/vungle/publisher/aff;

    move-result-object v0

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
    .line 45
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aff$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aff;

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
    .line 45
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/aff$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aff;

    move-result-object v0

    return-object v0
.end method
