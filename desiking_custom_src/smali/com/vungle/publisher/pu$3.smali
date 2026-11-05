.class final Lcom/vungle/publisher/pu$3;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/pu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/vungle/publisher/pu;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/pu;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/vungle/publisher/pu$3;->b:Lcom/vungle/publisher/pu;

    iput-object p2, p0, Lcom/vungle/publisher/pu$3;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/vungle/publisher/pu$3;->b:Lcom/vungle/publisher/pu;

    invoke-static {v0}, Lcom/vungle/publisher/pu;->a(Lcom/vungle/publisher/pu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "VungleAd"

    const-string v1, "cta overlay onClick"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/vungle/publisher/pu$3;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v0, p0, Lcom/vungle/publisher/pu$3;->b:Lcom/vungle/publisher/pu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/pu;->b(Z)V

    .line 310
    iget-object v0, p0, Lcom/vungle/publisher/pu$3;->b:Lcom/vungle/publisher/pu;

    iget-object v0, v0, Lcom/vungle/publisher/pu;->k:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/ab;

    sget-object v2, Lcom/vungle/publisher/kr$a;->l:Lcom/vungle/publisher/kr$a;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/ab;-><init>(Lcom/vungle/publisher/kr$a;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    const-string v0, "VungleAd"

    const-string v1, "cta overlay onClick, but not enabled"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
