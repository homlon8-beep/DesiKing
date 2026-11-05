.class Lcom/facebook/ads/internal/i/i$1;
.super Lcom/facebook/ads/internal/i/e/a/h;


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

    iput-object p1, p0, Lcom/facebook/ads/internal/i/i$1;->a:Lcom/facebook/ads/internal/i/i;

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/e/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/f/n;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/i/e/a/g;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/i/i$1;->a(Lcom/facebook/ads/internal/i/e/a/g;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i/e/a/g;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i$1;->a:Lcom/facebook/ads/internal/i/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/i/i;->a(Lcom/facebook/ads/internal/i/i;)Lcom/facebook/ads/MediaViewListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/i$1;->a:Lcom/facebook/ads/internal/i/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/i/i;->a(Lcom/facebook/ads/internal/i/i;)Lcom/facebook/ads/MediaViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/i$1;->a:Lcom/facebook/ads/internal/i/i;

    invoke-static {v1}, Lcom/facebook/ads/internal/i/i;->b(Lcom/facebook/ads/internal/i/i;)Lcom/facebook/ads/MediaView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/MediaViewListener;->onPlay(Lcom/facebook/ads/MediaView;)V

    goto :goto_0
.end method
