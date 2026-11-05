.class public Lcom/facebook/ads/internal/i/d/a;
.super Lcom/facebook/ads/internal/i/e/b/m;


# instance fields
.field private final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v5, 0x41100000    # 9.0f

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/e/b/m;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/i/d/a;->b:Ljava/lang/String;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/facebook/ads/internal/i/d/a;->setPadding(IIII)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/d/a;->addView(Landroid/view/View;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/ads/R$drawable;->cta_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/d/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/d/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/ads/R$drawable;->cta_btn_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/d/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/d/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/d/a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/ads/internal/i/l;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/internal/i/l;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/facebook/ads/internal/i/d/a$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/i/d/a$1;-><init>(Lcom/facebook/ads/internal/i/d/a;Lcom/facebook/ads/internal/i/l;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/d/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
