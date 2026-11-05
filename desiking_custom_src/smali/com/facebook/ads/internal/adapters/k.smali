.class public Lcom/facebook/ads/internal/adapters/k;
.super Lcom/facebook/ads/internal/adapters/i;

# interfaces
.implements Lcom/facebook/ads/internal/i/h;


# static fields
.field static final synthetic e:Z


# instance fields
.field private final f:Lcom/facebook/ads/internal/f/p;
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

.field private g:Lcom/facebook/ads/internal/i/h$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/facebook/ads/internal/i/e/b/h;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

.field private k:Lcom/facebook/ads/internal/adapters/j$a;

.field private l:Lcom/facebook/ads/internal/i/d/a;

.field private m:Lcom/facebook/ads/internal/i/e/b/j;

.field private n:Lcom/facebook/ads/internal/i/e/b/j;

.field private o:Lcom/facebook/ads/internal/i/e/b/c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/adapters/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/ads/internal/adapters/k;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/i;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/adapters/k$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/adapters/k$1;-><init>(Lcom/facebook/ads/internal/adapters/k;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->f:Lcom/facebook/ads/internal/f/p;

    new-instance v0, Lcom/facebook/ads/internal/adapters/k$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/adapters/k$2;-><init>(Lcom/facebook/ads/internal/adapters/k;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    sget-object v0, Lcom/facebook/ads/internal/adapters/j$a;->a:Lcom/facebook/ads/internal/adapters/j$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->k:Lcom/facebook/ads/internal/adapters/j$a;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/k;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->h:Landroid/app/Activity;

    return-object v0
.end method

.method private a(I)V
    .locals 9

    const/16 v8, 0xc

    const/4 v7, 0x3

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v4, 0x0

    const/4 v5, -0x2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/i/l;->getVideoView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v3, -0x3da80000    # -54.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/k;->i:Lcom/facebook/ads/internal/i/e/b/h;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/internal/i/e/b/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->i:Lcom/facebook/ads/internal/i/e/b/h;

    const/16 v3, 0x30

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/facebook/ads/internal/i/e/b/h;->setPadding(IIII)V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->l:Lcom/facebook/ads/internal/i/d/a;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x42a40000    # 82.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/k;->l:Lcom/facebook/ads/internal/i/d/a;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/internal/i/d/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->m:Lcom/facebook/ads/internal/i/e/b/j;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    mul-float v3, v6, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/k;->m:Lcom/facebook/ads/internal/i/e/b/j;

    invoke-virtual {v3, v4, v4, v4, v4}, Lcom/facebook/ads/internal/i/e/b/j;->setPadding(IIII)V

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/k;->m:Lcom/facebook/ads/internal/i/e/b/j;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/internal/i/e/b/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->n:Lcom/facebook/ads/internal/i/e/b/j;

    if-eqz v2, :cond_2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x42000000    # 32.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/k;->n:Lcom/facebook/ads/internal/i/e/b/j;

    invoke-virtual {v3, v4, v4, v4, v4}, Lcom/facebook/ads/internal/i/e/b/j;->setPadding(IIII)V

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/k;->n:Lcom/facebook/ads/internal/i/e/b/j;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/internal/i/e/b/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->o:Lcom/facebook/ads/internal/i/e/b/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->o:Lcom/facebook/ads/internal/i/e/b/c;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/internal/i/e/b/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->o:Lcom/facebook/ads/internal/i/e/b/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/e/b/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->o:Lcom/facebook/ads/internal/i/e/b/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->addView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->i:Lcom/facebook/ads/internal/i/e/b/h;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/i/e/b/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->i:Lcom/facebook/ads/internal/i/e/b/h;

    const/16 v2, 0x30

    invoke-virtual {v1, v4, v4, v4, v2}, Lcom/facebook/ads/internal/i/e/b/h;->setPadding(IIII)V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->l:Lcom/facebook/ads/internal/i/d/a;

    if-eqz v1, :cond_5

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    mul-float v2, v6, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    mul-float v2, v6, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->l:Lcom/facebook/ads/internal/i/d/a;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/i/d/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->m:Lcom/facebook/ads/internal/i/e/b/j;

    if-eqz v1, :cond_6

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    mul-float v2, v6, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->m:Lcom/facebook/ads/internal/i/e/b/j;

    const/16 v3, 0x20

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v8, v4, v8}, Lcom/facebook/ads/internal/i/e/b/j;->setPadding(IIII)V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->m:Lcom/facebook/ads/internal/i/e/b/j;

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/i/e/b/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->n:Lcom/facebook/ads/internal/i/e/b/j;

    if-eqz v1, :cond_7

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {v1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->n:Lcom/facebook/ads/internal/i/e/b/j;

    const/16 v2, 0x20

    const/16 v3, 0x18

    const/16 v4, 0x20

    const/16 v5, 0x18

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/facebook/ads/internal/i/e/b/j;->setPadding(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->n:Lcom/facebook/ads/internal/i/e/b/j;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/e/b/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->o:Lcom/facebook/ads/internal/i/e/b/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->o:Lcom/facebook/ads/internal/i/e/b/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->removeViewInLayout(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/k;)Lcom/facebook/ads/internal/i/e/b/h;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->i:Lcom/facebook/ads/internal/i/e/b/h;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v6, -0x1

    const/4 v5, -0x2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->getEventBus()Lcom/facebook/ads/internal/f/o;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->f:Lcom/facebook/ads/internal/f/p;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/o;->a(Lcom/facebook/ads/internal/f/p;)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    new-instance v1, Lcom/facebook/ads/internal/i/e/b/i;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/i/e/b/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    new-instance v1, Lcom/facebook/ads/internal/i/e/b/k;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/i/e/b/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->b:Lorg/json/JSONObject;

    const-string v1, "context"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/j$a;->a(I)Lcom/facebook/ads/internal/adapters/j$a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->k:Lcom/facebook/ads/internal/adapters/j$a;

    sget-object v0, Lcom/facebook/ads/internal/adapters/j$a;->a:Lcom/facebook/ads/internal/adapters/j$a;

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->k:Lcom/facebook/ads/internal/adapters/j$a;

    :cond_0
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/i/l;->getVideoView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/k;->c()I

    move-result v0

    if-ltz v0, :cond_1

    new-instance v1, Lcom/facebook/ads/internal/i/e/b/h;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/e/b/h;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->i:Lcom/facebook/ads/internal/i/e/b/h;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->i:Lcom/facebook/ads/internal/i/e/b/h;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->b:Lorg/json/JSONObject;

    const-string v1, "cta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->b:Lorg/json/JSONObject;

    const-string v1, "cta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->b:Lorg/json/JSONObject;

    const-string v1, "cta"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/i/d/a;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->c:Landroid/content/Context;

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/ads/internal/i/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->l:Lcom/facebook/ads/internal/i/d/a;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->l:Lcom/facebook/ads/internal/i/d/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->b:Lorg/json/JSONObject;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/facebook/ads/internal/i/e/b/j;

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/k;->c:Landroid/content/Context;

    const/16 v4, 0x12

    invoke-direct {v2, v3, v1, v4}, Lcom/facebook/ads/internal/i/e/b/j;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->m:Lcom/facebook/ads/internal/i/e/b/j;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->m:Lcom/facebook/ads/internal/i/e/b/j;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    :cond_3
    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/facebook/ads/internal/i/e/b/j;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->c:Landroid/content/Context;

    const/16 v3, 0x10

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/ads/internal/i/e/b/j;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->n:Lcom/facebook/ads/internal/i/e/b/j;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->n:Lcom/facebook/ads/internal/i/e/b/j;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/k;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/facebook/ads/internal/i/e/b/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/k;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/internal/i/e/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->o:Lcom/facebook/ads/internal/i/e/b/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->o:Lcom/facebook/ads/internal/i/e/b/c;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    :cond_5
    new-instance v0, Lcom/facebook/ads/internal/i/e/b/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->c:Landroid/content/Context;

    const-string v2, "http://m.facebook.com/ads/ad_choices"

    const-string v3, ""

    const/4 v4, 0x4

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/internal/i/e/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[F)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/e/b/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/i/l;->a(Lcom/facebook/ads/internal/i/e/b/m;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41000000    # 8.0f
        0x0
        0x0
    .end array-data
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/k;->h:Landroid/app/Activity;

    sget-boolean v0, Lcom/facebook/ads/internal/adapters/k;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->g:Lcom/facebook/ads/internal/i/h$a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/facebook/ads/internal/adapters/k;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->i:Lcom/facebook/ads/internal/i/e/b/h;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->j:Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->addBackButtonInterceptor(Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->g:Lcom/facebook/ads/internal/i/h$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/k;->a:Lcom/facebook/ads/internal/i/l;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/i/h$a;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->h:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/adapters/k;->a(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/k;->d()Z

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/adapters/k;->a(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/k;->g:Lcom/facebook/ads/internal/i/h$a;

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()Lcom/facebook/ads/internal/adapters/j$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/k;->k:Lcom/facebook/ads/internal/adapters/j$a;

    return-object v0
.end method
