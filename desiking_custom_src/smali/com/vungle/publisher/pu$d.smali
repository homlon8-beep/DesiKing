.class final Lcom/vungle/publisher/pu$d;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/pu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/pu;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/pu;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/vungle/publisher/pu$d;->a:Lcom/vungle/publisher/pu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x32

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/pu$d;->a:Lcom/vungle/publisher/pu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/pu;->c(Z)I

    move-result v0

    .line 675
    iget-object v1, p0, Lcom/vungle/publisher/pu$d;->a:Lcom/vungle/publisher/pu;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/pu;->b(I)V

    .line 676
    iget-object v1, p0, Lcom/vungle/publisher/pu$d;->a:Lcom/vungle/publisher/pu;

    invoke-static {v1}, Lcom/vungle/publisher/pu;->f(Lcom/vungle/publisher/pu;)Lcom/vungle/publisher/po;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/pu$d;->a:Lcom/vungle/publisher/pu;

    invoke-static {v2}, Lcom/vungle/publisher/pu;->e(Lcom/vungle/publisher/pu;)Landroid/widget/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/po;->setCurrentTimeMillis(I)V

    .line 677
    iget-object v1, p0, Lcom/vungle/publisher/pu$d;->a:Lcom/vungle/publisher/pu;

    iget-object v1, v1, Lcom/vungle/publisher/pu;->k:Lcom/vungle/publisher/rq;

    new-instance v2, Lcom/vungle/publisher/aw;

    invoke-direct {v2, v0}, Lcom/vungle/publisher/aw;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    iget-object v0, p0, Lcom/vungle/publisher/pu$d;->a:Lcom/vungle/publisher/pu;

    invoke-static {v0}, Lcom/vungle/publisher/pu;->g(Lcom/vungle/publisher/pu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 684
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v0

    .line 680
    :try_start_1
    const-string v1, "VungleAd"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    iget-object v0, p0, Lcom/vungle/publisher/pu$d;->a:Lcom/vungle/publisher/pu;

    invoke-static {v0}, Lcom/vungle/publisher/pu;->g(Lcom/vungle/publisher/pu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/publisher/pu$d;->a:Lcom/vungle/publisher/pu;

    invoke-static {v1}, Lcom/vungle/publisher/pu;->g(Lcom/vungle/publisher/pu;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v0
.end method
