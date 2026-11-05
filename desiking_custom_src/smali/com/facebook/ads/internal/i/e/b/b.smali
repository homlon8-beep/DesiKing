.class public Lcom/facebook/ads/internal/i/e/b/b;
.super Lcom/facebook/ads/internal/i/e/b/m;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private b:Landroid/media/AudioManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/facebook/ads/internal/i/e/a/j;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/e/b/m;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/i/e/b/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/e/b/b$1;-><init>(Lcom/facebook/ads/internal/i/e/b/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/b/b;->c:Lcom/facebook/ads/internal/i/e/a/j;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/e/b/b;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/b;->b:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/e/b/b;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/e/b/b;->b:Landroid/media/AudioManager;

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/facebook/ads/internal/i/l;)V
    .locals 2
    .param p1    # Lcom/facebook/ads/internal/i/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/l;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/b;->c:Lcom/facebook/ads/internal/i/e/a/j;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/i/e/b/m;->a(Lcom/facebook/ads/internal/i/l;)V

    return-void
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/b;->b:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/b/b;->b:Landroid/media/AudioManager;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/e/b/b;->getVideoView()Lcom/facebook/ads/internal/i/l;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gtz p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/e/b/b;->getVideoView()Lcom/facebook/ads/internal/i/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->e()V

    goto :goto_0
.end method
