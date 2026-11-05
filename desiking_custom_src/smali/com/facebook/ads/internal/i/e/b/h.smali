.class public Lcom/facebook/ads/internal/i/e/b/h;
.super Lcom/facebook/ads/internal/i/e/b/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/i/e/b/h$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/facebook/ads/internal/i/e/b/h$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:I

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/facebook/ads/internal/f/p;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/f/p",
            "<",
            "Lcom/facebook/ads/internal/i/e/a/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, -0x2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/e/b/m;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/i/e/b/h$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/e/b/h$1;-><init>(Lcom/facebook/ads/internal/i/e/b/h;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/b/h;->e:Lcom/facebook/ads/internal/f/p;

    iput p2, p0, Lcom/facebook/ads/internal/i/e/b/h;->c:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/b/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/facebook/ads/internal/i/e/b/h$a;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/i/e/b/h$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/e/b/h;->b:Lcom/facebook/ads/internal/i/e/b/h$a;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/h;->b:Lcom/facebook/ads/internal/i/e/b/h$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/e/b/h;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/ads/R$string;->com_facebook_skip_ad_in:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/e/b/h$a;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/h;->b:Lcom/facebook/ads/internal/i/e/b/h$a;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/i/e/b/h;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/e/b/h;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/i/e/b/h;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/i/e/b/h;->c:I

    return v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/i/e/b/h;)Lcom/facebook/ads/internal/i/e/b/h$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/h;->b:Lcom/facebook/ads/internal/i/e/b/h$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/ads/internal/i/l;)V
    .locals 2

    invoke-virtual {p1}, Lcom/facebook/ads/internal/i/l;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/h;->e:Lcom/facebook/ads/internal/f/p;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/h;->b:Lcom/facebook/ads/internal/i/e/b/h$a;

    new-instance v1, Lcom/facebook/ads/internal/i/e/b/h$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/i/e/b/h$2;-><init>(Lcom/facebook/ads/internal/i/e/b/h;Lcom/facebook/ads/internal/i/l;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/e/b/h$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a()Z
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/h;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
