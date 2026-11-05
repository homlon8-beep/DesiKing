.class public abstract Lcom/vungle/publisher/kq;
.super Lcom/vungle/publisher/dp;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/kq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/kq",
        "<TA;TV;TR;>;V:",
        "Lcom/vungle/publisher/kp",
        "<TA;>;R:",
        "Lcom/vungle/publisher/afi;",
        ">",
        "Lcom/vungle/publisher/dp;"
    }
.end annotation


# instance fields
.field protected A:Ljava/lang/String;

.field protected B:Lcom/vungle/publisher/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected C:Lcom/vungle/publisher/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/kn",
            "<*TA;TR;",
            "Lcom/vungle/publisher/kr;",
            "**>;"
        }
    .end annotation
.end field

.field protected D:Z

.field E:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/dp;-><init>()V

    .line 105
    return-void
.end method


# virtual methods
.method public final B()Lcom/vungle/publisher/kp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/vungle/publisher/kq;->s()Lcom/vungle/publisher/kq$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/kq$a;->a(Lcom/vungle/publisher/kq;Z)Lcom/vungle/publisher/kp;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/vungle/publisher/dp;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 91
    const-string v1, "call_to_action_final_url"

    iget-object v2, p0, Lcom/vungle/publisher/kq;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "call_to_action_url"

    iget-object v2, p0, Lcom/vungle/publisher/kq;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-object v0
.end method

.method protected synthetic a()Lcom/vungle/publisher/dp$a;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/vungle/publisher/kq;->s()Lcom/vungle/publisher/kq$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/ko;)Ljava/util/List;
    .locals 1
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
    .line 46
    iget-object v0, p0, Lcom/vungle/publisher/kq;->C:Lcom/vungle/publisher/kn;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/kn;->a(Lcom/vungle/publisher/ko;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b_()I
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/vungle/publisher/dp;->b_()I

    move-result v0

    .line 80
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/vungle/publisher/kq;->B:Lcom/vungle/publisher/kp;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/vungle/publisher/kq;->B:Lcom/vungle/publisher/kp;

    invoke-virtual {v1}, Lcom/vungle/publisher/kp;->b_()I

    .line 85
    :cond_0
    return v0
.end method

.method protected final n()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-super {p0}, Lcom/vungle/publisher/dp;->n()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string v1, "call_to_action_final_url"

    iget-object v2, p0, Lcom/vungle/publisher/kq;->z:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 100
    const-string v1, "call_to_action_url"

    iget-object v2, p0, Lcom/vungle/publisher/kq;->A:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 101
    iget-object v1, p0, Lcom/vungle/publisher/kq;->C:Lcom/vungle/publisher/kn;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/kn;->a(Ljava/lang/StringBuilder;)V

    .line 102
    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-super {p0}, Lcom/vungle/publisher/dp;->v()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/vungle/publisher/kq;->C:Lcom/vungle/publisher/kn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vungle/publisher/kq;->C:Lcom/vungle/publisher/kn;

    invoke-virtual {v1}, Lcom/vungle/publisher/kn;->b()V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/kq;->B:Lcom/vungle/publisher/kp;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/vungle/publisher/kq;->B:Lcom/vungle/publisher/kp;

    invoke-virtual {v1}, Lcom/vungle/publisher/kp;->v()Ljava/lang/Object;

    .line 74
    :cond_1
    return-object v0
.end method

.method protected abstract s()Lcom/vungle/publisher/kq$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/kq$a",
            "<TA;TV;TR;>;"
        }
    .end annotation
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vungle/publisher/kq;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vungle/publisher/kq;->A:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic v()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/vungle/publisher/kq;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
