.class Lcom/facebook/ads/internal/i/e/b/c$1;
.super Lcom/facebook/ads/internal/f/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/i/e/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/f/p",
        "<",
        "Lcom/facebook/ads/internal/i/e/a/k;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/i/e/b/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/i/e/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/e/b/c$1;->a:Lcom/facebook/ads/internal/i/e/b/c;

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
            "Lcom/facebook/ads/internal/i/e/a/k;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/i/e/a/k;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/f/n;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/i/e/a/k;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/i/e/b/c$1;->a(Lcom/facebook/ads/internal/i/e/a/k;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i/e/a/k;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/c$1;->a:Lcom/facebook/ads/internal/i/e/b/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/i/e/b/c;->a(Lcom/facebook/ads/internal/i/e/b/c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/i/e/b/c$1;->a:Lcom/facebook/ads/internal/i/e/b/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/i/e/b/c$1;->a:Lcom/facebook/ads/internal/i/e/b/c;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/i/e/b/c;->getVideoView()Lcom/facebook/ads/internal/i/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/i/l;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/ads/internal/i/e/b/c$1;->a:Lcom/facebook/ads/internal/i/e/b/c;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/i/e/b/c;->getVideoView()Lcom/facebook/ads/internal/i/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/i/l;->getCurrentPosition()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/facebook/ads/internal/i/e/b/c;->a(Lcom/facebook/ads/internal/i/e/b/c;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
