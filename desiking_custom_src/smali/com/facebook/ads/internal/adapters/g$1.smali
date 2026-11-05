.class Lcom/facebook/ads/internal/adapters/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/util/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/g;->a(Lcom/facebook/ads/internal/i/f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/i/f;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/g;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/internal/i/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/g$1;->b:Lcom/facebook/ads/internal/adapters/g;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/g$1;->a:Lcom/facebook/ads/internal/i/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/g$1;->a:Lcom/facebook/ads/internal/i/f;

    iget-object v0, v0, Lcom/facebook/ads/internal/i/f;->a:Lcom/facebook/ads/internal/i/o;

    invoke-static {}, Lcom/facebook/ads/internal/adapters/g;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/i/o;->setBackgroundColor(I)V

    return-void
.end method
