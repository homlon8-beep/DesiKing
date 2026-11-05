.class public Lcom/facebook/ads/internal/adapters/i;
.super Lcom/facebook/ads/internal/adapters/q;

# interfaces
.implements Lcom/facebook/ads/internal/util/ab;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/adapters/q;",
        "Lcom/facebook/ads/internal/util/ab",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic d:Z


# instance fields
.field protected a:Lcom/facebook/ads/internal/i/l;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected b:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected c:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
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

.field private final f:Lcom/facebook/ads/internal/f/p;
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

.field private final g:Lcom/facebook/ads/internal/f/p;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/f/p",
            "<",
            "Lcom/facebook/ads/internal/i/e/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/facebook/ads/internal/f/p;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/f/p",
            "<",
            "Lcom/facebook/ads/internal/i/e/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/facebook/ads/a/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/facebook/ads/internal/util/h;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private l:Z

.field private m:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private p:Lcom/facebook/ads/internal/util/ae;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/adapters/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/ads/internal/adapters/i;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/q;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/adapters/i$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/adapters/i$1;-><init>(Lcom/facebook/ads/internal/adapters/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->e:Lcom/facebook/ads/internal/f/p;

    new-instance v0, Lcom/facebook/ads/internal/adapters/i$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/adapters/i$2;-><init>(Lcom/facebook/ads/internal/adapters/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->f:Lcom/facebook/ads/internal/f/p;

    new-instance v0, Lcom/facebook/ads/internal/adapters/i$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/adapters/i$3;-><init>(Lcom/facebook/ads/internal/adapters/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->g:Lcom/facebook/ads/internal/f/p;

    new-instance v0, Lcom/facebook/ads/internal/adapters/i$4;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/adapters/i$4;-><init>(Lcom/facebook/ads/internal/adapters/i;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->h:Lcom/facebook/ads/internal/f/p;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/a/a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->i:Lcom/facebook/ads/a/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/facebook/ads/a/a;Lorg/json/JSONObject;Lcom/facebook/ads/internal/util/h;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/internal/util/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/i;->i:Lcom/facebook/ads/a/a;

    iput-object p4, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/util/h;

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->l:Z

    const-string v0, "video"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "trackers"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "videoURL"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->k:Ljava/lang/String;

    const-string v0, "nativeImpression"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->m:Ljava/lang/String;

    const-string v0, "impression"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->n:Ljava/lang/String;

    const-string v0, "click"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->o:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/internal/i/l;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/i/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->e:Lcom/facebook/ads/internal/f/p;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->g:Lcom/facebook/ads/internal/f/p;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->f:Lcom/facebook/ads/internal/f/p;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->h:Lcom/facebook/ads/internal/f/p;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/i/l;->setVideoURI(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/util/z;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "logger"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v1, p1

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/util/z;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/util/h;Lcom/facebook/ads/internal/i/l;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->p:Lcom/facebook/ads/internal/util/ae;

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->i:Lcom/facebook/ads/a/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    invoke-interface {v0, p0, v1}, Lcom/facebook/ads/a/a;->a(Lcom/facebook/ads/internal/adapters/q;Landroid/view/View;)V

    return-void

    :cond_0
    new-instance v0, Lcom/facebook/ads/internal/util/z;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    const-string v3, "video"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p4, v2, v1}, Lcom/facebook/ads/internal/util/z;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/util/h;Lcom/facebook/ads/internal/i/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->p:Lcom/facebook/ads/internal/util/ae;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/i;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/util/h;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/util/h;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 9

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    const/4 v5, -0x2

    sget-boolean v0, Lcom/facebook/ads/internal/adapters/i;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/facebook/ads/internal/adapters/i;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    new-instance v2, Lcom/facebook/ads/internal/i/e/b/i;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/facebook/ads/internal/i/e/b/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    new-instance v2, Lcom/facebook/ads/internal/i/e/b/k;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/facebook/ads/internal/i/e/b/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    new-instance v2, Lcom/facebook/ads/internal/i/e/b/b;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/facebook/ads/internal/i/e/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/facebook/ads/internal/i/e/b/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lcom/facebook/ads/internal/i/e/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/i/e/b/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    :cond_2
    const-string v1, "destinationURL"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "destinationURL"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "destinationURL"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/facebook/ads/internal/i/e/b/e;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    const-string v3, ""

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/ads/internal/i/e/b/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/i/e/b/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    :cond_3
    new-instance v0, Lcom/facebook/ads/internal/i/e/b/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    const-string v2, "http://m.facebook.com/ads/ad_choices"

    const-string v3, ""

    const/4 v4, 0x4

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/i/e/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[F)V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->c()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v1, Lcom/facebook/ads/internal/i/e/b/h;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/e/b/h;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/i/e/b/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x1e

    invoke-virtual {v1, v6, v6, v6, v0}, Lcom/facebook/ads/internal/i/e/b/h;->setPadding(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x41000000    # 8.0f
        0x0
    .end array-data
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/ads/a/a;Lcom/facebook/ads/internal/util/h;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/internal/util/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const-string v0, "ad_response"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/i;->a(Landroid/content/Context;Lcom/facebook/ads/a/a;Lorg/json/JSONObject;Lcom/facebook/ads/internal/util/h;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/a/a;->a(Lcom/facebook/ads/internal/adapters/q;Lcom/facebook/ads/AdError;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/facebook/ads/a/a;Ljava/util/Map;Lcom/facebook/ads/internal/util/h;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/internal/util/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/a/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/ads/internal/util/h;",
            ")V"
        }
    .end annotation

    :try_start_0
    const-string v0, "data"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/adapters/i;->a(Landroid/content/Context;Lcom/facebook/ads/a/a;Lorg/json/JSONObject;Lcom/facebook/ads/internal/util/h;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/a/a;->a(Lcom/facebook/ads/internal/adapters/q;Lcom/facebook/ads/AdError;)V

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/facebook/ads/internal/adapters/i;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    const-string v2, "capabilities"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "countdown"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "countdown"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v2, "countdown"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "format"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "format"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-class v2, Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected c()I
    .locals 4

    const/4 v0, -0x1

    sget-boolean v1, Lcom/facebook/ads/internal/adapters/i;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    const-string v2, "capabilities"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "skipButton"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "skipButton"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v2, "skipButton"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "skippableSeconds"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "skippableSeconds"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-class v2, Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/i;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->p:Lcom/facebook/ads/internal/util/ae;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/ae;->e()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->p:Lcom/facebook/ads/internal/util/ae;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/util/ae;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->d()V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->d()V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/util/h;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/h;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/i;->c()I

    move-result v1

    if-lez v1, :cond_4

    const-string v2, "skippable_seconds"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i;->j:Lcom/facebook/ads/internal/util/h;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/internal/util/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->i:Lcom/facebook/ads/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->i:Lcom/facebook/ads/a/a;

    invoke-interface {v0, p0}, Lcom/facebook/ads/a/a;->c(Lcom/facebook/ads/internal/adapters/q;)V

    goto :goto_1
.end method

.method public getSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->p:Lcom/facebook/ads/internal/util/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "logger"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->p:Lcom/facebook/ads/internal/util/ae;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/util/ae;->getSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "ad_response"

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
