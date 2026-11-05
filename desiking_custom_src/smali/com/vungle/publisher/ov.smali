.class public final Lcom/vungle/publisher/ov;
.super Lcom/vungle/publisher/oj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ov$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/oj",
        "<",
        "Lcom/vungle/publisher/es;",
        ">;"
    }
.end annotation


# instance fields
.field k:Lcom/vungle/publisher/agn$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/ov$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/om$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private n:Lcom/vungle/publisher/om;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vungle/publisher/oj;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/publisher/nw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/nw",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vungle/publisher/ov;->l:Lcom/vungle/publisher/ov$a$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/ov$a$a;->a(Lcom/vungle/publisher/ov;)Lcom/vungle/publisher/ov$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/FullScreenAdActivity;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/vungle/publisher/oj;->a(Lcom/vungle/publisher/FullScreenAdActivity;)V

    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/ov;->n:Lcom/vungle/publisher/om;

    invoke-virtual {v0}, Lcom/vungle/publisher/om;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    .line 73
    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/vungle/publisher/FullScreenAdActivity;Lcom/vungle/publisher/dp;Lcom/vungle/publisher/a;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    check-cast p2, Lcom/vungle/publisher/es;

    const-string v0, "VungleAd"

    const-string v1, "create mraid ad"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/vungle/publisher/oj;->a(Lcom/vungle/publisher/FullScreenAdActivity;Lcom/vungle/publisher/dp;Lcom/vungle/publisher/a;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/vungle/publisher/ov;->m:Lcom/vungle/publisher/om$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/es;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/vungle/publisher/es;->q()Lcom/vungle/publisher/mq;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2, p3}, Lcom/vungle/publisher/om$a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/vungle/publisher/mq;Lcom/vungle/publisher/a;)Lcom/vungle/publisher/oa;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/om;

    iput-object v0, p0, Lcom/vungle/publisher/ov;->n:Lcom/vungle/publisher/om;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/FullScreenAdActivity;->setRequestedOrientation(I)V

    invoke-virtual {p1}, Lcom/vungle/publisher/FullScreenAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/vungle/publisher/ov;->n:Lcom/vungle/publisher/om;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/vungle/publisher/ov;->a(ZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/ov;->n:Lcom/vungle/publisher/om;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ov;->a(Lcom/vungle/publisher/nx;)V

    goto :goto_0
.end method

.method protected final b()Lcom/vungle/publisher/agh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/agh",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v1, p0, Lcom/vungle/publisher/ov;->k:Lcom/vungle/publisher/agn$a;

    iget-object v0, p0, Lcom/vungle/publisher/ov;->a:Lcom/vungle/publisher/dp;

    check-cast v0, Lcom/vungle/publisher/es;

    iget-object v2, v1, Lcom/vungle/publisher/agn$a;->a:Lcom/vungle/publisher/agn;

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/agn;->a(Lcom/vungle/publisher/dp;)V

    iget-object v0, v1, Lcom/vungle/publisher/agn$a;->a:Lcom/vungle/publisher/agn;

    return-object v0
.end method
