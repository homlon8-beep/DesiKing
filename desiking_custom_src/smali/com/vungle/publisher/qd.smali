.class public final Lcom/vungle/publisher/qd;
.super Lcom/vungle/publisher/oj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/qd$1;,
        Lcom/vungle/publisher/qd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/oj",
        "<",
        "Lcom/vungle/publisher/kq",
        "<***>;>;"
    }
.end annotation


# instance fields
.field k:Lcom/vungle/publisher/qd$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/ags$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/pu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lcom/vungle/publisher/pg$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private o:Lcom/vungle/publisher/pu;

.field private p:Lcom/vungle/publisher/pg;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 54
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
    .line 90
    iget-object v0, p0, Lcom/vungle/publisher/qd;->k:Lcom/vungle/publisher/qd$a$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/qd$a$a;->a(Lcom/vungle/publisher/qd;)Lcom/vungle/publisher/qd$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/vungle/publisher/FullScreenAdActivity;Lcom/vungle/publisher/dp;Lcom/vungle/publisher/a;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 38
    check-cast p2, Lcom/vungle/publisher/kq;

    :try_start_0
    const-string v4, "VungleAd"

    const-string v5, "create video ad"

    invoke-static {v4, v5}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/publisher/FullScreenAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/vungle/publisher/oj;->a(Lcom/vungle/publisher/FullScreenAdActivity;Lcom/vungle/publisher/dp;Lcom/vungle/publisher/a;Landroid/os/Bundle;)V

    invoke-virtual {p2}, Lcom/vungle/publisher/kq;->B()Lcom/vungle/publisher/kp;

    move-result-object v5

    invoke-interface {p3}, Lcom/vungle/publisher/a;->getOrientation()Lcom/vungle/publisher/Orientation;

    move-result-object v6

    sget-object v4, Lcom/vungle/publisher/qd$1;->a:[I

    invoke-virtual {v6}, Lcom/vungle/publisher/Orientation;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    iget-object v4, v5, Lcom/vungle/publisher/kp;->g:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, v5, Lcom/vungle/publisher/kp;->n:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, v5, Lcom/vungle/publisher/kp;->n:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v7, v5, Lcom/vungle/publisher/kp;->g:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v4, v7, :cond_2

    move v4, v2

    :goto_0
    if-eqz v4, :cond_3

    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ad orientation "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (landscape)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    :goto_1
    invoke-virtual {p1, v1}, Lcom/vungle/publisher/FullScreenAdActivity;->setRequestedOrientation(I)V

    iget-object v2, p0, Lcom/vungle/publisher/qd;->m:Lcom/vungle/publisher/pu$a;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v4, "videoFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/pu;

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/vungle/publisher/pu$a;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/pu;

    :cond_0
    invoke-virtual {p2}, Lcom/vungle/publisher/kq;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/vungle/publisher/kq;->B()Lcom/vungle/publisher/kp;

    move-result-object v4

    if-eqz v4, :cond_6

    iput-object p3, v1, Lcom/vungle/publisher/pu;->b:Lcom/vungle/publisher/a;

    iput-object v4, v1, Lcom/vungle/publisher/pu;->f:Lcom/vungle/publisher/kp;

    invoke-static {v1, v2}, Lcom/vungle/publisher/pu;->a(Lcom/vungle/publisher/pu;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    iput-object v1, p0, Lcom/vungle/publisher/qd;->o:Lcom/vungle/publisher/pu;

    instance-of v1, p2, Lcom/vungle/publisher/fu;

    if-eqz v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/vungle/publisher/fu;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/vungle/publisher/fu;->q()Lcom/vungle/publisher/fv;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/vungle/publisher/fv;->j:Lcom/vungle/publisher/mm$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/fv;->C()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/mm$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/mm;

    move-result-object v2

    iget-object v4, p0, Lcom/vungle/publisher/qd;->n:Lcom/vungle/publisher/pg$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/kq;->w()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, p1, v1, v2, p3}, Lcom/vungle/publisher/pg$a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/vungle/publisher/mq;Lcom/vungle/publisher/a;)Lcom/vungle/publisher/oa;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/pg;

    iput-object v1, p0, Lcom/vungle/publisher/qd;->p:Lcom/vungle/publisher/pg;

    :cond_1
    const-string v1, "postRollFragment"

    iget-object v2, p0, Lcom/vungle/publisher/qd;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/vungle/publisher/qd;->c()V

    :goto_3
    return-void

    :pswitch_0
    const-string v2, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ad orientation "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/vungle/publisher/qd;->h:Lcom/vungle/publisher/hs$a;

    const-string v4, "VungleAd"

    const-string v5, "error playing video ad"

    invoke-virtual {v2, v4, v5, v1}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3, v3}, Lcom/vungle/publisher/qd;->a(ZZ)V

    goto :goto_3

    :cond_2
    move v4, v3

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v4, v5, Lcom/vungle/publisher/kp;->g:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    iget-object v4, v5, Lcom/vungle/publisher/kp;->n:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    iget-object v4, v5, Lcom/vungle/publisher/kp;->g:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v5, Lcom/vungle/publisher/kp;->n:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_4

    :goto_4
    if-eqz v2, :cond_5

    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ad orientation "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (portrait)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    goto/16 :goto_1

    :cond_4
    move v2, v3

    goto :goto_4

    :cond_5
    const-string v2, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ad orientation "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (unknown) --> auto-rotate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/vungle/publisher/qd;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
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
    .line 95
    iget-object v1, p0, Lcom/vungle/publisher/qd;->l:Lcom/vungle/publisher/ags$a;

    iget-object v0, p0, Lcom/vungle/publisher/qd;->a:Lcom/vungle/publisher/dp;

    check-cast v0, Lcom/vungle/publisher/kq;

    iget-object v2, v1, Lcom/vungle/publisher/ags$a;->a:Lcom/vungle/publisher/ags;

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/dp;)V

    iget-object v0, v1, Lcom/vungle/publisher/ags$a;->a:Lcom/vungle/publisher/ags;

    return-object v0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vungle/publisher/qd;->p:Lcom/vungle/publisher/pg;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/qd;->a(ZZ)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/qd;->g:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/ap;

    invoke-direct {v1}, Lcom/vungle/publisher/ap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/vungle/publisher/qd;->p:Lcom/vungle/publisher/pg;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/qd;->a(Lcom/vungle/publisher/nx;)V

    goto :goto_0
.end method

.method final d()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vungle/publisher/qd;->o:Lcom/vungle/publisher/pu;

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/vungle/publisher/qd;->c()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/qd;->o:Lcom/vungle/publisher/pu;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/qd;->a(Lcom/vungle/publisher/nx;)V

    goto :goto_0
.end method
