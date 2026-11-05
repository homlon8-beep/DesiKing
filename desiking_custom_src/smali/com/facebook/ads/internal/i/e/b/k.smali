.class public Lcom/facebook/ads/internal/i/e/b/k;
.super Lcom/facebook/ads/internal/i/e/b/d;


# instance fields
.field private final b:Lcom/facebook/ads/internal/i/e/b/l;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/facebook/ads/internal/f/p;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/f/p",
            "<",
            "Lcom/facebook/ads/internal/i/e/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/ads/internal/f/p;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/f/p",
            "<",
            "Lcom/facebook/ads/internal/i/e/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/16 v8, 0xd

    const/high16 v4, 0x42480000    # 50.0f

    const-wide v6, 0x4052c00000000000L    # 75.0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/e/b/d;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/i/e/b/k$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/e/b/k$1;-><init>(Lcom/facebook/ads/internal/i/e/b/k;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/b/k;->c:Lcom/facebook/ads/internal/f/p;

    new-instance v0, Lcom/facebook/ads/internal/i/e/b/k$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/e/b/k$2;-><init>(Lcom/facebook/ads/internal/i/e/b/k;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/b/k;->d:Lcom/facebook/ads/internal/f/p;

    new-instance v0, Lcom/facebook/ads/internal/i/e/b/l;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/i/e/b/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/b/k;->b:Lcom/facebook/ads/internal/i/e/b/l;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/e/b/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/i/e/b/k;->b:Lcom/facebook/ads/internal/i/e/b/l;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/i/e/b/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/e/b/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/ads/R$drawable;->play_btn_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/i/e/b/k;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/k;->b:Lcom/facebook/ads/internal/i/e/b/l;

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/i/e/b/k;->addView(Landroid/view/View;)V

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/i/e/b/k;->setGravity(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/i/e/b/k;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/e/b/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/ads/R$drawable;->play_btn_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/i/e/b/k;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/e/b/k;)Lcom/facebook/ads/internal/i/e/b/l;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/k;->b:Lcom/facebook/ads/internal/i/e/b/l;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/ads/internal/i/l;)V
    .locals 2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/l;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/k;->c:Lcom/facebook/ads/internal/f/p;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/l;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/k;->d:Lcom/facebook/ads/internal/f/p;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/k;->b:Lcom/facebook/ads/internal/i/e/b/l;

    new-instance v1, Lcom/facebook/ads/internal/i/e/b/k$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/i/e/b/k$3;-><init>(Lcom/facebook/ads/internal/i/e/b/k;Lcom/facebook/ads/internal/i/l;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/e/b/l;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/i/e/b/d;->a(Lcom/facebook/ads/internal/i/l;)V

    return-void
.end method
