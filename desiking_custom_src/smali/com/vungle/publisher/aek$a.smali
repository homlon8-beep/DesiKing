.class public final Lcom/vungle/publisher/aek$a;
.super Lcom/vungle/publisher/aej$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/aej$a",
        "<",
        "Lcom/vungle/publisher/aek;",
        "Lcom/vungle/publisher/aft$a",
        "<*>;>;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Lcom/vungle/publisher/ahf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/p$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vungle/publisher/aej$a;-><init>()V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aek;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/vungle/publisher/aej$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/aej;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aek;

    .line 48
    iput-object p1, v0, Lcom/vungle/publisher/aek;->l:Lorg/json/JSONObject;

    .line 49
    invoke-virtual {v0}, Lcom/vungle/publisher/aek;->b()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/vungle/publisher/aek;->k:Z

    .line 50
    return-object v0

    .line 49
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
    .line 35
    invoke-direct {p0, p1}, Lcom/vungle/publisher/aek$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aek;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    new-array v0, p1, [Lcom/vungle/publisher/aek;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/vungle/publisher/aek;

    iget-object v1, p0, Lcom/vungle/publisher/aek$a;->b:Lcom/vungle/publisher/ahf;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/aek;-><init>(Lcom/vungle/publisher/ahf;)V

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
    .line 35
    invoke-direct {p0, p1}, Lcom/vungle/publisher/aek$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/aek;

    move-result-object v0

    return-object v0
.end method
