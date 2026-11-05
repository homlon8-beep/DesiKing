.class public final Lcom/vungle/publisher/lj$a;
.super Lcom/vungle/publisher/fj$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/lj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/fj$a",
        "<",
        "Lcom/vungle/publisher/lj;",
        "Lcom/vungle/publisher/acu;",
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
            "Lcom/vungle/publisher/lj;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vungle/publisher/fj$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/lj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/lj;
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/fj$a;->a(Lcom/vungle/publisher/fj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fj;

    .line 57
    new-instance v0, Lcom/vungle/publisher/it;

    const-string v1, "event"

    invoke-static {p2, v1}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/it;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/vungle/publisher/lj;->c:Lcom/vungle/publisher/ko;

    .line 58
    return-object p1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/List;)I
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/vungle/publisher/fj$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcom/vungle/publisher/lj;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/lj$a;->a(Lcom/vungle/publisher/lj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/lj;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/fj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fj;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcom/vungle/publisher/lj;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/lj$a;->a(Lcom/vungle/publisher/lj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/lj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/fj$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Ljava/lang/String;Lcom/vungle/publisher/aft;)Ljava/util/Map;
    .locals 4

    .prologue
    .line 32
    check-cast p2, Lcom/vungle/publisher/acu;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/vungle/publisher/acu;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/vungle/publisher/it;

    invoke-direct {v3, v0}, Lcom/vungle/publisher/it;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/vungle/publisher/acu;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/vungle/publisher/lj$a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/ko;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 32
    new-array v0, p1, [Lcom/vungle/publisher/lj;

    return-object v0
.end method

.method public final bridge synthetic c(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/vungle/publisher/fj$a;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vungle/publisher/lj$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/lj;

    return-object v0
.end method

.method public final bridge synthetic j_()Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/vungle/publisher/fj$a;->j_()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
