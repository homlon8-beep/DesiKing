.class public abstract Lcom/vungle/publisher/dw$a;
.super Lcom/vungle/publisher/er$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vungle/publisher/dw",
        "<TT;TP;TE;TA;>;P:",
        "Lcom/vungle/publisher/dv",
        "<TT;TP;TE;>;E:",
        "Lcom/vungle/publisher/dx",
        "<TP;>;A:",
        "Lcom/vungle/publisher/dp;",
        "R:",
        "Lcom/vungle/publisher/aej;",
        ">",
        "Lcom/vungle/publisher/er$a",
        "<TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/dy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/dq$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/vungle/publisher/er$a;-><init>()V

    return-void
.end method

.method private d(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/dw;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 502
    new-array v2, v6, [Ljava/lang/String;

    sget-object v0, Lcom/vungle/publisher/dw$c;->a:Lcom/vungle/publisher/dw$c;

    invoke-virtual {v0}, Lcom/vungle/publisher/dw$c;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 504
    const-string v3, "status = ?"

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null ad"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/vungle/publisher/dp;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null ad_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v1

    move v0, v1

    :goto_0
    if-gtz v0, :cond_2

    aget-object v5, v2, v1

    aput-object v5, v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ad_id = ? AND "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "insert_timestamp_millis DESC"

    invoke-virtual {p0, v0, v4, v2}, Lcom/vungle/publisher/dw$a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ad_id = ? AND "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", with params: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Lcom/vungle/publisher/ahe;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ad_report records for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dw;

    invoke-virtual {p0, v0, p1, v1}, Lcom/vungle/publisher/dw$a;->a(Lcom/vungle/publisher/dw;Lcom/vungle/publisher/dp;Z)Lcom/vungle/publisher/dw;

    move-result-object v0

    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetched "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/List;)I
    .locals 1

    .prologue
    .line 430
    invoke-super {p0, p1}, Lcom/vungle/publisher/er$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected abstract a()Lcom/vungle/publisher/dp$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/dp$a",
            "<TA;TR;>;"
        }
    .end annotation
.end method

.method public a(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/dw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TT;"
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/vungle/publisher/dw$a;->c_()Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dw;

    .line 446
    iput-object p1, v0, Lcom/vungle/publisher/dw;->a:Lcom/vungle/publisher/dp;

    .line 447
    sget-object v1, Lcom/vungle/publisher/dw$c;->a:Lcom/vungle/publisher/dw$c;

    iput-object v1, v0, Lcom/vungle/publisher/dw;->g:Lcom/vungle/publisher/dw$c;

    .line 448
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/vungle/publisher/dw$a;->a(Lcom/vungle/publisher/dw;Lcom/vungle/publisher/dp;Z)Lcom/vungle/publisher/dw;

    .line 449
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "creating new "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/dw;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/Cursor;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 509
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dw;->t:Ljava/lang/Object;

    .line 510
    const-string v0, "ad_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/dw;->a(Ljava/lang/String;)V

    .line 511
    const-string v0, "incentivized_publisher_app_user_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dw;->c:Ljava/lang/String;

    .line 512
    const-string v0, "is_incentivized"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/vungle/publisher/dw;->e:Z

    .line 513
    const-string v0, "insert_timestamp_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dw;->d:Ljava/lang/Long;

    .line 514
    const-string v0, "placement"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dw;->f:Ljava/lang/String;

    .line 515
    const-string v0, "status"

    const-class v1, Lcom/vungle/publisher/dw$c;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/dh;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dw$c;

    iput-object v0, p1, Lcom/vungle/publisher/dw;->g:Lcom/vungle/publisher/dw$c;

    .line 516
    const-string v0, "update_timestamp_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dw;->h:Ljava/lang/Long;

    .line 517
    const-string v0, "video_duration_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dw;->i:Ljava/lang/Integer;

    .line 518
    const-string v0, "view_end_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dw;->j:Ljava/lang/Long;

    .line 519
    const-string v0, "view_start_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dw;->k:Ljava/lang/Long;

    .line 520
    return-object p1
.end method

.method protected a(Lcom/vungle/publisher/dw;Lcom/vungle/publisher/dp;Z)Lcom/vungle/publisher/dw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TA;Z)TT;"
        }
    .end annotation

    .prologue
    .line 531
    if-nez p2, :cond_1

    .line 532
    invoke-virtual {p0}, Lcom/vungle/publisher/dw$a;->a()Lcom/vungle/publisher/dp$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vungle/publisher/dw;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dp$a;->b(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dp;

    iput-object v0, p1, Lcom/vungle/publisher/dw;->a:Lcom/vungle/publisher/dp;

    .line 540
    :goto_0
    if-eqz p3, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/vungle/publisher/dw$a;->e()Lcom/vungle/publisher/dv$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/dv$a;->b(Lcom/vungle/publisher/dw;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dw;->m:Ljava/util/List;

    .line 542
    iget-object v1, p0, Lcom/vungle/publisher/dw$a;->a:Lcom/vungle/publisher/dy$a;

    iget-object v0, p1, Lcom/vungle/publisher/dw;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/dy$a;->b(Ljava/lang/Integer;)Lcom/vungle/publisher/fp;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dw;->l:Lcom/vungle/publisher/fp;

    .line 543
    iget-object v1, p0, Lcom/vungle/publisher/dw$a;->b:Lcom/vungle/publisher/dq$a;

    iget-object v0, p1, Lcom/vungle/publisher/dw;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/dq$a;->a(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dw;->n:Ljava/util/List;

    .line 545
    :cond_0
    return-object p1

    .line 538
    :cond_1
    iput-object p2, p1, Lcom/vungle/publisher/dw;->a:Lcom/vungle/publisher/dp;

    goto :goto_0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 430
    check-cast p1, Lcom/vungle/publisher/dw;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/publisher/dw$a;->a(Lcom/vungle/publisher/dw;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 430
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/er$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/dw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TT;"
        }
    .end annotation

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lcom/vungle/publisher/dw$a;->d(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/dw;

    move-result-object v0

    .line 460
    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/dw$a;->a(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/dw;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/vungle/publisher/dw;->u()Ljava/lang/Integer;

    .line 464
    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 430
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method public final c(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/dw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TT;"
        }
    .end annotation

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/vungle/publisher/dw$a;->d(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/dw;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    const-string v0, "ad_report"

    return-object v0
.end method

.method public final bridge synthetic c(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 430
    invoke-super {p0, p1}, Lcom/vungle/publisher/er$a;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract e()Lcom/vungle/publisher/dv$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/dv$a",
            "<TT;TP;TE;>;"
        }
    .end annotation
.end method

.method public abstract f()Lcom/vungle/publisher/p;
.end method

.method protected final g()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 454
    const-string v0, "status = ? AND ad_id IN (SELECT id FROM ad WHERE type = ?)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/vungle/publisher/dw$c;->d:Lcom/vungle/publisher/dw$c;

    invoke-virtual {v3}, Lcom/vungle/publisher/dw$c;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lcom/vungle/publisher/dw$a;->f()Lcom/vungle/publisher/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/publisher/p;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "insert_timestamp_millis ASC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/vungle/publisher/dw$a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 455
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dw;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lcom/vungle/publisher/dw$a;->a(Lcom/vungle/publisher/dw;Lcom/vungle/publisher/dp;Z)Lcom/vungle/publisher/dw;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final bridge synthetic j_()Ljava/util/List;
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Lcom/vungle/publisher/er$a;->j_()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
