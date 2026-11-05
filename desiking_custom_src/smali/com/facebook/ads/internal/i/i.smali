.class public Lcom/facebook/ads/internal/i/i;
.super Lcom/facebook/ads/internal/i/l;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final c:Lcom/facebook/ads/internal/i/e/a/h;

.field private final d:Lcom/facebook/ads/internal/i/e/a/f;

.field private final e:Lcom/facebook/ads/internal/i/e/a/j;

.field private final f:Lcom/facebook/ads/internal/i/e/a/c;

.field private final g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final h:Lcom/facebook/ads/MediaView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final i:Lcom/facebook/ads/internal/util/h;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final j:Lcom/facebook/ads/internal/j/a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final k:Lcom/facebook/ads/internal/adapters/w;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final l:Lcom/facebook/ads/internal/i/e/b/f;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private m:Lcom/facebook/ads/internal/util/z;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private o:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/facebook/ads/MediaViewListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/i/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/ads/internal/i/i;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/internal/util/h;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/MediaView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/internal/util/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x1

    const/4 v2, -0x2

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/i/l;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/i/i$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/i$1;-><init>(Lcom/facebook/ads/internal/i/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/i;->c:Lcom/facebook/ads/internal/i/e/a/h;

    new-instance v0, Lcom/facebook/ads/internal/i/i$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/i$2;-><init>(Lcom/facebook/ads/internal/i/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/i;->d:Lcom/facebook/ads/internal/i/e/a/f;

    new-instance v0, Lcom/facebook/ads/internal/i/i$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/i$3;-><init>(Lcom/facebook/ads/internal/i/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/i;->e:Lcom/facebook/ads/internal/i/e/a/j;

    new-instance v0, Lcom/facebook/ads/internal/i/i$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/i$4;-><init>(Lcom/facebook/ads/internal/i/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/i;->f:Lcom/facebook/ads/internal/i/e/a/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/i/i;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/internal/i/i;->h:Lcom/facebook/ads/MediaView;

    iput-object p3, p0, Lcom/facebook/ads/internal/i/i;->i:Lcom/facebook/ads/internal/util/h;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/i;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/i;->c:Lcom/facebook/ads/internal/i/e/a/h;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/i;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/i;->d:Lcom/facebook/ads/internal/i/e/a/f;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/i;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/i;->f:Lcom/facebook/ads/internal/i/e/a/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    invoke-virtual {p0, v3}, Lcom/facebook/ads/internal/i/i;->setAutoplay(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/i;->setVolume(F)V

    new-instance v0, Lcom/facebook/ads/internal/i/e/b/f;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/i/e/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/i;->l:Lcom/facebook/ads/internal/i/e/b/f;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->l:Lcom/facebook/ads/internal/i/e/b/f;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/i;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    new-instance v0, Lcom/facebook/ads/internal/i/e/b/g;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/i/e/b/g;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/e/b/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/i/i;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/i;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/i;->e:Lcom/facebook/ads/internal/i/e/a/j;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    new-instance v0, Lcom/facebook/ads/internal/adapters/w;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/adapters/w;-><init>(Lcom/facebook/ads/internal/i/i;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/i;->k:Lcom/facebook/ads/internal/adapters/w;

    new-instance v0, Lcom/facebook/ads/internal/j/a;

    const/16 v1, 0x32

    new-instance v2, Lcom/facebook/ads/internal/i/i$5;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/i/i$5;-><init>(Lcom/facebook/ads/internal/i/i;)V

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/facebook/ads/internal/j/a;-><init>(Landroid/view/View;IZLcom/facebook/ads/internal/j/a$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/i;->j:Lcom/facebook/ads/internal/j/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->j:Lcom/facebook/ads/internal/j/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/a;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->j:Lcom/facebook/ads/internal/j/a;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/i;)Lcom/facebook/ads/MediaViewListener;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->q:Lcom/facebook/ads/MediaViewListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-boolean v0, Lcom/facebook/ads/internal/i/i;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/facebook/ads/internal/i/i;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->o:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v0, "useNativeCloseButton"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "viewType"

    sget-object v1, Lcom/facebook/ads/AudienceNetworkActivity$Type;->VIDEO:Lcom/facebook/ads/AudienceNetworkActivity$Type;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "videoURL"

    iget-object v1, p0, Lcom/facebook/ads/internal/i/i;->o:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "videoMPD"

    iget-object v1, p0, Lcom/facebook/ads/internal/i/i;->p:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "videoReportURL"

    iget-object v1, p0, Lcom/facebook/ads/internal/i/i;->n:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "predefinedOrientationKey"

    const/16 v1, 0xd

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "autoplay"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/i;->a()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "videoSeekTime"

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/i;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "adInterstitialUniqueId"

    iget-object v1, p0, Lcom/facebook/ads/internal/i/i;->g:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "videoLogger"

    iget-object v1, p0, Lcom/facebook/ads/internal/i/i;->m:Lcom/facebook/ads/internal/util/z;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/util/z;->getSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method static synthetic b(Lcom/facebook/ads/internal/i/i;)Lcom/facebook/ads/MediaView;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->h:Lcom/facebook/ads/MediaView;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/i/i;)Lcom/facebook/ads/internal/j/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->j:Lcom/facebook/ads/internal/j/a;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/i/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/i;->j()V

    return-void
.end method

.method private j()V
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/i;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/ads/AudienceNetworkActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/i/i;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/i;->e()V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v2

    :try_start_1
    const-class v2, Lcom/facebook/ads/InterstitialAdActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Error occurred while loading fullscreen video activity."

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/util/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/d;->a(Lcom/facebook/ads/internal/util/c;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Error occurred while loading fullscreen video activity."

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/util/c;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/util/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/d;->a(Lcom/facebook/ads/internal/util/c;)V

    goto :goto_0
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->j:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->c()Lcom/facebook/ads/internal/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/facebook/ads/internal/i/l;->d()V

    :cond_0
    return-void
.end method

.method public getListener()Lcom/facebook/ads/MediaViewListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->q:Lcom/facebook/ads/MediaViewListener;

    return-object v0
.end method

.method public getMediaView()Lcom/facebook/ads/MediaView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->h:Lcom/facebook/ads/MediaView;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/facebook/ads/internal/i/l;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->j:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->k:Lcom/facebook/ads/internal/adapters/w;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/w;->a()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/facebook/ads/internal/i/l;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->j:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->b()V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->k:Lcom/facebook/ads/internal/adapters/w;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/w;->b()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->j:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->b()V

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/i/l;->onVisibilityChanged(Landroid/view/View;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->j:Lcom/facebook/ads/internal/j/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/j/a;->a()V

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->l:Lcom/facebook/ads/internal/i/e/b/f;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/i/e/b/f;->setImage(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/facebook/ads/MediaViewListener;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/MediaViewListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/ads/internal/i/i;->q:Lcom/facebook/ads/MediaViewListener;

    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/facebook/ads/internal/i/i;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->m:Lcom/facebook/ads/internal/util/z;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/i/i;->p:Ljava/lang/String;

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/i/l;->setVideoMPD(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoReportURI(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->m:Lcom/facebook/ads/internal/util/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->m:Lcom/facebook/ads/internal/util/z;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/z;->a()V

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/util/z;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/i/i;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/i/i;->i:Lcom/facebook/ads/internal/util/h;

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/facebook/ads/internal/util/z;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/util/h;Lcom/facebook/ads/internal/i/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/i;->m:Lcom/facebook/ads/internal/util/z;

    iput-object p1, p0, Lcom/facebook/ads/internal/i/i;->n:Ljava/lang/String;

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-boolean v0, Lcom/facebook/ads/internal/i/i;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/i;->m:Lcom/facebook/ads/internal/util/z;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/internal/i/i;->o:Landroid/net/Uri;

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/i/l;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method
