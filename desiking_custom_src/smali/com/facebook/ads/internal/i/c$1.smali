.class Lcom/facebook/ads/internal/i/c$1;
.super Lcom/facebook/ads/internal/j/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/i/c;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/i/c$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/i/c$b;

.field final synthetic b:Lcom/facebook/ads/internal/i/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/i/c;Lcom/facebook/ads/internal/i/c$b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/i/c$1;->b:Lcom/facebook/ads/internal/i/c;

    iput-object p2, p0, Lcom/facebook/ads/internal/i/c$1;->a:Lcom/facebook/ads/internal/i/c$b;

    invoke-direct {p0}, Lcom/facebook/ads/internal/j/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c$1;->b:Lcom/facebook/ads/internal/i/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/i/c;->a(Lcom/facebook/ads/internal/i/c;)Lcom/facebook/ads/internal/util/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/util/ac;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/i/c$1;->a:Lcom/facebook/ads/internal/i/c$b;

    invoke-interface {v0}, Lcom/facebook/ads/internal/i/c$b;->b()V

    return-void
.end method
