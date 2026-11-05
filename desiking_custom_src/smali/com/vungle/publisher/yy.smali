.class public final Lcom/vungle/publisher/yy;
.super Lcom/vungle/publisher/xr$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/yv$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/wh;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/xb;",
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
    .line 25
    invoke-direct {p0}, Lcom/vungle/publisher/xr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/ko;Ljava/lang/String;)Lcom/vungle/publisher/xr;
    .locals 2

    .prologue
    .line 29
    invoke-interface {p2}, Lcom/vungle/publisher/ko;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/vungle/publisher/yy;->b:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/xm;

    move-object v1, v0

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/yy;->a:Lcom/vungle/publisher/yv$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/yv$a;->c()Lcom/vungle/publisher/xf;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/yv;

    iput-object p1, v0, Lcom/vungle/publisher/yv;->e:Lcom/vungle/publisher/dp;

    iput-object p2, v0, Lcom/vungle/publisher/yv;->f:Lcom/vungle/publisher/ko;

    iput-object p3, v0, Lcom/vungle/publisher/xf;->b:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Lcom/vungle/publisher/xr$a;->a(Lcom/vungle/publisher/xf;Lcom/vungle/publisher/xm;)Lcom/vungle/publisher/xr;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/yy;->d:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/xm;

    move-object v1, v0

    goto :goto_0
.end method
