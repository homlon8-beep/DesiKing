.class Lcom/facebook/ads/internal/i/i$3;
.super Lcom/facebook/ads/internal/i/e/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/i/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/i/i;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/i$3;->a:Lcom/facebook/ads/internal/i/i;

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/e/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/f/n;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/i/e/a/i;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/i/i$3;->a(Lcom/facebook/ads/internal/i/e/a/i;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i/e/a/i;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i$3;->a:Lcom/facebook/ads/internal/i/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/i/i;->c(Lcom/facebook/ads/internal/i/i;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i$3;->a:Lcom/facebook/ads/internal/i/i;

    new-instance v1, Lcom/facebook/ads/internal/i/i$3$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/i/i$3$1;-><init>(Lcom/facebook/ads/internal/i/i$3;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/i;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
