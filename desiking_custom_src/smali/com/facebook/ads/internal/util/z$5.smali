.class Lcom/facebook/ads/internal/util/z$5;
.super Lcom/facebook/ads/internal/f/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/util/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/f/p",
        "<",
        "Lcom/facebook/ads/internal/i/e/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/util/z;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/util/z;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/util/z$5;->a:Lcom/facebook/ads/internal/util/z;

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
            "Lcom/facebook/ads/internal/i/e/a/b;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/i/e/a/b;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/f/n;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/i/e/a/b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/util/z$5;->a(Lcom/facebook/ads/internal/i/e/a/b;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i/e/a/b;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/util/z$5;->a:Lcom/facebook/ads/internal/util/z;

    iget-object v1, p0, Lcom/facebook/ads/internal/util/z$5;->a:Lcom/facebook/ads/internal/util/z;

    invoke-static {v1}, Lcom/facebook/ads/internal/util/z;->b(Lcom/facebook/ads/internal/util/z;)Lcom/facebook/ads/internal/i/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/i/l;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/z;->b(I)V

    return-void
.end method
