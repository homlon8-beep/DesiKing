.class public Lcom/facebook/ads/internal/i/e/b/g;
.super Lcom/facebook/ads/internal/i/e/b/m;


# instance fields
.field private final b:Lcom/facebook/ads/internal/f/p;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/f/p",
            "<",
            "Lcom/facebook/ads/internal/i/e/a/i;",
            ">;"
        }
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

.field private final e:Lcom/facebook/ads/internal/f/p;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/f/p",
            "<",
            "Lcom/facebook/ads/internal/i/e/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/ads/internal/i/e/b/l;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/i/e/b/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/internal/i/e/b/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/16 v3, 0x64

    const/16 v2, 0xa

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/i/e/b/m;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/facebook/ads/internal/i/e/b/g$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/e/b/g$1;-><init>(Lcom/facebook/ads/internal/i/e/b/g;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/b/g;->b:Lcom/facebook/ads/internal/f/p;

    new-instance v0, Lcom/facebook/ads/internal/i/e/b/g$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/e/b/g$2;-><init>(Lcom/facebook/ads/internal/i/e/b/g;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/b/g;->c:Lcom/facebook/ads/internal/f/p;

    new-instance v0, Lcom/facebook/ads/internal/i/e/b/g$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/e/b/g$3;-><init>(Lcom/facebook/ads/internal/i/e/b/g;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/b/g;->d:Lcom/facebook/ads/internal/f/p;

    new-instance v0, Lcom/facebook/ads/internal/i/e/b/g$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/e/b/g$4;-><init>(Lcom/facebook/ads/internal/i/e/b/g;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/b/g;->e:Lcom/facebook/ads/internal/f/p;

    new-instance v0, Lcom/facebook/ads/internal/i/e/b/l;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/i/e/b/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/b/g;->f:Lcom/facebook/ads/internal/i/e/b/l;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/g;->f:Lcom/facebook/ads/internal/i/e/b/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/e/b/l;->setChecked(Z)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/g;->f:Lcom/facebook/ads/internal/i/e/b/l;

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/facebook/ads/internal/i/e/b/l;->setPadding(IIII)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/facebook/ads/internal/i/e/b/g;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/g;->f:Lcom/facebook/ads/internal/i/e/b/l;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/i/e/b/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/e/b/g;)Lcom/facebook/ads/internal/i/e/b/l;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/g;->f:Lcom/facebook/ads/internal/i/e/b/l;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/facebook/ads/internal/i/l;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/g;->f:Lcom/facebook/ads/internal/i/e/b/l;

    new-instance v1, Lcom/facebook/ads/internal/i/e/b/g$5;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/i/e/b/g$5;-><init>(Lcom/facebook/ads/internal/i/e/b/g;Lcom/facebook/ads/internal/i/l;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/e/b/l;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/l;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/g;->b:Lcom/facebook/ads/internal/f/p;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/g;->e:Lcom/facebook/ads/internal/f/p;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/g;->c:Lcom/facebook/ads/internal/f/p;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/g;->d:Lcom/facebook/ads/internal/f/p;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    return-void
.end method
