.class public Lcom/facebook/ads/internal/i/l;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/facebook/ads/internal/i/e/c/g;
.implements Lcom/facebook/ads/internal/util/ae$a;


# static fields
.field private static final i:Lcom/facebook/ads/internal/i/e/a/i;

.field private static final j:Lcom/facebook/ads/internal/i/e/a/d;

.field private static final k:Lcom/facebook/ads/internal/i/e/a/b;

.field private static final l:Lcom/facebook/ads/internal/i/e/a/k;

.field private static final m:Lcom/facebook/ads/internal/i/e/a/m;

.field private static final n:Lcom/facebook/ads/internal/i/e/a/e;

.field private static final o:Lcom/facebook/ads/internal/i/e/a/g;


# instance fields
.field private final a:Lcom/facebook/ads/internal/f/o;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/f/o",
            "<",
            "Lcom/facebook/ads/internal/f/p;",
            "Lcom/facebook/ads/internal/f/n;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/facebook/ads/internal/i/e/c/e;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/i/e/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private f:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private g:Lcom/facebook/ads/internal/util/af;

.field private h:Z

.field private final p:Landroid/os/Handler;

.field private final q:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/ads/internal/i/e/a/i;

    invoke-direct {v0}, Lcom/facebook/ads/internal/i/e/a/i;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/i/l;->i:Lcom/facebook/ads/internal/i/e/a/i;

    new-instance v0, Lcom/facebook/ads/internal/i/e/a/d;

    invoke-direct {v0}, Lcom/facebook/ads/internal/i/e/a/d;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/i/l;->j:Lcom/facebook/ads/internal/i/e/a/d;

    new-instance v0, Lcom/facebook/ads/internal/i/e/a/b;

    invoke-direct {v0}, Lcom/facebook/ads/internal/i/e/a/b;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/i/l;->k:Lcom/facebook/ads/internal/i/e/a/b;

    new-instance v0, Lcom/facebook/ads/internal/i/e/a/k;

    invoke-direct {v0}, Lcom/facebook/ads/internal/i/e/a/k;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/i/l;->l:Lcom/facebook/ads/internal/i/e/a/k;

    new-instance v0, Lcom/facebook/ads/internal/i/e/a/m;

    invoke-direct {v0}, Lcom/facebook/ads/internal/i/e/a/m;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/i/l;->m:Lcom/facebook/ads/internal/i/e/a/m;

    new-instance v0, Lcom/facebook/ads/internal/i/e/a/e;

    invoke-direct {v0}, Lcom/facebook/ads/internal/i/e/a/e;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/i/l;->n:Lcom/facebook/ads/internal/i/e/a/e;

    new-instance v0, Lcom/facebook/ads/internal/i/e/a/g;

    invoke-direct {v0}, Lcom/facebook/ads/internal/i/e/a/g;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/i/l;->o:Lcom/facebook/ads/internal/i/e/a/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/internal/i/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/internal/i/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/l;->c:Ljava/util/List;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/i/l;->d:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/i/l;->e:Z

    iput-boolean v1, p0, Lcom/facebook/ads/internal/i/l;->f:Z

    sget-object v0, Lcom/facebook/ads/internal/util/af;->c:Lcom/facebook/ads/internal/util/af;

    iput-object v0, p0, Lcom/facebook/ads/internal/i/l;->g:Lcom/facebook/ads/internal/util/af;

    iput-boolean v1, p0, Lcom/facebook/ads/internal/i/l;->h:Z

    new-instance v0, Lcom/facebook/ads/internal/i/l$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/l$2;-><init>(Lcom/facebook/ads/internal/i/l;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/l;->q:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/i/e/c/b;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/i/e/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/i/e/c/e;->setRequestedVolume(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/i/e/c/e;->setVideoStateChangeListener(Lcom/facebook/ads/internal/i/e/c/g;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/i/l;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/l;->p:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/internal/f/o;

    invoke-direct {v0}, Lcom/facebook/ads/internal/f/o;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/l;->a:Lcom/facebook/ads/internal/f/o;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->q:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/l;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/i/e/c/d;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/i/e/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/i/l;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/i/l;)Lcom/facebook/ads/internal/f/o;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->a:Lcom/facebook/ads/internal/f/o;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/i/l;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i()Lcom/facebook/ads/internal/i/e/a/k;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/i/l;->l:Lcom/facebook/ads/internal/i/e/a/k;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/i/e/c/e;->seekTo(I)V

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->a:Lcom/facebook/ads/internal/f/o;

    new-instance v1, Lcom/facebook/ads/internal/i/e/a/l;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/internal/i/e/a/l;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/n;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i/e/b/m;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/internal/i/e/b/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i/e/c/f;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/facebook/ads/internal/i/e/c/f;->c:Lcom/facebook/ads/internal/i/e/c/f;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->a:Lcom/facebook/ads/internal/f/o;

    sget-object v1, Lcom/facebook/ads/internal/i/l;->i:Lcom/facebook/ads/internal/i/e/a/i;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/n;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/l;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/i/l;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/l;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/i/e/c/f;->h:Lcom/facebook/ads/internal/i/e/c/f;

    if-ne p1, v0, :cond_2

    iput-boolean v1, p0, Lcom/facebook/ads/internal/i/l;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->a:Lcom/facebook/ads/internal/f/o;

    sget-object v1, Lcom/facebook/ads/internal/i/l;->j:Lcom/facebook/ads/internal/i/e/a/d;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/n;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/facebook/ads/internal/i/e/c/f;->g:Lcom/facebook/ads/internal/i/e/c/f;

    if-ne p1, v0, :cond_3

    iput-boolean v1, p0, Lcom/facebook/ads/internal/i/l;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->p:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->a:Lcom/facebook/ads/internal/f/o;

    sget-object v1, Lcom/facebook/ads/internal/i/l;->k:Lcom/facebook/ads/internal/i/e/a/b;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/n;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/facebook/ads/internal/i/e/c/f;->d:Lcom/facebook/ads/internal/i/e/c/f;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->a:Lcom/facebook/ads/internal/f/o;

    sget-object v1, Lcom/facebook/ads/internal/i/l;->o:Lcom/facebook/ads/internal/i/e/a/g;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/n;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->p:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/internal/i/l$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/i/l$1;-><init>(Lcom/facebook/ads/internal/i/l;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/facebook/ads/internal/i/e/c/f;->e:Lcom/facebook/ads/internal/i/e/c/f;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->a:Lcom/facebook/ads/internal/f/o;

    sget-object v1, Lcom/facebook/ads/internal/i/l;->n:Lcom/facebook/ads/internal/i/e/a/e;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/n;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->p:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/l;->h()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/h;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/i/l;->h:Z

    return v0
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/i/l;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/i/e/c/e;->getState()Lcom/facebook/ads/internal/i/e/c/f;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/i/e/c/f;->g:Lcom/facebook/ads/internal/i/e/c/f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/i/l;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/i/e/c/e;->start()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/i/e/c/e;->pause()V

    return-void
.end method

.method public f()V
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/l;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/i/l;->m:Lcom/facebook/ads/internal/i/e/a/m;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/n;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/i/e/c/e;->a()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/i/e/c/e;->b()V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/i/e/c/e;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/i/e/c/e;->getDuration()I

    move-result v0

    return v0
.end method

.method public getEventBus()Lcom/facebook/ads/internal/f/o;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/internal/f/o",
            "<",
            "Lcom/facebook/ads/internal/f/p;",
            "Lcom/facebook/ads/internal/f/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->a:Lcom/facebook/ads/internal/f/o;

    return-object v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/i/e/c/e;->getInitialBufferTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsAutoPlayFromServer()Lcom/facebook/ads/internal/util/af;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->g:Lcom/facebook/ads/internal/util/af;

    return-object v0
.end method

.method public getState()Lcom/facebook/ads/internal/i/e/c/f;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/i/e/c/e;->getState()Lcom/facebook/ads/internal/i/e/c/f;

    move-result-object v0

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    check-cast v0, Landroid/view/TextureView;

    return-object v0
.end method

.method public getVideoView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/i/e/c/e;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0}, Lcom/facebook/ads/internal/i/e/c/e;->getVolume()F

    move-result v0

    return v0
.end method

.method protected h()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/facebook/ads/internal/i/l;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/i/l;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/w;->c(Landroid/content/Context;)Lcom/facebook/ads/internal/util/w$a;

    move-result-object v0

    sget-object v3, Lcom/facebook/ads/internal/util/w$a;->c:Lcom/facebook/ads/internal/util/w$a;

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/l;->getIsAutoPlayFromServer()Lcom/facebook/ads/internal/util/af;

    move-result-object v3

    sget-object v4, Lcom/facebook/ads/internal/util/af;->c:Lcom/facebook/ads/internal/util/af;

    if-ne v3, v4, :cond_2

    :goto_1
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/l;->getIsAutoPlayFromServer()Lcom/facebook/ads/internal/util/af;

    move-result-object v0

    sget-object v3, Lcom/facebook/ads/internal/util/af;->a:Lcom/facebook/ads/internal/util/af;

    if-ne v0, v3, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public setAutoplay(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/ads/internal/i/l;->e:Z

    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/i/e/c/e;->setControlsAnchorView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setIsAutoPlayFromServer(Lcom/facebook/ads/internal/util/af;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/l;->g:Lcom/facebook/ads/internal/util/af;

    return-void
.end method

.method public setIsAutoplayOnMobile(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/facebook/ads/internal/i/l;->f:Z

    return-void
.end method

.method public setIsFullScreen(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/i/l;->h:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/i/e/c/e;->setFullScreen(Z)V

    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/i/e/c/e;->setVideoMPD(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/i/e/b/m;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/e/b/m;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/l;->addView(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Lcom/facebook/ads/internal/i/e/b/m;->b(Lcom/facebook/ads/internal/i/l;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/i/l;->d:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/i/e/c/e;->setup(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/l;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/l;->b:Lcom/facebook/ads/internal/i/e/c/e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/i/e/c/e;->setRequestedVolume(F)V

    return-void
.end method
