.class abstract Lcom/vungle/publisher/kn$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/kn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/vungle/publisher/fj$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation
.end method

.method public final a(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/kn;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TD;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/vungle/publisher/kn$a;->b()Lcom/vungle/publisher/kn;

    move-result-object v1

    .line 70
    iput-object p1, v1, Lcom/vungle/publisher/kn;->c:Lcom/vungle/publisher/dp;

    invoke-virtual {p0}, Lcom/vungle/publisher/kn$a;->a()Lcom/vungle/publisher/fj$a;

    move-result-object v2

    iget-object v0, p1, Lcom/vungle/publisher/dp;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/fj$a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, v1, Lcom/vungle/publisher/kn;->b:Ljava/util/Map;

    const-string v2, "VungleReport"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " event trackings by adId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Lcom/vungle/publisher/dp;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "VungleReport"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "no event trackings for adId: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/vungle/publisher/dp;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/kn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)TD;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/vungle/publisher/kn$a;->b()Lcom/vungle/publisher/kn;

    move-result-object v1

    .line 65
    iput-object p1, v1, Lcom/vungle/publisher/kn;->c:Lcom/vungle/publisher/dp;

    invoke-virtual {p0}, Lcom/vungle/publisher/kn$a;->a()Lcom/vungle/publisher/fj$a;

    move-result-object v2

    iget-object v0, p1, Lcom/vungle/publisher/dp;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p2, Lcom/vungle/publisher/aej;->d:Lcom/vungle/publisher/aft;

    invoke-virtual {v2, v0, v3}, Lcom/vungle/publisher/fj$a;->a(Ljava/lang/String;Lcom/vungle/publisher/aft;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/kn;->b:Ljava/util/Map;

    return-object v1
.end method

.method protected abstract b()Lcom/vungle/publisher/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method
