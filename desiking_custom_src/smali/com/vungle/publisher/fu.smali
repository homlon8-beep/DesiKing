.class public final Lcom/vungle/publisher/fu;
.super Lcom/vungle/publisher/kq;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/et;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/fu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kq",
        "<",
        "Lcom/vungle/publisher/fu;",
        "Lcom/vungle/publisher/ft;",
        "Lcom/vungle/publisher/aew;",
        ">;",
        "Lcom/vungle/publisher/et",
        "<",
        "Lcom/vungle/publisher/fu;",
        ">;"
    }
.end annotation


# instance fields
.field q:Lcom/vungle/publisher/fv;

.field r:Lcom/vungle/publisher/fv;

.field public v:Lcom/vungle/publisher/ey;

.field w:Z

.field x:Z

.field y:Lcom/vungle/publisher/fu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vungle/publisher/kq;-><init>()V

    return-void
.end method

.method private C()Lcom/vungle/publisher/fv;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/fu;->y:Lcom/vungle/publisher/fu$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/fu$a;->b(Lcom/vungle/publisher/fu;Z)Lcom/vungle/publisher/fv;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/vungle/publisher/dp$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/fu;->y:Lcom/vungle/publisher/fu$a;

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/dp$c;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/fu;->e:Lcom/vungle/publisher/dp$c;

    .line 64
    invoke-super {p0, p1}, Lcom/vungle/publisher/kq;->a(Lcom/vungle/publisher/dp$c;)V

    .line 65
    iget-object v1, p0, Lcom/vungle/publisher/fu;->v:Lcom/vungle/publisher/ey;

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/ey;->a(Lcom/vungle/publisher/dp$c;Lcom/vungle/publisher/dp$c;)V

    .line 66
    return-void
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/fu;->y:Lcom/vungle/publisher/fu$a;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/vungle/publisher/fu;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/publisher/sa;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b_()I
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/vungle/publisher/kq;->b_()I

    move-result v0

    .line 165
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/vungle/publisher/fu;->r:Lcom/vungle/publisher/fv;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/vungle/publisher/fu;->r:Lcom/vungle/publisher/fv;

    invoke-virtual {v1}, Lcom/vungle/publisher/fv;->b_()I

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/fu;->q:Lcom/vungle/publisher/fv;

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/vungle/publisher/fu;->q:Lcom/vungle/publisher/fv;

    invoke-virtual {v1}, Lcom/vungle/publisher/fv;->b_()I

    .line 173
    :cond_1
    return v0
.end method

.method public final bridge synthetic c()Lcom/vungle/publisher/dp;
    .locals 0

    .prologue
    .line 22
    return-object p0
.end method

.method public final synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/vungle/publisher/kq;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final g_()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/hm",
            "<",
            "Lcom/vungle/publisher/fu;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-direct {p0}, Lcom/vungle/publisher/fu;->C()Lcom/vungle/publisher/fv;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/publisher/fu;->B()Lcom/vungle/publisher/kp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ft;

    .line 76
    if-eqz v0, :cond_1

    .line 77
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/vungle/publisher/fu;->q()Lcom/vungle/publisher/fv;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    return-object v1
.end method

.method public final h_()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcom/vungle/publisher/fu;->C()Lcom/vungle/publisher/fv;

    move-result-object v6

    .line 112
    invoke-virtual {p0}, Lcom/vungle/publisher/fu;->B()Lcom/vungle/publisher/kp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ft;

    .line 113
    invoke-virtual {p0}, Lcom/vungle/publisher/fu;->q()Lcom/vungle/publisher/fv;

    move-result-object v7

    .line 114
    if-eqz v6, :cond_5

    move v5, v2

    .line 115
    :goto_0
    if-eqz v0, :cond_6

    move v4, v2

    .line 116
    :goto_1
    if-eqz v7, :cond_7

    move v3, v2

    .line 117
    :goto_2
    if-nez v5, :cond_0

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/vungle/publisher/fu;->z()Ljava/lang/String;

    move-result-object v2

    .line 119
    if-eqz v1, :cond_8

    .line 120
    if-eqz v5, :cond_2

    .line 121
    const-string v5, "VunglePrepare"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/vungle/publisher/fr$b;->c:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, v6, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    iget-object v6, v6, Lcom/vungle/publisher/hn;->b:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_2
    if-eqz v4, :cond_3

    .line 124
    const-string v4, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/vungle/publisher/fr$b;->a:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    iget-object v0, v0, Lcom/vungle/publisher/hn;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_3
    if-eqz v3, :cond_4

    .line 127
    const-string v0, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vungle/publisher/fr$b;->b:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    iget-object v3, v3, Lcom/vungle/publisher/hn;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_4
    :goto_3
    return v1

    :cond_5
    move v5, v1

    .line 114
    goto/16 :goto_0

    :cond_6
    move v4, v1

    .line 115
    goto/16 :goto_1

    :cond_7
    move v3, v1

    .line 116
    goto/16 :goto_2

    .line 131
    :cond_8
    sget-object v0, Lcom/vungle/publisher/dp$c;->c:Lcom/vungle/publisher/dp$c;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/fu;->a(Lcom/vungle/publisher/dp$c;)V

    goto :goto_3
.end method

.method public final q()Lcom/vungle/publisher/fv;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vungle/publisher/fu;->y:Lcom/vungle/publisher/fu$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/fu$a;->a(Lcom/vungle/publisher/fu;Z)Lcom/vungle/publisher/fv;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-super {p0}, Lcom/vungle/publisher/kq;->r()Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/vungle/publisher/fu;->q:Lcom/vungle/publisher/fv;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/vungle/publisher/fu;->q:Lcom/vungle/publisher/fv;

    invoke-virtual {v1}, Lcom/vungle/publisher/fv;->v()Ljava/lang/Object;

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/fu;->r:Lcom/vungle/publisher/fv;

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/vungle/publisher/fu;->r:Lcom/vungle/publisher/fv;

    invoke-virtual {v1}, Lcom/vungle/publisher/fv;->v()Ljava/lang/Object;

    .line 159
    :cond_1
    return-object v0
.end method

.method public final bridge synthetic s()Lcom/vungle/publisher/kq$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/fu;->y:Lcom/vungle/publisher/fu$a;

    return-object v0
.end method

.method public final synthetic v()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/vungle/publisher/fu;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
