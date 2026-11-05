.class Lcom/facebook/ads/internal/d/d$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/d/d;->a(Lcom/facebook/ads/internal/d/f;Lcom/facebook/ads/internal/d/a;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/d/f;

.field final synthetic b:Lcom/facebook/ads/internal/d/a;

.field final synthetic c:Lcom/facebook/ads/internal/d/d;

.field private d:Lcom/facebook/ads/internal/d/f$a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/d/d;Lcom/facebook/ads/internal/d/f;Lcom/facebook/ads/internal/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/d/d$1;->c:Lcom/facebook/ads/internal/d/d;

    iput-object p2, p0, Lcom/facebook/ads/internal/d/d$1;->a:Lcom/facebook/ads/internal/d/f;

    iput-object p3, p0, Lcom/facebook/ads/internal/d/d$1;->b:Lcom/facebook/ads/internal/d/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/internal/d/d$1;->a:Lcom/facebook/ads/internal/d/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/d/f;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/d/d$1;->a:Lcom/facebook/ads/internal/d/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/d/f;->c()Lcom/facebook/ads/internal/d/f$a;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/d/d$1;->d:Lcom/facebook/ads/internal/d/f$a;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/facebook/ads/internal/d/f$a;->a:Lcom/facebook/ads/internal/d/f$a;

    iput-object v1, p0, Lcom/facebook/ads/internal/d/d$1;->d:Lcom/facebook/ads/internal/d/f$a;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/d/d$1;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/d/d$1;->d:Lcom/facebook/ads/internal/d/f$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/d/d$1;->b:Lcom/facebook/ads/internal/d/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/d/a;->a(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/d/d$1;->b:Lcom/facebook/ads/internal/d/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/d/a;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/d/d$1;->b:Lcom/facebook/ads/internal/d/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/d/d$1;->d:Lcom/facebook/ads/internal/d/f$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/d/f$a;->a()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/d/d$1;->d:Lcom/facebook/ads/internal/d/f$a;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/d/f$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/d/a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
