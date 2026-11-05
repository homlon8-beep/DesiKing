.class public Lcom/facebook/ads/internal/i/e/b/j;
.super Lcom/facebook/ads/internal/i/e/b/d;


# instance fields
.field private final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/e/b/d;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/b/j;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/j;->b:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/j;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/j;->b:Landroid/widget/TextView;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/e/b/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/ads/R$drawable;->interstitial_video_text_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/e/b/j;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/j;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/e/b/j;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/e/b/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/ads/R$drawable;->interstitial_video_text_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/e/b/j;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
