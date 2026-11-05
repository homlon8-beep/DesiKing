.class public abstract Lcom/vungle/publisher/kv;
.super Lcom/vungle/publisher/er;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/fr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/kv$1;,
        Lcom/vungle/publisher/kv$a;,
        Lcom/vungle/publisher/kv$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/dp;",
        ">",
        "Lcom/vungle/publisher/er",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/vungle/publisher/fr",
        "<TA;>;"
    }
.end annotation


# instance fields
.field protected o:Ljava/lang/String;

.field protected p:Lcom/vungle/publisher/p;

.field protected q:Lcom/vungle/publisher/fr$a;

.field protected r:Lcom/vungle/publisher/fr$b;

.field protected v:Lcom/vungle/publisher/dp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vungle/publisher/er;-><init>()V

    return-void
.end method


# virtual methods
.method protected final A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vungle/publisher/kv;->r:Lcom/vungle/publisher/fr$b;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 85
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    const-string v2, "id"

    iget-object v0, p0, Lcom/vungle/publisher/kv;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v0, "ad_id"

    iget-object v2, p0, Lcom/vungle/publisher/kv;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "type"

    iget-object v2, p0, Lcom/vungle/publisher/kv;->r:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v2}, Lcom/vungle/publisher/fr$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "ad_type"

    iget-object v2, p0, Lcom/vungle/publisher/kv;->p:Lcom/vungle/publisher/p;

    invoke-virtual {v2}, Lcom/vungle/publisher/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    const-string v0, "status"

    iget-object v2, p0, Lcom/vungle/publisher/kv;->q:Lcom/vungle/publisher/fr$a;

    invoke-virtual {v2}, Lcom/vungle/publisher/fr$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-object v1
.end method

.method public final a(Lcom/vungle/publisher/fr$a;)V
    .locals 3

    .prologue
    .line 67
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/kv;->r:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/kv;->q:Lcom/vungle/publisher/fr$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for ad_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/kv;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/vungle/publisher/kv;->q:Lcom/vungle/publisher/fr$a;

    .line 69
    return-void
.end method

.method public final b(Lcom/vungle/publisher/fr$a;)V
    .locals 3

    .prologue
    .line 72
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updating "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/kv;->r:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/kv;->q:Lcom/vungle/publisher/fr$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for ad_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/kv;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lcom/vungle/publisher/kv;->q:Lcom/vungle/publisher/fr$a;

    .line 74
    invoke-virtual {p0}, Lcom/vungle/publisher/kv;->b_()I

    .line 75
    return-void
.end method

.method public final c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vungle/publisher/kv;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/kv;->v:Lcom/vungle/publisher/dp;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vungle/publisher/kv;->r()Lcom/vungle/publisher/dp$a;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/kv;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dp$a;->b(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dp;

    iput-object v0, p0, Lcom/vungle/publisher/kv;->v:Lcom/vungle/publisher/dp;

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/kv;->v:Lcom/vungle/publisher/dp;

    invoke-virtual {v0}, Lcom/vungle/publisher/dp;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "viewable"

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vungle/publisher/kv;->o:Ljava/lang/String;

    return-object v0
.end method

.method protected n()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-super {p0}, Lcom/vungle/publisher/er;->n()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/vungle/publisher/kv;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 102
    const-string v1, "status"

    iget-object v2, p0, Lcom/vungle/publisher/kv;->q:Lcom/vungle/publisher/fr$a;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 103
    const-string v1, "type"

    iget-object v2, p0, Lcom/vungle/publisher/kv;->r:Lcom/vungle/publisher/fr$b;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 104
    return-object v0
.end method

.method protected abstract r()Lcom/vungle/publisher/dp$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/dp$a",
            "<TA;*>;"
        }
    .end annotation
.end method

.method public final s()Lcom/vungle/publisher/p;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vungle/publisher/kv;->p:Lcom/vungle/publisher/p;

    return-object v0
.end method

.method public final t()Lcom/vungle/publisher/fr$a;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/kv;->q:Lcom/vungle/publisher/fr$a;

    return-object v0
.end method

.method public final u()Lcom/vungle/publisher/fr$b;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vungle/publisher/kv;->r:Lcom/vungle/publisher/fr$b;

    return-object v0
.end method

.method public final bridge synthetic w()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vungle/publisher/kv;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
