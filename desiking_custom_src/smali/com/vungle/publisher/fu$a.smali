.class public final Lcom/vungle/publisher/fu$a;
.super Lcom/vungle/publisher/kq$a;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/fc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/fu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kq$a",
        "<",
        "Lcom/vungle/publisher/fu;",
        "Lcom/vungle/publisher/ft;",
        "Lcom/vungle/publisher/aew;",
        ">;",
        "Lcom/vungle/publisher/fc",
        "<",
        "Lcom/vungle/publisher/fu;",
        "Lcom/vungle/publisher/aew;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/fv$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/kv$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/fu;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/ft$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/cz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/ga$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/ey$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/gz$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/vungle/publisher/kq$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/aew;)Lcom/vungle/publisher/fu;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/rw;
        }
    .end annotation

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/vungle/publisher/kq$a;->a(Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kq;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fu;

    .line 222
    iget-object v1, p0, Lcom/vungle/publisher/fu$a;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/fu;->a(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/vungle/publisher/fu$a;->e:Lcom/vungle/publisher/fv$a;

    sget-object v2, Lcom/vungle/publisher/fr$b;->c:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/vungle/publisher/fv$a;->a(Lcom/vungle/publisher/fu;Lcom/vungle/publisher/aew;Lcom/vungle/publisher/fr$b;)Lcom/vungle/publisher/fv;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/fu;->r:Lcom/vungle/publisher/fv;

    .line 225
    iget-object v1, p0, Lcom/vungle/publisher/fu$a;->e:Lcom/vungle/publisher/fv$a;

    sget-object v2, Lcom/vungle/publisher/fr$b;->b:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/vungle/publisher/fv$a;->a(Lcom/vungle/publisher/fu;Lcom/vungle/publisher/aew;Lcom/vungle/publisher/fr$b;)Lcom/vungle/publisher/fv;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/fu;->q:Lcom/vungle/publisher/fv;

    .line 226
    iget-object v1, p0, Lcom/vungle/publisher/fu$a;->k:Lcom/vungle/publisher/ey$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ey$a;->a(Lcom/vungle/publisher/et;)Lcom/vungle/publisher/ey;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/fu;->v:Lcom/vungle/publisher/ey;

    .line 227
    sget-object v1, Lcom/vungle/publisher/dp$c;->a:Lcom/vungle/publisher/dp$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/fu;->a(Lcom/vungle/publisher/dp$c;)V

    .line 228
    return-object v0
.end method

.method private a(Lcom/vungle/publisher/fu;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fu;
    .locals 1

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/kq$a;->a(Lcom/vungle/publisher/kq;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kq;

    .line 254
    const-string v0, "parent_path"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/fu;->a(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/vungle/publisher/fu$a;->k:Lcom/vungle/publisher/ey$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ey$a;->a(Lcom/vungle/publisher/et;)Lcom/vungle/publisher/ey;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/fu;->v:Lcom/vungle/publisher/ey;

    .line 258
    if-eqz p3, :cond_0

    .line 259
    invoke-virtual {p0, p1, p3}, Lcom/vungle/publisher/fu$a;->a(Lcom/vungle/publisher/fu;Z)Lcom/vungle/publisher/fv;

    .line 260
    invoke-virtual {p0, p1, p3}, Lcom/vungle/publisher/fu$a;->b(Lcom/vungle/publisher/fu;Z)Lcom/vungle/publisher/fv;

    .line 262
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
            "Lcom/vungle/publisher/fu;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/vungle/publisher/fu$a;->j:Lcom/vungle/publisher/ga$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/ga$a;->a(Lcom/vungle/publisher/dp$a;)Lcom/vungle/publisher/fd;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ga;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ga;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/dp;
    .locals 1

    .prologue
    .line 176
    check-cast p1, Lcom/vungle/publisher/aew;

    invoke-direct {p0, p1}, Lcom/vungle/publisher/fu$a;->a(Lcom/vungle/publisher/aew;)Lcom/vungle/publisher/fu;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .locals 1

    .prologue
    .line 176
    check-cast p1, Lcom/vungle/publisher/fu;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/fu$a;->a(Lcom/vungle/publisher/fu;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fu;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 176
    check-cast p1, Lcom/vungle/publisher/fu;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/fu$a;->a(Lcom/vungle/publisher/fu;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Lcom/vungle/publisher/et;
    .locals 1

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/vungle/publisher/kq$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/et;

    return-object v0
.end method

.method final a(Lcom/vungle/publisher/fu;Z)Lcom/vungle/publisher/fv;
    .locals 3

    .prologue
    .line 267
    iget-boolean v0, p1, Lcom/vungle/publisher/fu;->w:Z

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p1, Lcom/vungle/publisher/fu;->q:Lcom/vungle/publisher/fv;

    .line 274
    :goto_0
    return-object v0

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/fu$a;->e:Lcom/vungle/publisher/fv$a;

    iget-object v0, p1, Lcom/vungle/publisher/fu;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/vungle/publisher/fr$b;->b:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v1, v0, v2, p2}, Lcom/vungle/publisher/fv$a;->a(Ljava/lang/String;Lcom/vungle/publisher/fr$b;Z)Lcom/vungle/publisher/kv;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fv;

    iput-object v0, p1, Lcom/vungle/publisher/fu;->q:Lcom/vungle/publisher/fv;

    .line 272
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/vungle/publisher/fu;->w:Z

    goto :goto_0
.end method

.method public final bridge synthetic a(Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kq;
    .locals 1

    .prologue
    .line 176
    check-cast p1, Lcom/vungle/publisher/aew;

    invoke-direct {p0, p1}, Lcom/vungle/publisher/fu$a;->a(Lcom/vungle/publisher/aew;)Lcom/vungle/publisher/fu;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/kq;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kq;
    .locals 1

    .prologue
    .line 176
    check-cast p1, Lcom/vungle/publisher/fu;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/fu$a;->a(Lcom/vungle/publisher/fu;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fu;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Lcom/vungle/publisher/p;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/vungle/publisher/p;->a:Lcom/vungle/publisher/p;

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 176
    new-array v0, p1, [Lcom/vungle/publisher/fu;

    return-object v0
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Lcom/vungle/publisher/et;
    .locals 1

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/vungle/publisher/kq$a;->b(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/et;

    return-object v0
.end method

.method final b(Lcom/vungle/publisher/fu;Z)Lcom/vungle/publisher/fv;
    .locals 3

    .prologue
    .line 279
    iget-boolean v0, p1, Lcom/vungle/publisher/fu;->x:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p1, Lcom/vungle/publisher/fu;->r:Lcom/vungle/publisher/fv;

    .line 286
    :goto_0
    return-object v0

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/fu$a;->e:Lcom/vungle/publisher/fv$a;

    iget-object v0, p1, Lcom/vungle/publisher/fu;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/vungle/publisher/fr$b;->c:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v1, v0, v2, p2}, Lcom/vungle/publisher/fv$a;->a(Ljava/lang/String;Lcom/vungle/publisher/fr$b;Z)Lcom/vungle/publisher/kv;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fv;

    iput-object v0, p1, Lcom/vungle/publisher/fu;->r:Lcom/vungle/publisher/fv;

    .line 284
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/vungle/publisher/fu;->x:Z

    goto :goto_0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vungle/publisher/fu$a;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fu;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/vungle/publisher/fu$a;->j:Lcom/vungle/publisher/ga$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/ga$a;->a(Lcom/vungle/publisher/dp$a;)Lcom/vungle/publisher/fd;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ga;

    invoke-virtual {v0}, Lcom/vungle/publisher/ga;->b()I

    move-result v0

    return v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/kn$a;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vungle/publisher/fu$a;->l:Lcom/vungle/publisher/gz$a;

    return-object v0
.end method

.method protected final bridge synthetic f()Lcom/vungle/publisher/kp$a;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vungle/publisher/fu$a;->h:Lcom/vungle/publisher/ft$a;

    return-object v0
.end method

.method public final bridge synthetic i_()Lcom/vungle/publisher/dp$a;
    .locals 0

    .prologue
    .line 176
    return-object p0
.end method
