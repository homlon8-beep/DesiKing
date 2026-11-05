.class public final Lcom/vungle/publisher/ey;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ey$a;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/et;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/et",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/dp$c;Lcom/vungle/publisher/dp$c;)V
    .locals 4

    .prologue
    .line 16
    if-eq p2, p1, :cond_0

    sget-object v0, Lcom/vungle/publisher/dp$c;->b:Lcom/vungle/publisher/dp$c;

    if-eq p2, v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/vungle/publisher/ey;->a:Lcom/vungle/publisher/et;

    invoke-interface {v0}, Lcom/vungle/publisher/et;->i()I

    move-result v0

    .line 19
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resetting prepare_retry_count from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to 0 for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vungle/publisher/ey;->a:Lcom/vungle/publisher/et;

    invoke-interface {v2}, Lcom/vungle/publisher/et;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/vungle/publisher/ey;->a:Lcom/vungle/publisher/et;

    invoke-interface {v0}, Lcom/vungle/publisher/et;->j()V

    .line 23
    :cond_0
    return-void
.end method
