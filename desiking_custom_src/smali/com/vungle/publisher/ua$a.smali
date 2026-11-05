.class public final Lcom/vungle/publisher/ua$a;
.super Lcom/vungle/publisher/ny$b;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ny$b",
        "<",
        "Lcom/vungle/publisher/ua;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field d:Lcom/vungle/publisher/ub$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ty;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/ul;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/vungle/publisher/ny$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;)Lcom/vungle/publisher/ny;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/vungle/publisher/ua;

    invoke-direct {v0, p1}, Lcom/vungle/publisher/ua;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/vungle/publisher/ua$a;->f:Lcom/vungle/publisher/ul;

    iput-object v1, v0, Lcom/vungle/publisher/ua;->c:Lcom/vungle/publisher/ul;

    return-object v0
.end method

.method protected final synthetic a(Lcom/vungle/publisher/ny;)V
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lcom/vungle/publisher/ua;

    iget-object v0, p0, Lcom/vungle/publisher/ua$a;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ua;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/String;Lcom/vungle/publisher/ny;Lcom/vungle/publisher/a;)V
    .locals 2

    .prologue
    .line 54
    check-cast p2, Lcom/vungle/publisher/ua;

    iget-object v1, p0, Lcom/vungle/publisher/ua$a;->d:Lcom/vungle/publisher/ub$a;

    iget-object v0, v1, Lcom/vungle/publisher/ub$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ub;

    iget-object v1, v1, Lcom/vungle/publisher/ub$a;->b:Lcom/vungle/publisher/ki$a;

    invoke-virtual {v1, p1}, Lcom/vungle/publisher/ki$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/ki$b;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ub;->a:Lcom/vungle/publisher/ki$b;

    invoke-static {v0, p3}, Lcom/vungle/publisher/ub;->a(Lcom/vungle/publisher/ub;Lcom/vungle/publisher/a;)Lcom/vungle/publisher/a;

    iput-object v0, p2, Lcom/vungle/publisher/ua;->b:Lcom/vungle/publisher/ub;

    invoke-virtual {p2, v0}, Lcom/vungle/publisher/ua;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
