.class final Lcom/vungle/publisher/InitializationEventListener$b;
.super Lcom/vungle/publisher/rj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/InitializationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/rt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/vungle/publisher/rj;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/vungle/publisher/vw;)V
    .locals 6

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/vungle/publisher/InitializationEventListener$b;->unregister()V

    .line 124
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$b;->a:Lcom/vungle/publisher/rt;

    :try_start_0
    iget-object v1, v0, Lcom/vungle/publisher/rt;->b:Lcom/vungle/publisher/ra;

    invoke-virtual {v1}, Lcom/vungle/publisher/ra;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VungleData"

    const-string v2, "sdk configured to send logged exceptions"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/vungle/publisher/rt;->c:Lcom/vungle/publisher/hs$a;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/hs$a;->c(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const-string v3, "VungleData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sending "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " logged exceptions"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vungle/publisher/rt;->a:Lcom/vungle/publisher/yb;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/yb;->a(Ljava/util/List;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v0, "VungleData"

    const-string v1, "sdk not configured to send logged exceptions"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VungleData"

    const-string v2, "error sending exceptions. irony?"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
