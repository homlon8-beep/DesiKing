.class public abstract Lcom/vungle/publisher/kn;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/kn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/vungle/publisher/kn",
        "<TD;TA;TR;TE;TF;TT;>;A:",
        "Lcom/vungle/publisher/dp;",
        "R:",
        "Lcom/vungle/publisher/aej;",
        "E:",
        "Lcom/vungle/publisher/fj;",
        "F:",
        "Lcom/vungle/publisher/fj$a",
        "<TE;TT;TR;>;T:",
        "Lcom/vungle/publisher/aft;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/ko;",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field protected c:Lcom/vungle/publisher/dp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/vungle/publisher/kn$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/kn$a",
            "<TD;TA;TR;TE;TF;TT;>;"
        }
    .end annotation
.end method

.method public final a(Lcom/vungle/publisher/ko;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ko;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lcom/vungle/publisher/kn;->b:Ljava/util/Map;

    .line 32
    if-eqz v0, :cond_1

    .line 33
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 34
    if-eqz v0, :cond_1

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 36
    if-lez v2, :cond_1

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fj;

    .line 39
    iget-object v0, v0, Lcom/vungle/publisher/fj;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 44
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/vungle/publisher/aej;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/ko;",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/vungle/publisher/kn;->a()Lcom/vungle/publisher/kn$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/kn$a;->a()Lcom/vungle/publisher/fj$a;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Lcom/vungle/publisher/fj$a;->a(Lcom/vungle/publisher/aej;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/kn;->b:Ljava/util/Map;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/kn;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 48
    const-string v1, "eventTrackings"

    iget-object v0, p0, Lcom/vungle/publisher/kn;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 49
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/kn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/publisher/kn;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/vungle/publisher/kn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fj;

    .line 23
    invoke-virtual {v0}, Lcom/vungle/publisher/fj;->v()Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method
