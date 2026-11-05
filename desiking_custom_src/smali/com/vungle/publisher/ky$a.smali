.class public final Lcom/vungle/publisher/ky$a;
.super Lcom/vungle/publisher/dp$a;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/fc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ky;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dp$a",
        "<",
        "Lcom/vungle/publisher/ky;",
        "Lcom/vungle/publisher/afk;",
        ">;",
        "Lcom/vungle/publisher/fc",
        "<",
        "Lcom/vungle/publisher/ky;",
        "Lcom/vungle/publisher/afk;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ky;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/ahf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/em$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/le$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/kz$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/lj$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/md$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/ki$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/ey$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/vungle/publisher/dp$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/ky;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ky;
    .locals 2

    .prologue
    .line 267
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/dp$a;->a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;

    .line 268
    const-string v0, "delete_local_content_attempts"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/vungle/publisher/ky;->k:I

    .line 269
    const-string v0, "expiration_timestamp_seconds"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ky;->l:Ljava/lang/Long;

    .line 270
    const-string v0, "parent_path"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ky;->a(Ljava/lang/String;)V

    .line 271
    const-string v0, "prepare_retry_count"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/vungle/publisher/ky;->n:I

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/vungle/publisher/ky;->o:J

    .line 273
    iget-object v0, p0, Lcom/vungle/publisher/ky$a;->k:Lcom/vungle/publisher/md$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/md$a;->a(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/kn;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/md;

    iput-object v0, p1, Lcom/vungle/publisher/ky;->z:Lcom/vungle/publisher/md;

    .line 274
    iget-object v0, p0, Lcom/vungle/publisher/ky$a;->m:Lcom/vungle/publisher/ey$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ey$a;->a(Lcom/vungle/publisher/et;)Lcom/vungle/publisher/ey;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ky;->A:Lcom/vungle/publisher/ey;

    .line 275
    const-string v0, "template_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ky;->B:Ljava/lang/String;

    .line 276
    if-eqz p3, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ky$a;->a(Lcom/vungle/publisher/ky;)Ljava/util/List;

    .line 278
    invoke-virtual {p0, p1, p3}, Lcom/vungle/publisher/ky$a;->a(Lcom/vungle/publisher/ky;Z)Lcom/vungle/publisher/kz;

    .line 280
    :cond_0
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/ky;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/vungle/publisher/ky$a;->h:Lcom/vungle/publisher/le$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/le$a;->a(Lcom/vungle/publisher/dp$a;)Lcom/vungle/publisher/fd;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/le;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/le;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final synthetic a(Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/dp;
    .locals 4

    .prologue
    .line 190
    check-cast p1, Lcom/vungle/publisher/afk;

    invoke-super {p0, p1}, Lcom/vungle/publisher/dp$a;->a(Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ky;

    iget-object v1, p1, Lcom/vungle/publisher/aej;->c:Ljava/lang/Long;

    iput-object v1, v0, Lcom/vungle/publisher/ky;->l:Ljava/lang/Long;

    iget-object v1, p0, Lcom/vungle/publisher/ky$a;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ky;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/publisher/ky$a;->f:Lcom/vungle/publisher/em$a;

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/em$a;->a(Lcom/vungle/publisher/ky;Lcom/vungle/publisher/afk;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ky;->w:Ljava/util/List;

    iget-object v1, p0, Lcom/vungle/publisher/ky$a;->i:Lcom/vungle/publisher/kz$a;

    sget-object v2, Lcom/vungle/publisher/fr$b;->e:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/vungle/publisher/kz$a;->a(Lcom/vungle/publisher/ky;Lcom/vungle/publisher/afk;Lcom/vungle/publisher/fr$b;)Lcom/vungle/publisher/kz;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ky;->x:Lcom/vungle/publisher/kz;

    iget-object v1, p0, Lcom/vungle/publisher/ky$a;->k:Lcom/vungle/publisher/md$a;

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/md$a;->a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/kn;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/md;

    iput-object v1, v0, Lcom/vungle/publisher/ky;->z:Lcom/vungle/publisher/md;

    iget-object v1, p0, Lcom/vungle/publisher/ky$a;->m:Lcom/vungle/publisher/ey$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ey$a;->a(Lcom/vungle/publisher/et;)Lcom/vungle/publisher/ey;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ky;->A:Lcom/vungle/publisher/ey;

    iget-object v1, p1, Lcom/vungle/publisher/afk;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/ky;->B:Ljava/lang/String;

    iget-object v2, p1, Lcom/vungle/publisher/afk;->k:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/vungle/publisher/ky$a;->l:Lcom/vungle/publisher/ki$a;

    iget-object v1, v0, Lcom/vungle/publisher/ky;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lcom/vungle/publisher/ki$a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ky;->y:Ljava/util/List;

    :cond_0
    sget-object v1, Lcom/vungle/publisher/dp$c;->a:Lcom/vungle/publisher/dp$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ky;->a(Lcom/vungle/publisher/dp$c;)V

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .locals 1

    .prologue
    .line 190
    check-cast p1, Lcom/vungle/publisher/ky;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/ky$a;->a(Lcom/vungle/publisher/ky;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ky;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 190
    check-cast p1, Lcom/vungle/publisher/ky;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/ky$a;->a(Lcom/vungle/publisher/ky;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ky;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Lcom/vungle/publisher/et;
    .locals 1

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/vungle/publisher/dp$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/et;

    return-object v0
.end method

.method final a(Lcom/vungle/publisher/ky;Z)Lcom/vungle/publisher/kz;
    .locals 3

    .prologue
    .line 285
    iget-boolean v0, p1, Lcom/vungle/publisher/ky;->r:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p1, Lcom/vungle/publisher/ky;->x:Lcom/vungle/publisher/kz;

    .line 291
    :goto_0
    return-object v0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/ky$a;->i:Lcom/vungle/publisher/kz$a;

    iget-object v0, p1, Lcom/vungle/publisher/ky;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/vungle/publisher/fr$b;->e:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v1, v0, v2, p2}, Lcom/vungle/publisher/kz$a;->a(Ljava/lang/String;Lcom/vungle/publisher/fr$b;Z)Lcom/vungle/publisher/kv;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/kz;

    iput-object v0, p1, Lcom/vungle/publisher/ky;->x:Lcom/vungle/publisher/kz;

    .line 289
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/vungle/publisher/ky;->r:Z

    goto :goto_0
.end method

.method protected final a()Lcom/vungle/publisher/p;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/vungle/publisher/p;->c:Lcom/vungle/publisher/p;

    return-object v0
.end method

.method final a(Lcom/vungle/publisher/ky;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ky;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/em;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 296
    iget-boolean v0, p1, Lcom/vungle/publisher/ky;->q:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p1, Lcom/vungle/publisher/ky;->w:Ljava/util/List;

    .line 302
    :goto_0
    return-object v0

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/ky$a;->f:Lcom/vungle/publisher/em$a;

    sget-object v2, Lcom/vungle/publisher/fr$b;->f:Lcom/vungle/publisher/fr$b;

    iget-object v0, p1, Lcom/vungle/publisher/ky;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2}, Lcom/vungle/publisher/fr$b;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const-string v0, "ad_id = ? AND type = ?"

    invoke-virtual {v1, v0, v3}, Lcom/vungle/publisher/kv$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ky;->w:Ljava/util/List;

    .line 300
    iput-boolean v5, p1, Lcom/vungle/publisher/ky;->q:Z

    goto :goto_0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 190
    new-array v0, p1, [Lcom/vungle/publisher/ky;

    return-object v0
.end method

.method public final synthetic b(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)I
    .locals 1

    .prologue
    .line 190
    check-cast p1, Lcom/vungle/publisher/ky;

    check-cast p2, Lcom/vungle/publisher/afk;

    iget-object v0, p2, Lcom/vungle/publisher/aej;->c:Ljava/lang/Long;

    iput-object v0, p1, Lcom/vungle/publisher/ky;->l:Ljava/lang/Long;

    iget-object v0, p1, Lcom/vungle/publisher/ky;->z:Lcom/vungle/publisher/md;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/md;->a(Lcom/vungle/publisher/aej;)Ljava/util/Map;

    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/dp$a;->b(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Lcom/vungle/publisher/et;
    .locals 1

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/vungle/publisher/dp$a;->b(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/et;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vungle/publisher/ky$a;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ky;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/vungle/publisher/ky$a;->h:Lcom/vungle/publisher/le$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/le$a;->a(Lcom/vungle/publisher/dp$a;)Lcom/vungle/publisher/fd;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/le;

    invoke-virtual {v0}, Lcom/vungle/publisher/le;->b()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic i_()Lcom/vungle/publisher/dp$a;
    .locals 0

    .prologue
    .line 190
    return-object p0
.end method
