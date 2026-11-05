.class public final Lcom/vungle/publisher/adh$a;
.super Lcom/vungle/publisher/ada;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/adh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ada",
        "<",
        "Lcom/vungle/publisher/adh;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vungle/publisher/ada;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    new-array v0, p1, [Lcom/vungle/publisher/adh;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/vungle/publisher/adh;

    invoke-direct {v0}, Lcom/vungle/publisher/adh;-><init>()V

    return-object v0
.end method

.method protected final synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/vungle/publisher/adh;

    invoke-direct {v0}, Lcom/vungle/publisher/adh;-><init>()V

    const-string v1, "checkpoint"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ti;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adh;->a:Ljava/lang/Float;

    const-string v1, "checkpoint"

    iget-object v2, v0, Lcom/vungle/publisher/adh;->a:Ljava/lang/Float;

    invoke-static {p1, v1, v2}, Lcom/vungle/publisher/adh$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "urls"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ti;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adh;->b:Ljava/util/List;

    const-string v1, "urls"

    iget-object v2, v0, Lcom/vungle/publisher/adh;->b:Ljava/util/List;

    invoke-static {p1, v1, v2}, Lcom/vungle/publisher/adh$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
