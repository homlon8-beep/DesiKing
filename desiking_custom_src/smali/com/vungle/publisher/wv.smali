.class public final Lcom/vungle/publisher/wv;
.super Lcom/vungle/publisher/xr$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/wn$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/wq$a;
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
.method public final a(Ljava/lang/String;Lcom/vungle/publisher/p;Ljava/lang/Integer;Lcom/vungle/publisher/fr$b;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/publisher/yu;)Lcom/vungle/publisher/xr;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/wv;->a:Lcom/vungle/publisher/wn$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/wn$a;->c()Lcom/vungle/publisher/xf;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/wn;

    iput-object p5, v0, Lcom/vungle/publisher/xf;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/publisher/wv;->b:Lcom/vungle/publisher/wq$a;

    iget-object v1, v1, Lcom/vungle/publisher/wq$a;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/wq;

    iput-object p1, v1, Lcom/vungle/publisher/wq;->a:Ljava/lang/String;

    iput-object p2, v1, Lcom/vungle/publisher/wq;->d:Lcom/vungle/publisher/p;

    iput-object p6, v1, Lcom/vungle/publisher/wq;->b:Ljava/lang/String;

    iput-object p4, v1, Lcom/vungle/publisher/wq;->c:Lcom/vungle/publisher/fr$b;

    iput-object p3, v1, Lcom/vungle/publisher/wq;->e:Ljava/lang/Integer;

    invoke-super {p0, v0, v1, p7}, Lcom/vungle/publisher/xr$a;->a(Lcom/vungle/publisher/xf;Lcom/vungle/publisher/xm;Lcom/vungle/publisher/yu;)Lcom/vungle/publisher/xr;

    move-result-object v0

    return-object v0
.end method
