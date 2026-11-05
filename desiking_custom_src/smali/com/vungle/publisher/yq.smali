.class public final Lcom/vungle/publisher/yq;
.super Lcom/vungle/publisher/xr$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/yh$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/yl$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vungle/publisher/xr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/vungle/publisher/xr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/hs;",
            ">;)",
            "Lcom/vungle/publisher/xr;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vungle/publisher/yq;->a:Lcom/vungle/publisher/yh$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/yh$a;->a(Ljava/util/List;)Lcom/vungle/publisher/yh;

    move-result-object v1

    iget-object v0, p0, Lcom/vungle/publisher/yq;->b:Lcom/vungle/publisher/yl$a;

    iget-object v0, v0, Lcom/vungle/publisher/yl$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/yl;

    iput-object p1, v0, Lcom/vungle/publisher/yl;->a:Ljava/util/List;

    invoke-super {p0, v1, v0}, Lcom/vungle/publisher/xr$a;->a(Lcom/vungle/publisher/xf;Lcom/vungle/publisher/xm;)Lcom/vungle/publisher/xr;

    move-result-object v0

    return-object v0
.end method
