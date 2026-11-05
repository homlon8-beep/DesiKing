.class public final Lcom/vungle/publisher/aav;
.super Lcom/vungle/publisher/xr$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/aap$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/aas;",
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
    .line 20
    invoke-direct {p0}, Lcom/vungle/publisher/xr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/yu;)Lcom/vungle/publisher/xr;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/aav;->a:Lcom/vungle/publisher/aap$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/aap$a;->d()Lcom/vungle/publisher/aap;

    move-result-object v1

    iget-object v0, p0, Lcom/vungle/publisher/aav;->b:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/xm;

    invoke-super {p0, v1, v0, p1}, Lcom/vungle/publisher/xr$a;->a(Lcom/vungle/publisher/xf;Lcom/vungle/publisher/xm;Lcom/vungle/publisher/yu;)Lcom/vungle/publisher/xr;

    move-result-object v0

    return-object v0
.end method
