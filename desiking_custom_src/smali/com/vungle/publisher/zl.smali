.class public final Lcom/vungle/publisher/zl;
.super Lcom/vungle/publisher/xr$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/zf$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/zi;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vungle/publisher/xr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/xr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dw",
            "<****>;)",
            "Lcom/vungle/publisher/xr;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vungle/publisher/zl;->a:Lcom/vungle/publisher/zf$b;

    invoke-virtual {p1}, Lcom/vungle/publisher/dw;->b()Lcom/vungle/publisher/dw$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/publisher/dw$a;->f()Lcom/vungle/publisher/p;

    move-result-object v1

    new-instance v2, Lcom/vungle/publisher/zf$b$1;

    invoke-direct {v2, v0, p1}, Lcom/vungle/publisher/zf$b$1;-><init>(Lcom/vungle/publisher/zf$b;Lcom/vungle/publisher/dw;)V

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/zf$b$1;->a(Lcom/vungle/publisher/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/zf;

    iget-object v1, p0, Lcom/vungle/publisher/zl;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/xm;

    invoke-super {p0, v0, v1}, Lcom/vungle/publisher/xr$a;->a(Lcom/vungle/publisher/xf;Lcom/vungle/publisher/xm;)Lcom/vungle/publisher/xr;

    move-result-object v0

    return-object v0
.end method
