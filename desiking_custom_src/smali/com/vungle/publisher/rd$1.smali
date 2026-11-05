.class final Lcom/vungle/publisher/rd$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/rd;->a()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/vungle/publisher/rd;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/rd;IJJ)V
    .locals 1

    .prologue
    .line 186
    iput-object p1, p0, Lcom/vungle/publisher/rd$1;->d:Lcom/vungle/publisher/rd;

    iput p2, p0, Lcom/vungle/publisher/rd$1;->a:I

    iput-wide p3, p0, Lcom/vungle/publisher/rd$1;->b:J

    iput-wide p5, p0, Lcom/vungle/publisher/rd$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/rd$1;->d:Lcom/vungle/publisher/rd;

    iget v2, p0, Lcom/vungle/publisher/rd$1;->a:I

    iget-object v3, v1, Lcom/vungle/publisher/rd;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/vungle/publisher/rd;->m:J

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/vungle/publisher/rd$1;->d:Lcom/vungle/publisher/rd;

    iget-object v0, v0, Lcom/vungle/publisher/rd;->j:Lcom/vungle/publisher/zb;

    iget-wide v2, p0, Lcom/vungle/publisher/rd$1;->b:J

    iget-wide v4, p0, Lcom/vungle/publisher/rd$1;->c:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vungle/publisher/zb;->a(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    iget-object v1, p0, Lcom/vungle/publisher/rd$1;->d:Lcom/vungle/publisher/rd;

    iget-object v1, v1, Lcom/vungle/publisher/rd;->k:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleAd"

    const-string v3, "error sending session end"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
