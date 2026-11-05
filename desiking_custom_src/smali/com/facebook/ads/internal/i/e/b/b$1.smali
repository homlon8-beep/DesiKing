.class Lcom/facebook/ads/internal/i/e/b/b$1;
.super Lcom/facebook/ads/internal/i/e/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/i/e/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/i/e/b/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/i/e/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/e/b/b$1;->a:Lcom/facebook/ads/internal/i/e/b/b;

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/e/a/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/f/n;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/i/e/a/i;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/i/e/b/b$1;->a(Lcom/facebook/ads/internal/i/e/a/i;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i/e/a/i;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/b$1;->a:Lcom/facebook/ads/internal/i/e/b/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/i/e/b/b;->a(Lcom/facebook/ads/internal/i/e/b/b;)Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/b$1;->a:Lcom/facebook/ads/internal/i/e/b/b;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/b$1;->a:Lcom/facebook/ads/internal/i/e/b/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/e/b/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/i/e/b/b;->a(Lcom/facebook/ads/internal/i/e/b/b;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/b$1;->a:Lcom/facebook/ads/internal/i/e/b/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/i/e/b/b;->a(Lcom/facebook/ads/internal/i/e/b/b;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/b$1;->a:Lcom/facebook/ads/internal/i/e/b/b;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    return-void
.end method
