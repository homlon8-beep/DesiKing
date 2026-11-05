.class Lcom/facebook/ads/internal/d/d$2;
.super Lcom/facebook/ads/internal/d/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/d/d;->a(Lcom/facebook/ads/internal/f/d;Lcom/facebook/ads/internal/d/a;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/d/i",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/f/d;

.field final synthetic b:Lcom/facebook/ads/internal/d/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/d/d;Lcom/facebook/ads/internal/f/d;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/d/d$2;->b:Lcom/facebook/ads/internal/d/d;

    iput-object p2, p0, Lcom/facebook/ads/internal/d/d$2;->a:Lcom/facebook/ads/internal/f/d;

    invoke-direct {p0}, Lcom/facebook/ads/internal/d/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/d/d$2;->b:Lcom/facebook/ads/internal/d/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/d/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v0, p0, Lcom/facebook/ads/internal/d/d$2;->b:Lcom/facebook/ads/internal/d/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/d/d;->b(Lcom/facebook/ads/internal/d/d;)Lcom/facebook/ads/internal/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/d/d$2;->b:Lcom/facebook/ads/internal/d/d;

    invoke-static {v1}, Lcom/facebook/ads/internal/d/d;->a(Lcom/facebook/ads/internal/d/d;)Lcom/facebook/ads/internal/d/h;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/d/d$2;->a:Lcom/facebook/ads/internal/f/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/f/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/d/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/d/d$2;->a:Lcom/facebook/ads/internal/f/d;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/f/d;->a()Lcom/facebook/ads/internal/f/g;

    move-result-object v2

    iget v2, v2, Lcom/facebook/ads/internal/f/g;->c:I

    iget-object v3, p0, Lcom/facebook/ads/internal/d/d$2;->a:Lcom/facebook/ads/internal/f/d;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/f/d;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/internal/d/d$2;->a:Lcom/facebook/ads/internal/f/d;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/f/d;->e()D

    move-result-wide v4

    iget-object v6, p0, Lcom/facebook/ads/internal/d/d$2;->a:Lcom/facebook/ads/internal/f/d;

    invoke-virtual {v6}, Lcom/facebook/ads/internal/f/d;->f()D

    move-result-wide v6

    iget-object v8, p0, Lcom/facebook/ads/internal/d/d$2;->a:Lcom/facebook/ads/internal/f/d;

    invoke-virtual {v8}, Lcom/facebook/ads/internal/f/d;->g()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/ads/internal/d/d$2;->a:Lcom/facebook/ads/internal/f/d;

    invoke-virtual {v9}, Lcom/facebook/ads/internal/f/d;->h()Ljava/util/Map;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/facebook/ads/internal/d/c;->a(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/ads/internal/d/f$a;->c:Lcom/facebook/ads/internal/d/f$a;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/d/d$2;->a(Lcom/facebook/ads/internal/d/f$a;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/d/d$2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
