.class public final Lcom/vungle/publisher/em$a;
.super Lcom/vungle/publisher/kv$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kv$a",
        "<",
        "Lcom/vungle/publisher/ky;",
        "Lcom/vungle/publisher/em;",
        "Lcom/vungle/publisher/afk;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/em;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/hn$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/ki$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/vungle/publisher/kv$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/em;Landroid/database/Cursor;Z)Lcom/vungle/publisher/em;
    .locals 1

    .prologue
    .line 181
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/kv$a;->a(Lcom/vungle/publisher/kv;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kv;

    .line 182
    const-string v0, "extension"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/em;->b:Ljava/lang/String;

    .line 183
    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/em;->c:Ljava/lang/String;

    .line 184
    iget-object v0, p1, Lcom/vungle/publisher/em;->a:Lcom/vungle/publisher/hn;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/hn;->a(Landroid/database/Cursor;)V

    .line 185
    return-object p1
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 142
    check-cast p1, Lcom/vungle/publisher/em;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/em$a;->a(Lcom/vungle/publisher/em;Landroid/database/Cursor;Z)Lcom/vungle/publisher/em;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/kv;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kv;
    .locals 1

    .prologue
    .line 142
    check-cast p1, Lcom/vungle/publisher/em;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/em$a;->a(Lcom/vungle/publisher/em;Landroid/database/Cursor;Z)Lcom/vungle/publisher/em;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/ky;Lcom/vungle/publisher/afk;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ky;",
            "Lcom/vungle/publisher/afk;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/em;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p2, Lcom/vungle/publisher/afk;->l:Lcom/vungle/publisher/afz;

    .line 171
    iget-object v0, v0, Lcom/vungle/publisher/afz;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/afy;

    .line 174
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_4

    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/kv$a;->a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/kv;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/em;

    sget-object v4, Lcom/vungle/publisher/fr$b;->f:Lcom/vungle/publisher/fr$b;

    iput-object v4, v1, Lcom/vungle/publisher/em;->r:Lcom/vungle/publisher/fr$b;

    iget-object v4, v0, Lcom/vungle/publisher/afy;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/vungle/publisher/afy;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vungle/publisher/afy;->c:Ljava/lang/String;

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "asset object must have a non-null url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez v5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "asset object must have a non-null extension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "asset object must have a non-null name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v0, v1, Lcom/vungle/publisher/em;->c:Ljava/lang/String;

    iput-object v5, v1, Lcom/vungle/publisher/em;->b:Ljava/lang/String;

    iget-object v0, v1, Lcom/vungle/publisher/em;->a:Lcom/vungle/publisher/hn;

    iput-object v4, v0, Lcom/vungle/publisher/hn;->b:Ljava/lang/String;

    :cond_3
    iget-object v4, p0, Lcom/vungle/publisher/em$a;->c:Lcom/vungle/publisher/ki$a;

    invoke-virtual {p1}, Lcom/vungle/publisher/ky;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, v1, Lcom/vungle/publisher/em;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/vungle/publisher/em;->a:Lcom/vungle/publisher/hn;

    invoke-virtual {v6}, Lcom/vungle/publisher/hn;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/vungle/publisher/ki$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/publisher/ki;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/em;->d:Lcom/vungle/publisher/ki;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot create asset with null url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_5
    return-object v2
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 142
    new-array v0, p1, [Lcom/vungle/publisher/em;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vungle/publisher/em$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/em;

    iget-object v1, p0, Lcom/vungle/publisher/em$a;->b:Lcom/vungle/publisher/hn$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/hn$a;->a(Lcom/vungle/publisher/hn$b;)Lcom/vungle/publisher/hn;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/em;->a:Lcom/vungle/publisher/hn;

    return-object v0
.end method
