.class Lcom/facebook/ads/internal/i/e/b/g$1;
.super Lcom/facebook/ads/internal/f/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/i/e/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/f/p",
        "<",
        "Lcom/facebook/ads/internal/i/e/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/i/e/b/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/i/e/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/e/b/g$1;->a:Lcom/facebook/ads/internal/i/e/b/g;

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
            "Lcom/facebook/ads/internal/i/e/a/i;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/i/e/a/i;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/f/n;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/i/e/a/i;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/i/e/b/g$1;->a(Lcom/facebook/ads/internal/i/e/a/i;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i/e/a/i;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/i/e/b/g$1;->a:Lcom/facebook/ads/internal/i/e/b/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/e/b/g;->setVisibility(I)V

    return-void
.end method
