.class public Lcom/facebook/ads/internal/f/k;
.super Lcom/facebook/ads/internal/f/d;


# instance fields
.field protected f:Ljava/lang/String;

.field protected g:Lcom/facebook/ads/internal/f/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/internal/f/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/internal/f/g;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/internal/f/d;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    iput-object p6, p0, Lcom/facebook/ads/internal/f/k;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/facebook/ads/internal/f/k;->g:Lcom/facebook/ads/internal/f/g;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/f/g;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/f/k;->g:Lcom/facebook/ads/internal/f/g;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/f/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
