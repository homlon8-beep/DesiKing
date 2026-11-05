.class public Lcom/facebook/ads/internal/i/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/i/h;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/ads/internal/i/h$a;

.field private final c:Lcom/facebook/ads/internal/i/c;

.field private final d:Lcom/facebook/ads/internal/adapters/o;

.field private e:Lcom/facebook/ads/internal/adapters/n;

.field private f:J

.field private g:J

.field private h:Lcom/facebook/ads/internal/util/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/ads/internal/i/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/i/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/i/h$a;)V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/internal/i/g;->b:Lcom/facebook/ads/internal/i/h$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/i/g;->f:J

    new-instance v0, Lcom/facebook/ads/internal/i/c;

    new-instance v1, Lcom/facebook/ads/internal/i/g$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/i/g$1;-><init>(Lcom/facebook/ads/internal/i/g;Lcom/facebook/ads/AudienceNetworkActivity;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/internal/i/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/i/c$b;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/facebook/ads/internal/i/g$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/i/g$2;-><init>(Lcom/facebook/ads/internal/i/g;)V

    new-instance v1, Lcom/facebook/ads/internal/adapters/o;

    iget-object v2, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/i/c;->getViewabilityChecker()Lcom/facebook/ads/internal/j/a;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/facebook/ads/internal/adapters/o;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/i/b;Lcom/facebook/ads/internal/j/a;Lcom/facebook/ads/internal/adapters/b;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/i/g;->d:Lcom/facebook/ads/internal/adapters/o;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->d:Lcom/facebook/ads/internal/adapters/o;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/o;->c()V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    invoke-interface {p2, v0}, Lcom/facebook/ads/internal/i/h$a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/g;J)J
    .locals 1

    iput-wide p1, p0, Lcom/facebook/ads/internal/i/g;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/g;)Lcom/facebook/ads/internal/i/h$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->b:Lcom/facebook/ads/internal/i/h$a;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/i/g;Lcom/facebook/ads/internal/util/c$a;)Lcom/facebook/ads/internal/util/c$a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/g;->h:Lcom/facebook/ads/internal/util/c$a;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/ads/internal/i/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/i/g;)Lcom/facebook/ads/internal/adapters/n;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/i/g;)Lcom/facebook/ads/internal/adapters/o;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->d:Lcom/facebook/ads/internal/adapters/o;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/AudienceNetworkActivity;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    const-string v0, "dataModel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "dataModel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/n;->a(Landroid/os/Bundle;)Lcom/facebook/ads/internal/adapters/n;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    invoke-static {}, Lcom/facebook/ads/internal/util/j;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/n;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/i/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/n;->g()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/n;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/i/c;->a(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/internal/adapters/n;->b(Landroid/content/Intent;)Lcom/facebook/ads/internal/adapters/n;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->d:Lcom/facebook/ads/internal/adapters/o;

    iget-object v1, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/o;->a(Lcom/facebook/ads/internal/adapters/n;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    invoke-static {}, Lcom/facebook/ads/internal/util/j;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/n;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/internal/i/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/n;->g()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/n;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/i/c;->a(II)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    if-eqz v0, :cond_0

    const-string v0, "dataModel"

    iget-object v1, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/n;->i()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i/h$a;)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/c;->onPause()V

    return-void
.end method

.method public f()V
    .locals 4

    iget-wide v0, p0, Lcom/facebook/ads/internal/i/g;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->h:Lcom/facebook/ads/internal/util/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/internal/i/g;->g:J

    iget-object v2, p0, Lcom/facebook/ads/internal/i/g;->h:Lcom/facebook/ads/internal/util/c$a;

    iget-object v3, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/n;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/util/c;->a(JLcom/facebook/ads/internal/util/c$a;Ljava/lang/String;)Lcom/facebook/ads/internal/util/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/d;->a(Lcom/facebook/ads/internal/util/c;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/c;->onResume()V

    return-void
.end method

.method public g()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/ads/internal/i/g;->f:J

    sget-object v2, Lcom/facebook/ads/internal/util/c$a;->c:Lcom/facebook/ads/internal/util/c$a;

    iget-object v3, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/adapters/n;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/util/c;->a(JLcom/facebook/ads/internal/util/c$a;Ljava/lang/String;)Lcom/facebook/ads/internal/util/c;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/util/d;->a(Lcom/facebook/ads/internal/util/c;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/n;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/i/c;->getViewabilityChecker()Lcom/facebook/ads/internal/j/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/j/a;->a(Ljava/util/Map;)V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/i/c;->getTouchData()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/util/i;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/i/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/f/f;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/f/f;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/i/g;->e:Lcom/facebook/ads/internal/adapters/n;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/n;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/internal/f/f;->e(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/util/j;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/g;->c:Lcom/facebook/ads/internal/i/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/c;->destroy()V

    return-void
.end method
