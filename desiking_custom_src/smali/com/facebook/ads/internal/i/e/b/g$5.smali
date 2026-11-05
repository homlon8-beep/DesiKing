.class Lcom/facebook/ads/internal/i/e/b/g$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/i/e/b/g;->a(Lcom/facebook/ads/internal/i/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/i/l;

.field final synthetic b:Lcom/facebook/ads/internal/i/e/b/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/i/e/b/g;Lcom/facebook/ads/internal/i/l;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/e/b/g$5;->b:Lcom/facebook/ads/internal/i/e/b/g;

    iput-object p2, p0, Lcom/facebook/ads/internal/i/e/b/g$5;->a:Lcom/facebook/ads/internal/i/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/internal/i/e/b/g$5;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/i/l;->getState()Lcom/facebook/ads/internal/i/e/c/f;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/i/e/c/f;->c:Lcom/facebook/ads/internal/i/e/c/f;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/facebook/ads/internal/i/e/b/g$5;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/i/l;->getState()Lcom/facebook/ads/internal/i/e/c/f;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/i/e/c/f;->e:Lcom/facebook/ads/internal/i/e/c/f;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/facebook/ads/internal/i/e/b/g$5;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/i/l;->getState()Lcom/facebook/ads/internal/i/e/c/f;

    move-result-object v2

    sget-object v3, Lcom/facebook/ads/internal/i/e/c/f;->g:Lcom/facebook/ads/internal/i/e/c/f;

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/g$5;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/l;->d()V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/g$5;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/i/l;->getState()Lcom/facebook/ads/internal/i/e/c/f;

    move-result-object v1

    sget-object v2, Lcom/facebook/ads/internal/i/e/c/f;->d:Lcom/facebook/ads/internal/i/e/c/f;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/g$5;->a:Lcom/facebook/ads/internal/i/l;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/i/l;->e()V

    goto :goto_0
.end method
