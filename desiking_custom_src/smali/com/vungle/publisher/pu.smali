.class public final Lcom/vungle/publisher/pu;
.super Lcom/vungle/publisher/nx;
.source "vungle"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/pu$a;,
        Lcom/vungle/publisher/pu$c;,
        Lcom/vungle/publisher/pu$d;,
        Lcom/vungle/publisher/pu$b;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Landroid/graphics/Bitmap;

.field private final C:Landroid/os/Handler;

.field private final D:Ljava/lang/Runnable;

.field private E:Lcom/vungle/publisher/pu$c;

.field private F:Ljava/lang/String;

.field private G:I

.field private H:Z

.field private I:I

.field private J:Z

.field private K:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private L:I

.field private M:I

.field f:Lcom/vungle/publisher/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/kp",
            "<*>;"
        }
    .end annotation
.end field

.field g:Landroid/widget/ImageView;

.field h:Landroid/animation/ObjectAnimator;

.field i:Landroid/view/TouchDelegate;

.field j:Lcom/vungle/publisher/og;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/pu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/pl$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lcom/vungle/publisher/po$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field o:Lcom/vungle/publisher/pc$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field p:Lcom/vungle/publisher/qs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field q:Lcom/vungle/publisher/ahi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field r:Lcom/vungle/publisher/de;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field s:Lcom/vungle/publisher/pu$c$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field t:Lcom/vungle/publisher/mx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private u:Landroid/widget/ImageView;

.field private v:Lcom/vungle/publisher/po;

.field private w:Lcom/vungle/publisher/pc;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/VideoView;

.field private z:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/vungle/publisher/nx;-><init>()V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/pu;->C:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/vungle/publisher/pu$d;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/pu$d;-><init>(Lcom/vungle/publisher/pu;)V

    iput-object v0, p0, Lcom/vungle/publisher/pu;->D:Ljava/lang/Runnable;

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/pu;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/pu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vungle/publisher/pu;->F:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Landroid/view/View;II)V
    .locals 4

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 559
    mul-int/lit16 v2, p1, 0x3e8

    const/4 v0, 0x0

    add-int/lit16 v3, v2, -0x2ee

    if-le p2, v3, :cond_0

    if-lt p2, v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 560
    :cond_0
    :goto_0
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 561
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 563
    :cond_1
    return-void

    .line 559
    :cond_2
    sub-int v0, p2, v3

    int-to-float v0, v0

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/vungle/publisher/pu;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/vungle/publisher/pu;->H:Z

    return v0
.end method

.method static synthetic b(Lcom/vungle/publisher/pu;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/pu;->f(Z)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/vungle/publisher/pu;->C:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vungle/publisher/pu;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method

.method static synthetic c(Lcom/vungle/publisher/pu;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/vungle/publisher/pu;->f()V

    return-void
.end method

.method static synthetic d(Lcom/vungle/publisher/pu;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/pu;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 440
    iget-object v2, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/vungle/publisher/pu;->a:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vungle/publisher/pu;->a:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 442
    const-string v0, "VungleAd"

    const-string v1, "Confirm dialog showing. Starting video briefly."

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    iget v1, p0, Lcom/vungle/publisher/pu;->M:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 444
    iget-object v0, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 445
    iget-object v0, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 460
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v0

    .line 441
    goto :goto_0

    .line 448
    :cond_2
    const-string v2, "VungleAd"

    const-string v3, "Starting video"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-boolean v2, p0, Lcom/vungle/publisher/pu;->J:Z

    if-nez v2, :cond_3

    move v0, v1

    .line 450
    :cond_3
    iput-boolean v1, p0, Lcom/vungle/publisher/pu;->J:Z

    .line 451
    iget-object v1, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vungle/publisher/pu;->b(I)V

    .line 452
    iget-object v1, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 453
    iget-object v1, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    iget v2, p0, Lcom/vungle/publisher/pu;->M:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 454
    iget-object v1, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 455
    iget-object v1, p0, Lcom/vungle/publisher/pu;->C:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vungle/publisher/pu;->D:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 456
    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/vungle/publisher/pu;->k:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/bg;

    invoke-direct {v1}, Lcom/vungle/publisher/bg;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private d(Z)V
    .locals 4

    .prologue
    .line 538
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/pu;->F:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 539
    :goto_0
    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "cta button "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iput-boolean v0, p0, Lcom/vungle/publisher/pu;->H:Z

    .line 541
    iget-object v1, p0, Lcom/vungle/publisher/pu;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vungle/publisher/pu;->A:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 542
    return-void

    .line 538
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 539
    :cond_1
    const-string v1, "disabled"

    goto :goto_1

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/vungle/publisher/pu;->B:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method static synthetic e(Lcom/vungle/publisher/pu;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    return-object v0
.end method

.method private e(Z)V
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/vungle/publisher/pu;->H:Z

    if-eq p1, v0, :cond_0

    .line 546
    invoke-direct {p0, p1}, Lcom/vungle/publisher/pu;->d(Z)V

    .line 548
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/vungle/publisher/pu;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/vungle/publisher/pu;)Lcom/vungle/publisher/po;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/pu;->v:Lcom/vungle/publisher/po;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/pu;->b(Z)V

    .line 596
    iget-object v0, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 597
    iget-object v0, p0, Lcom/vungle/publisher/pu;->k:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/bk;

    invoke-direct {v1}, Lcom/vungle/publisher/bk;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 598
    return-void
.end method

.method private f(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 601
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/vungle/publisher/pu;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/pu;->b:Lcom/vungle/publisher/a;

    invoke-interface {v0}, Lcom/vungle/publisher/a;->isBackButtonImmediatelyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 602
    :goto_1
    iget-object v0, p0, Lcom/vungle/publisher/pu;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    const-string v0, "VungleAd"

    const-string v1, "exiting video"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/vungle/publisher/pu;->b:Lcom/vungle/publisher/a;

    invoke-interface {v0}, Lcom/vungle/publisher/a;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 607
    invoke-virtual {p0}, Lcom/vungle/publisher/pu;->onPause()V

    .line 608
    iget-object v0, p0, Lcom/vungle/publisher/pu;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vungle/publisher/pu;->a:Landroid/app/AlertDialog;

    :goto_2
    iput-object v0, p0, Lcom/vungle/publisher/pu;->a:Landroid/app/AlertDialog;

    .line 609
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 617
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v1

    .line 601
    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/vungle/publisher/pu;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 608
    :cond_4
    iget-object v0, p0, Lcom/vungle/publisher/pu;->e:Lcom/vungle/publisher/oe;

    invoke-virtual {p0}, Lcom/vungle/publisher/pu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/pu;->b:Lcom/vungle/publisher/a;

    new-instance v3, Lcom/vungle/publisher/pu$4;

    invoke-direct {v3, p0}, Lcom/vungle/publisher/pu$4;-><init>(Lcom/vungle/publisher/pu;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/oe;->a(Landroid/content/Context;Lcom/vungle/publisher/a;Lcom/vungle/publisher/oe$a;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    .line 612
    :cond_5
    iget-object v0, p0, Lcom/vungle/publisher/pu;->u:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    invoke-direct {p0}, Lcom/vungle/publisher/pu;->f()V

    goto :goto_3
.end method

.method static synthetic g(Lcom/vungle/publisher/pu;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/pu;->C:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/vungle/publisher/pu;)Lcom/vungle/publisher/pc;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/pu;->w:Lcom/vungle/publisher/pc;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 503
    const-string v0, "VungleAd"

    const-string v1, "back button pressed"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vungle/publisher/pu;->f(Z)V

    .line 505
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/vungle/publisher/nx;->a(Z)V

    .line 419
    if-eqz p1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/vungle/publisher/pu;->onResume()V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/publisher/pu;->onPause()V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 2

    .prologue
    .line 621
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/vungle/publisher/pu;->t:Lcom/vungle/publisher/mx;

    invoke-virtual {v0}, Lcom/vungle/publisher/mx;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 623
    const-string v0, "VungleAd"

    const-string v1, "volume up - unmuting"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/vungle/publisher/pu;->t:Lcom/vungle/publisher/mx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/mx;->a(Z)V

    .line 627
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    const-string v0, "videoFragment"

    return-object v0
.end method

.method final b(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 520
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/vungle/publisher/pu;->f:Lcom/vungle/publisher/kp;

    iget-object v3, v3, Lcom/vungle/publisher/kp;->h:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/vungle/publisher/pu;->f:Lcom/vungle/publisher/kp;

    iget-object v3, v3, Lcom/vungle/publisher/kp;->i:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vungle/publisher/pu;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/vungle/publisher/pu;->e(Z)V

    .line 521
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/vungle/publisher/pu;->b:Lcom/vungle/publisher/a;

    invoke-interface {v0}, Lcom/vungle/publisher/a;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vungle/publisher/pu;->f:Lcom/vungle/publisher/kp;

    iget-object v0, v0, Lcom/vungle/publisher/kp;->k:Ljava/lang/Integer;

    :goto_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/vungle/publisher/pu;->u:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p1}, Lcom/vungle/publisher/pu;->a(Landroid/view/View;II)V

    .line 522
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 520
    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/vungle/publisher/pu;->g:Landroid/widget/ImageView;

    iget v3, p0, Lcom/vungle/publisher/pu;->I:I

    invoke-static {v2, v3, p1}, Lcom/vungle/publisher/pu;->a(Landroid/view/View;II)V

    iget v2, p0, Lcom/vungle/publisher/pu;->G:I

    mul-int/lit16 v2, v2, 0x3e8

    if-lt p1, v2, :cond_4

    :goto_3
    invoke-direct {p0, v0}, Lcom/vungle/publisher/pu;->e(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    .line 521
    :cond_5
    iget-object v0, p0, Lcom/vungle/publisher/pu;->f:Lcom/vungle/publisher/kp;

    iget-object v0, v0, Lcom/vungle/publisher/kp;->l:Ljava/lang/Integer;

    goto :goto_2
.end method

.method final b(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 472
    invoke-direct {p0}, Lcom/vungle/publisher/pu;->c()V

    .line 473
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/pu;->c(Z)I

    move-result v1

    .line 474
    iget-object v2, p0, Lcom/vungle/publisher/pu;->k:Lcom/vungle/publisher/rq;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/vungle/publisher/af;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/af;-><init>(I)V

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 476
    iput-boolean v3, p0, Lcom/vungle/publisher/pu;->J:Z

    iget-object v0, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->seekTo(I)V

    iput v3, p0, Lcom/vungle/publisher/pu;->L:I

    iput v3, p0, Lcom/vungle/publisher/pu;->M:I

    iget-object v0, p0, Lcom/vungle/publisher/pu;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 477
    return-void

    .line 474
    :cond_0
    new-instance v0, Lcom/vungle/publisher/aj;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/aj;-><init>(I)V

    goto :goto_0
.end method

.method final c(Z)I
    .locals 2

    .prologue
    .line 481
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 482
    :goto_0
    iget v1, p0, Lcom/vungle/publisher/pu;->L:I

    .line 483
    if-le v0, v1, :cond_1

    .line 484
    iput v0, p0, Lcom/vungle/publisher/pu;->L:I

    .line 486
    :goto_1
    return v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/nx;->onActivityCreated(Landroid/os/Bundle;)V

    .line 153
    if-eqz p1, :cond_0

    const-string v0, "VungleAd"

    const-string v3, "Restoring saved state"

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/a;

    iput-object v0, p0, Lcom/vungle/publisher/pu;->b:Lcom/vungle/publisher/a;

    const-string v0, "adStarted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/publisher/pu;->J:Z

    const-string v0, "currentVideoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vungle/publisher/pu;->M:I

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcom/vungle/publisher/pu;->J:Z

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/vungle/publisher/pu;->k:Lcom/vungle/publisher/rq;

    new-instance v3, Lcom/vungle/publisher/bm;

    invoke-direct {v3}, Lcom/vungle/publisher/bm;-><init>()V

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/vungle/publisher/pu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 158
    iget-object v0, p0, Lcom/vungle/publisher/pu;->s:Lcom/vungle/publisher/pu$c$a;

    iget-object v4, v0, Lcom/vungle/publisher/pu$c$a;->a:Lcom/vungle/publisher/pu$c;

    iput-object p0, v4, Lcom/vungle/publisher/pu$c;->a:Lcom/vungle/publisher/pu;

    iget-object v0, v0, Lcom/vungle/publisher/pu$c$a;->a:Lcom/vungle/publisher/pu$c;

    iput-object v0, p0, Lcom/vungle/publisher/pu;->E:Lcom/vungle/publisher/pu$c;

    .line 160
    new-instance v4, Landroid/widget/VideoView;

    invoke-direct {v4, v3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    .line 161
    new-instance v5, Lcom/vungle/publisher/pf;

    invoke-direct {v5, v3}, Lcom/vungle/publisher/pf;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vungle/publisher/pu;->u:Landroid/widget/ImageView;

    .line 162
    iget-object v0, p0, Lcom/vungle/publisher/pu;->o:Lcom/vungle/publisher/pc$a;

    iget-object v6, p0, Lcom/vungle/publisher/pu;->b:Lcom/vungle/publisher/a;

    invoke-interface {v6}, Lcom/vungle/publisher/a;->isSoundEnabled()Z

    move-result v6

    new-instance v7, Lcom/vungle/publisher/pc;

    iget-object v8, v0, Lcom/vungle/publisher/pc$a;->a:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/vungle/publisher/pc;-><init>(Landroid/content/Context;B)V

    iget-object v8, v0, Lcom/vungle/publisher/pc$a;->b:Lcom/vungle/publisher/ahi;

    const-string v9, "vg_mute_on.png"

    invoke-virtual {v8, v9}, Lcom/vungle/publisher/ahi;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vungle/publisher/pc;->a(Lcom/vungle/publisher/pc;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v8, v0, Lcom/vungle/publisher/pc$a;->b:Lcom/vungle/publisher/ahi;

    const-string v9, "vg_mute_off.png"

    invoke-virtual {v8, v9}, Lcom/vungle/publisher/ahi;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vungle/publisher/pc;->b(Lcom/vungle/publisher/pc;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v8, v0, Lcom/vungle/publisher/pc$a;->c:Lcom/vungle/publisher/mx;

    invoke-static {v7, v8}, Lcom/vungle/publisher/pc;->a(Lcom/vungle/publisher/pc;Lcom/vungle/publisher/mx;)Lcom/vungle/publisher/mx;

    invoke-static {v7, v6}, Lcom/vungle/publisher/pc;->a(Lcom/vungle/publisher/pc;Z)Z

    iget-object v6, v0, Lcom/vungle/publisher/pc$a;->d:Lcom/vungle/publisher/rq;

    invoke-static {v7, v6}, Lcom/vungle/publisher/pc;->a(Lcom/vungle/publisher/pc;Lcom/vungle/publisher/rq;)Lcom/vungle/publisher/rq;

    new-instance v6, Lcom/vungle/publisher/pc$a$1;

    invoke-direct {v6, v0, v7}, Lcom/vungle/publisher/pc$a$1;-><init>(Lcom/vungle/publisher/pc$a;Lcom/vungle/publisher/pc;)V

    invoke-virtual {v7, v6}, Lcom/vungle/publisher/pc;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v7, p0, Lcom/vungle/publisher/pu;->w:Lcom/vungle/publisher/pc;

    .line 163
    iget-object v0, p0, Lcom/vungle/publisher/pu;->m:Lcom/vungle/publisher/pl$a;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Lcom/vungle/publisher/pl$a;->a(Landroid/content/Context;Z)Lcom/vungle/publisher/pl;

    move-result-object v6

    .line 164
    iget-object v0, p0, Lcom/vungle/publisher/pu;->n:Lcom/vungle/publisher/po$a;

    new-instance v8, Lcom/vungle/publisher/po;

    iget-object v9, v0, Lcom/vungle/publisher/po$a;->a:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/vungle/publisher/po;-><init>(Landroid/content/Context;B)V

    invoke-static {v8}, Lcom/vungle/publisher/po;->a(Lcom/vungle/publisher/po;)I

    iget-object v0, v0, Lcom/vungle/publisher/po$a;->b:Lcom/vungle/publisher/og;

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lcom/vungle/publisher/og;->a(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v8, v0}, Lcom/vungle/publisher/po;->a(Lcom/vungle/publisher/po;I)I

    iput-object v8, p0, Lcom/vungle/publisher/pu;->v:Lcom/vungle/publisher/po;

    .line 166
    iget-object v0, p0, Lcom/vungle/publisher/pu;->z:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 167
    invoke-virtual {v4}, Landroid/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 169
    const/4 v9, -0x1

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 170
    const/4 v9, -0x1

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 171
    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 174
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-direct {v9, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 175
    iget-object v0, p0, Lcom/vungle/publisher/pu;->z:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 176
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    const/4 v10, -0x1

    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 178
    const/4 v10, -0x2

    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 179
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    const-string v0, "vg_close.png"

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/nx;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    :cond_2
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 185
    const/16 v10, 0x9

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 186
    const/16 v10, 0xf

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 187
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 190
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 191
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/vungle/publisher/pl;->setVisibility(I)V

    .line 192
    invoke-virtual {v6}, Lcom/vungle/publisher/pl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 193
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 197
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-virtual {v8}, Lcom/vungle/publisher/po;->getProgressBarHeight()I

    move-result v10

    invoke-direct {v0, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 199
    iget-object v6, p0, Lcom/vungle/publisher/pu;->z:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 203
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vungle/publisher/pu;->x:Landroid/widget/RelativeLayout;

    .line 204
    iget-object v0, p0, Lcom/vungle/publisher/pu;->z:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 206
    const/4 v3, -0x1

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 207
    const/4 v3, -0x2

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 208
    const/4 v3, 0x2

    const/4 v8, 0x1

    invoke-virtual {v0, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 211
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 212
    invoke-virtual {v7}, Lcom/vungle/publisher/pc;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 213
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 214
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 217
    iget-object v0, p0, Lcom/vungle/publisher/pu;->j:Lcom/vungle/publisher/og;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/og;->a(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 218
    iget-object v3, p0, Lcom/vungle/publisher/pu;->j:Lcom/vungle/publisher/og;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/vungle/publisher/og;->a(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 219
    invoke-virtual {v9, v0, v3, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 220
    invoke-virtual {v6, v0, v3, v0, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 221
    iget-object v0, p0, Lcom/vungle/publisher/pu;->u:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/vungle/publisher/pu;->w:Lcom/vungle/publisher/pc;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 223
    const-string v0, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "video play URI = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vungle/publisher/pu;->f:Lcom/vungle/publisher/kp;

    invoke-virtual {v6}, Lcom/vungle/publisher/kp;->q()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/vungle/publisher/pu;->f:Lcom/vungle/publisher/kp;

    invoke-virtual {v0}, Lcom/vungle/publisher/kp;->q()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 226
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/vungle/publisher/pu;->f:Lcom/vungle/publisher/kp;

    iget-object v3, v3, Lcom/vungle/publisher/kp;->h:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "vg_cta.png"

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/pu;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/pu;->A:Landroid/graphics/Bitmap;

    const-string v0, "vg_cta_disabled.png"

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/pu;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/pu;->B:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/vungle/publisher/pu;->f:Lcom/vungle/publisher/kp;

    iget-object v3, v0, Lcom/vungle/publisher/kp;->f:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/vungle/publisher/pu;->f:Lcom/vungle/publisher/kp;

    iget-object v0, v0, Lcom/vungle/publisher/kp;->j:Ljava/lang/Integer;

    if-nez v3, :cond_5

    if-eqz v0, :cond_c

    const-string v3, "VungleAd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "overriding cta enabled from null to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    :goto_0
    const-string v6, "VungleAd"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cta shown at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds; enabled at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_7

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/vungle/publisher/pu;->G:I

    if-nez v3, :cond_8

    move v0, v2

    :goto_2
    iput v0, p0, Lcom/vungle/publisher/pu;->I:I

    new-instance v3, Lcom/vungle/publisher/pf;

    invoke-virtual {p0}, Lcom/vungle/publisher/pu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/vungle/publisher/pf;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vungle/publisher/pu;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vungle/publisher/pu;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/vungle/publisher/pu;->f:Lcom/vungle/publisher/kp;

    iget-object v0, v0, Lcom/vungle/publisher/kp;->e:Ljava/lang/Float;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_9

    :cond_3
    const-string v0, "VungleAd"

    const-string v6, "cta clickable area not scaled"

    invoke-static {v0, v6}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/vungle/publisher/pu;->f:Lcom/vungle/publisher/kp;

    iget-object v6, v6, Lcom/vungle/publisher/kp;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/vungle/publisher/pu;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v3, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/pu;->h:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/vungle/publisher/pu;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x2ee

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :goto_4
    new-instance v0, Lcom/vungle/publisher/pu$3;

    invoke-direct {v0, p0, v3}, Lcom/vungle/publisher/pu$3;-><init>(Lcom/vungle/publisher/pu;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    :cond_4
    new-instance v0, Lcom/vungle/publisher/pu$b;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/pu$b;-><init>(Lcom/vungle/publisher/pu;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    new-instance v0, Lcom/vungle/publisher/pu$1;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/pu$1;-><init>(Lcom/vungle/publisher/pu;)V

    invoke-virtual {v4, v0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 238
    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 239
    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 240
    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 245
    :goto_5
    return-void

    .line 226
    :cond_5
    if-nez v0, :cond_6

    const-string v0, "VungleAd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "overriding cta shown from null to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v6, v7, :cond_c

    const-string v6, "VungleAd"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "overriding cta shown from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " to "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_2

    :cond_9
    new-instance v6, Lcom/vungle/publisher/pu$2;

    invoke-direct {v6, p0, v0, v3}, Lcom/vungle/publisher/pu$2;-><init>(Lcom/vungle/publisher/pu;Ljava/lang/Float;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 241
    :catch_0
    move-exception v0

    .line 243
    const-string v1, "VungleAd"

    const-string v2, "exception in onActivityCreated"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 226
    :cond_a
    :try_start_1
    iget v0, p0, Lcom/vungle/publisher/pu;->I:I

    iget v6, p0, Lcom/vungle/publisher/pu;->G:I

    if-lt v0, v6, :cond_b

    move v0, v1

    :goto_6
    invoke-direct {p0, v0}, Lcom/vungle/publisher/pu;->d(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_b
    move v0, v2

    goto :goto_6

    :cond_c
    move-object v11, v0

    move-object v0, v3

    move-object v3, v11

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 581
    const-string v0, "VungleAd"

    const-string v1, "video.onCompletion"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/pu;->b(Z)V

    .line 583
    iget-object v0, p0, Lcom/vungle/publisher/pu;->k:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/bl;

    invoke-direct {v1}, Lcom/vungle/publisher/bl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 584
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->b()Lcom/vungle/publisher/tg;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vungle/publisher/tg;->a(Lcom/vungle/publisher/pu;)V

    .line 143
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vungle/publisher/pu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 144
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 145
    iput-object v0, p0, Lcom/vungle/publisher/pu;->z:Landroid/view/ViewGroup;

    .line 146
    return-object v0
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 588
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video.onError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/pu;->b(Z)V

    .line 590
    iget-object v0, p0, Lcom/vungle/publisher/pu;->k:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/bl;

    invoke-direct {v1}, Lcom/vungle/publisher/bl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 591
    const/4 v0, 0x1

    return v0
.end method

.method public final onPause()V
    .locals 4

    .prologue
    .line 397
    const-string v0, "VungleAd"

    const-string v1, "video onPause"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/nx;->onPause()V

    .line 400
    iget-object v0, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VungleAd"

    const-string v1, "Pausing video"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/vungle/publisher/pu;->M:I

    iget-object v0, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    invoke-direct {p0}, Lcom/vungle/publisher/pu;->c()V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/pu;->r:Lcom/vungle/publisher/de;

    iget-object v1, v0, Lcom/vungle/publisher/de;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 403
    iget-object v0, p0, Lcom/vungle/publisher/pu;->E:Lcom/vungle/publisher/pu$c;

    invoke-virtual {v0}, Lcom/vungle/publisher/pu$c;->unregister()V

    .line 404
    iget-object v0, p0, Lcom/vungle/publisher/pu;->t:Lcom/vungle/publisher/mx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/mx;->a(Z)V

    .line 406
    iget-boolean v0, p0, Lcom/vungle/publisher/pu;->J:Z

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/vungle/publisher/pu;->k:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/aw;

    iget-object v2, p0, Lcom/vungle/publisher/pu;->y:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/vungle/publisher/aw;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    iget-object v1, p0, Lcom/vungle/publisher/pu;->c:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleAd"

    const-string v3, "error in VideoFragment.onPause()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 412
    invoke-direct {p0}, Lcom/vungle/publisher/pu;->c()V

    goto :goto_0
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 369
    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "video ready: duration "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/vungle/publisher/pu;->v:Lcom/vungle/publisher/po;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/po;->setMaxTimeMillis(I)V

    .line 371
    iget-object v1, p0, Lcom/vungle/publisher/pu;->k:Lcom/vungle/publisher/rq;

    new-instance v2, Lcom/vungle/publisher/ai;

    invoke-direct {v2, v0}, Lcom/vungle/publisher/ai;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/vungle/publisher/pu;->p:Lcom/vungle/publisher/qs;

    invoke-virtual {p0}, Lcom/vungle/publisher/pu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/publisher/qs;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-direct {p0}, Lcom/vungle/publisher/pu;->d()V

    .line 375
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 380
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/nx;->onResume()V

    .line 381
    const-string v1, "VungleAd"

    const-string v2, "video onResume"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/vungle/publisher/pu;->w:Lcom/vungle/publisher/pc;

    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "refresh mute state. is muted? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/vungle/publisher/pc;->a:Z

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/vungle/publisher/pc;->a:Z

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/pc;->setSoundEnabled(Z)V

    iget-object v0, v1, Lcom/vungle/publisher/pc;->c:Lcom/vungle/publisher/rq;

    new-instance v2, Lcom/vungle/publisher/bo;

    iget-object v1, v1, Lcom/vungle/publisher/pc;->b:Lcom/vungle/publisher/mx;

    invoke-virtual {v1}, Lcom/vungle/publisher/mx;->c()F

    move-result v1

    invoke-direct {v2, v1}, Lcom/vungle/publisher/bo;-><init>(F)V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 385
    iget-object v0, p0, Lcom/vungle/publisher/pu;->r:Lcom/vungle/publisher/de;

    iget-boolean v1, v0, Lcom/vungle/publisher/de;->b:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/vungle/publisher/de;->c:Lcom/vungle/publisher/mx;

    invoke-virtual {v1}, Lcom/vungle/publisher/mx;->b()I

    move-result v1

    iput v1, v0, Lcom/vungle/publisher/de;->a:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vungle/publisher/de;->b:Z

    :cond_0
    iget-object v1, v0, Lcom/vungle/publisher/de;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 386
    iget-object v0, p0, Lcom/vungle/publisher/pu;->E:Lcom/vungle/publisher/pu$c;

    invoke-virtual {v0}, Lcom/vungle/publisher/pu$c;->register()V

    .line 387
    invoke-direct {p0}, Lcom/vungle/publisher/pu;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_1
    return-void

    .line 384
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    iget-object v1, p0, Lcom/vungle/publisher/pu;->c:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleAd"

    const-string v3, "error resuming VideoFragment"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    invoke-direct {p0}, Lcom/vungle/publisher/pu;->c()V

    goto :goto_1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 250
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/nx;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 251
    const-string v0, "adId"

    iget-object v1, p0, Lcom/vungle/publisher/pu;->f:Lcom/vungle/publisher/kp;

    invoke-virtual {v1}, Lcom/vungle/publisher/kp;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "adConfig"

    iget-object v0, p0, Lcom/vungle/publisher/pu;->b:Lcom/vungle/publisher/a;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 253
    const-string v0, "adStarted"

    iget-boolean v1, p0, Lcom/vungle/publisher/pu;->J:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    iget-object v1, p0, Lcom/vungle/publisher/pu;->c:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleAd"

    const-string v3, "exception in onSaveInstanceState"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
