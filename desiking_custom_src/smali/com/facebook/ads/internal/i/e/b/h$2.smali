.class Lcom/facebook/ads/internal/i/e/b/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/i/e/b/h;->a(Lcom/facebook/ads/internal/i/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/i/l;

.field final synthetic b:Lcom/facebook/ads/internal/i/e/b/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/i/e/b/h;Lcom/facebook/ads/internal/i/l;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/e/b/h$2;->b:Lcom/facebook/ads/internal/i/e/b/h;

    iput-object p2, p0, Lcom/facebook/ads/internal/i/e/b/h$2;->a:Lcom/facebook/ads/internal/i/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/h$2;->b:Lcom/facebook/ads/internal/i/e/b/h;

    invoke-static {v0}, Lcom/facebook/ads/internal/i/e/b/h;->a(Lcom/facebook/ads/internal/i/e/b/h;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SkipPlugin"

    const-string v1, "User clicked skip before the ads is allowed to skip."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/h$2;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->f()V

    goto :goto_0
.end method
