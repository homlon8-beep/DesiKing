.class Lcom/facebook/ads/internal/i/e/b/d$2;
.super Lcom/facebook/ads/internal/f/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/i/e/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/f/p",
        "<",
        "Lcom/facebook/ads/internal/i/e/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/i/e/b/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/i/e/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/e/b/d$2;->a:Lcom/facebook/ads/internal/i/e/b/d;

    invoke-direct {p0}, Lcom/facebook/ads/internal/f/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/ads/internal/i/e/a/g;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/i/e/a/g;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/f/n;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/i/e/a/g;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/i/e/b/d$2;->a(Lcom/facebook/ads/internal/i/e/a/g;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i/e/a/g;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/d$2;->a:Lcom/facebook/ads/internal/i/e/b/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/i/e/b/d;->a(Lcom/facebook/ads/internal/i/e/b/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/d$2;->a:Lcom/facebook/ads/internal/i/e/b/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/i/e/b/d;->clearAnimation()V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/d$2;->a:Lcom/facebook/ads/internal/i/e/b/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/e/b/d;->setAlpha(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/d$2;->a:Lcom/facebook/ads/internal/i/e/b/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/e/b/d;->setVisibility(I)V

    return-void
.end method
