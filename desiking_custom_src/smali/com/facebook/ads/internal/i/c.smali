.class public Lcom/facebook/ads/internal/i/c;
.super Lcom/facebook/ads/internal/i/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/i/c$a;,
        Lcom/facebook/ads/internal/i/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/i/c$b;

.field private b:Lcom/facebook/ads/internal/util/ac;

.field private c:Lcom/facebook/ads/internal/j/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/i/c$b;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/i/c;->a:Lcom/facebook/ads/internal/i/c$b;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    new-instance v0, Lcom/facebook/ads/internal/i/c$a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/c$a;-><init>(Lcom/facebook/ads/internal/i/c;)V

    const-string v1, "AdControl"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/i/c;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/util/ac;

    invoke-direct {v0}, Lcom/facebook/ads/internal/util/ac;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/c;->b:Lcom/facebook/ads/internal/util/ac;

    new-instance v0, Lcom/facebook/ads/internal/j/a;

    new-instance v1, Lcom/facebook/ads/internal/i/c$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/ads/internal/i/c$1;-><init>(Lcom/facebook/ads/internal/i/c;Lcom/facebook/ads/internal/i/c$b;)V

    invoke-direct {v0, p0, p3, v1}, Lcom/facebook/ads/internal/j/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/j/a$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/c;->c:Lcom/facebook/ads/internal/j/a;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/c;)Lcom/facebook/ads/internal/util/ac;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->b:Lcom/facebook/ads/internal/util/ac;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/i/c;)Lcom/facebook/ads/internal/j/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->c:Lcom/facebook/ads/internal/j/a;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/i/c;)Lcom/facebook/ads/internal/i/c$b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->a:Lcom/facebook/ads/internal/i/c$b;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->c:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/j/a;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->c:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/internal/j/a;->b(I)V

    return-void
.end method

.method protected b()Landroid/webkit/WebViewClient;
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/i/c$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/c$2;-><init>(Lcom/facebook/ads/internal/i/c;)V

    return-object v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->c:Lcom/facebook/ads/internal/j/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->c:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/i/c;->c:Lcom/facebook/ads/internal/j/a;

    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/internal/util/j;->a(Landroid/webkit/WebView;)V

    invoke-super {p0}, Lcom/facebook/ads/internal/i/b;->destroy()V

    return-void
.end method

.method public getTouchData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->b:Lcom/facebook/ads/internal/util/ac;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/ac;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getViewabilityChecker()Lcom/facebook/ads/internal/j/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->c:Lcom/facebook/ads/internal/j/a;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->b:Lcom/facebook/ads/internal/util/ac;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/internal/util/ac;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/i/b;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/i/b;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->a:Lcom/facebook/ads/internal/i/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->a:Lcom/facebook/ads/internal/i/c$b;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/i/c$b;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->c:Lcom/facebook/ads/internal/j/a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->c:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c;->c:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->b()V

    goto :goto_0
.end method
