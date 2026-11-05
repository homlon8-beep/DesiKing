.class public Lcom/facebook/ads/internal/i/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/i/h;


# instance fields
.field private final a:Lcom/facebook/ads/internal/i/e/a/h;

.field private final b:Lcom/facebook/ads/internal/i/e/a/f;

.field private final c:Lcom/facebook/ads/internal/i/e/a/c;

.field private final d:Lcom/facebook/ads/AudienceNetworkActivity;

.field private final e:Lcom/facebook/ads/internal/i/l;

.field private final f:Lcom/facebook/ads/internal/i/h$a;

.field private g:Lcom/facebook/ads/internal/util/z;

.field private h:I


# direct methods
.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/i/h$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/i/p$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/p$1;-><init>(Lcom/facebook/ads/internal/i/p;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/p;->a:Lcom/facebook/ads/internal/i/e/a/h;

    new-instance v0, Lcom/facebook/ads/internal/i/p$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/p$2;-><init>(Lcom/facebook/ads/internal/i/p;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/p;->b:Lcom/facebook/ads/internal/i/e/a/f;

    new-instance v0, Lcom/facebook/ads/internal/i/p$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/p$3;-><init>(Lcom/facebook/ads/internal/i/p;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/p;->c:Lcom/facebook/ads/internal/i/e/a/c;

    iput-object p1, p0, Lcom/facebook/ads/internal/i/p;->d:Lcom/facebook/ads/AudienceNetworkActivity;

    new-instance v0, Lcom/facebook/ads/internal/i/l;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/i/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/p;->a:Lcom/facebook/ads/internal/i/e/a/h;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/p;->b:Lcom/facebook/ads/internal/i/e/a/f;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/p;->c:Lcom/facebook/ads/internal/i/e/a/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    iput-object p2, p0, Lcom/facebook/ads/internal/i/p;->f:Lcom/facebook/ads/internal/i/h$a;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->setIsFullScreen(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->setVolume(F)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/i/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/i/h$a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/p;)Lcom/facebook/ads/internal/i/h$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->f:Lcom/facebook/ads/internal/i/h$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 8

    const/4 v2, 0x0

    const-string v0, "autoplay"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "videoURL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "videoMPD"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "videoLogger"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    const-string v1, "videoReportURL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "videoSeekTime"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/facebook/ads/internal/i/p;->h:I

    iget-object v1, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/i/l;->setAutoplay(Z)V

    new-instance v0, Lcom/facebook/ads/internal/util/z;

    new-instance v2, Lcom/facebook/ads/internal/util/h;

    invoke-direct {v2}, Lcom/facebook/ads/internal/util/h;-><init>()V

    iget-object v3, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/util/z;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/util/h;Lcom/facebook/ads/internal/i/l;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/p;->g:Lcom/facebook/ads/internal/util/z;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/internal/i/l;->setVideoMPD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/internal/i/l;->setVideoURI(Ljava/lang/String;)V

    iget v0, p0, Lcom/facebook/ads/internal/i/p;->h:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    iget v1, p0, Lcom/facebook/ads/internal/i/p;->h:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->d()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/i/l;->setControlsAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i/h$a;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->e()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->d()V

    return-void
.end method

.method public g()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->f:Lcom/facebook/ads/internal/i/h$a;

    const-string v1, "videoInterstitalEvent"

    new-instance v2, Lcom/facebook/ads/internal/i/e/a/l;

    iget v3, p0, Lcom/facebook/ads/internal/i/p;->h:I

    iget-object v4, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/i/l;->getCurrentPosition()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/facebook/ads/internal/i/e/a/l;-><init>(II)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/i/h$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/f/n;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->g:Lcom/facebook/ads/internal/util/z;

    iget-object v1, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/i/l;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/z;->b(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p;->e:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->g()V

    return-void
.end method
