.class Lcom/facebook/ads/internal/adapters/i$4;
.super Lcom/facebook/ads/internal/f/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/adapters/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/f/p",
        "<",
        "Lcom/facebook/ads/internal/i/e/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/i;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

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
            "Lcom/facebook/ads/internal/i/e/a/a;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/i/e/a/a;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/f/n;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/i/e/a/a;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/adapters/i$4;->a(Lcom/facebook/ads/internal/i/e/a/a;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i/e/a/a;)V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->a(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-interface {v0, v1}, Lcom/facebook/ads/a/a;->b(Lcom/facebook/ads/internal/adapters/q;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/i;->c(Lcom/facebook/ads/internal/adapters/i;)Lcom/facebook/ads/internal/util/h;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/util/b;->a:Lcom/facebook/ads/internal/util/b;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/i$4;->a:Lcom/facebook/ads/internal/adapters/i;

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/i;->b(Lcom/facebook/ads/internal/adapters/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/util/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/h;->a(Ljava/lang/String;)V

    return-void
.end method
