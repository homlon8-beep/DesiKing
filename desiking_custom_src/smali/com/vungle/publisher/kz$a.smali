.class public final Lcom/vungle/publisher/kz$a;
.super Lcom/vungle/publisher/fs$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/kz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/fs$a",
        "<",
        "Lcom/vungle/publisher/ky;",
        "Lcom/vungle/publisher/kz;",
        "Lcom/vungle/publisher/afk;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/kz;",
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
    .line 41
    invoke-direct {p0}, Lcom/vungle/publisher/fs$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/List;)I
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/vungle/publisher/fs$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method final bridge synthetic a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;Lcom/vungle/publisher/fr$b;)Lcom/vungle/publisher/fs;
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lcom/vungle/publisher/ky;

    check-cast p2, Lcom/vungle/publisher/afk;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/kz$a;->a(Lcom/vungle/publisher/ky;Lcom/vungle/publisher/afk;Lcom/vungle/publisher/fr$b;)Lcom/vungle/publisher/kz;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/vungle/publisher/ky;Lcom/vungle/publisher/afk;Lcom/vungle/publisher/fr$b;)Lcom/vungle/publisher/kz;
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    if-eqz p2, :cond_0

    .line 46
    iget-object v1, p2, Lcom/vungle/publisher/afk;->m:Ljava/lang/String;

    .line 47
    if-eqz v1, :cond_0

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/fs$a;->a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;Lcom/vungle/publisher/fr$b;)Lcom/vungle/publisher/fs;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/kz;

    .line 49
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/kz;->a(Ljava/lang/String;)V

    .line 53
    :cond_0
    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/fs$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 36
    new-array v0, p1, [Lcom/vungle/publisher/kz;

    return-object v0
.end method

.method public final bridge synthetic c(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/vungle/publisher/fs$a;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vungle/publisher/kz$a;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/kz;

    iget-object v1, p0, Lcom/vungle/publisher/kz$a;->a:Lcom/vungle/publisher/hn$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/hn$a;->a(Lcom/vungle/publisher/hn$b;)Lcom/vungle/publisher/hn;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/kz;->g:Lcom/vungle/publisher/hn;

    return-object v0
.end method

.method public final bridge synthetic j_()Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Lcom/vungle/publisher/fs$a;->j_()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
