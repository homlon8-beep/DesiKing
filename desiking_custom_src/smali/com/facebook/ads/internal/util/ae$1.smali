.class Lcom/facebook/ads/internal/util/ae$1;
.super Lcom/facebook/ads/internal/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/util/ae;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/util/h;Lcom/facebook/ads/internal/util/ae$a;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/facebook/ads/internal/util/h;

.field final synthetic f:Lcom/facebook/ads/internal/util/ae;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/util/ae;DDDZLcom/facebook/ads/internal/util/h;)V
    .locals 12

    iput-object p1, p0, Lcom/facebook/ads/internal/util/ae$1;->f:Lcom/facebook/ads/internal/util/ae;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/facebook/ads/internal/util/ae$1;->e:Lcom/facebook/ads/internal/util/h;

    move-object v3, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/internal/b/b;-><init>(DDDZ)V

    return-void
.end method


# virtual methods
.method protected a(ZZLcom/facebook/ads/internal/b/c;)V
    .locals 3
    .param p3    # Lcom/facebook/ads/internal/b/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/facebook/ads/internal/util/ae$1;->f:Lcom/facebook/ads/internal/util/ae;

    sget-object v1, Lcom/facebook/ads/internal/util/ae$b;->d:Lcom/facebook/ads/internal/util/ae$b;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/util/ae;->a(Lcom/facebook/ads/internal/util/ae$b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/util/ae$1;->e:Lcom/facebook/ads/internal/util/h;

    iget-object v1, p0, Lcom/facebook/ads/internal/util/ae$1;->f:Lcom/facebook/ads/internal/util/ae;

    sget-object v2, Lcom/facebook/ads/internal/util/ae$b;->d:Lcom/facebook/ads/internal/util/ae$b;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/util/ae;->a(Lcom/facebook/ads/internal/util/ae$b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/util/ae$1;->f:Lcom/facebook/ads/internal/util/ae;

    invoke-static {v2}, Lcom/facebook/ads/internal/util/ae;->a(Lcom/facebook/ads/internal/util/ae;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/util/h;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
