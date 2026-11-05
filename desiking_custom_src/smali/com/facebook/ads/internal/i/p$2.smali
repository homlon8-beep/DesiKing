.class Lcom/facebook/ads/internal/i/p$2;
.super Lcom/facebook/ads/internal/i/e/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/i/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/i/p;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/i/p;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/p$2;->a:Lcom/facebook/ads/internal/i/p;

    invoke-direct {p0}, Lcom/facebook/ads/internal/i/e/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/f/n;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/i/e/a/e;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/i/p$2;->a(Lcom/facebook/ads/internal/i/e/a/e;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/i/e/a/e;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/i/p$2;->a:Lcom/facebook/ads/internal/i/p;

    invoke-static {v0}, Lcom/facebook/ads/internal/i/p;->a(Lcom/facebook/ads/internal/i/p;)Lcom/facebook/ads/internal/i/h$a;

    move-result-object v0

    const-string v1, "videoInterstitalEvent"

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/i/h$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/f/n;)V

    return-void
.end method
