.class public final Lcom/vungle/publisher/ky;
.super Lcom/vungle/publisher/es;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/et;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ky$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/es;",
        "Lcom/vungle/publisher/et",
        "<",
        "Lcom/vungle/publisher/ky;",
        ">;"
    }
.end annotation


# instance fields
.field A:Lcom/vungle/publisher/ey;

.field B:Ljava/lang/String;

.field C:Lcom/vungle/publisher/ky$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field D:Lcom/vungle/publisher/mm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field q:Z

.field r:Z

.field v:Z

.field w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/em;",
            ">;"
        }
    .end annotation
.end field

.field x:Lcom/vungle/publisher/kz;

.field y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/ki;",
            ">;"
        }
    .end annotation
.end field

.field z:Lcom/vungle/publisher/md;


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/vungle/publisher/es;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/vungle/publisher/ky;->q:Z

    .line 32
    iput-boolean v0, p0, Lcom/vungle/publisher/ky;->r:Z

    .line 33
    iput-boolean v0, p0, Lcom/vungle/publisher/ky;->v:Z

    .line 47
    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/vungle/publisher/es;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 138
    if-eqz p1, :cond_0

    .line 139
    const-string v1, "template_id"

    iget-object v2, p0, Lcom/vungle/publisher/ky;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-object v0
.end method

.method public final bridge synthetic a()Lcom/vungle/publisher/dp$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vungle/publisher/ky;->C:Lcom/vungle/publisher/ky$a;

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
    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/ky;->z:Lcom/vungle/publisher/md;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/md;->a(Lcom/vungle/publisher/ko;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/dp$c;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/ky;->e:Lcom/vungle/publisher/dp$c;

    .line 90
    invoke-super {p0, p1}, Lcom/vungle/publisher/es;->a(Lcom/vungle/publisher/dp$c;)V

    .line 91
    iget-object v1, p0, Lcom/vungle/publisher/ky;->A:Lcom/vungle/publisher/ey;

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/ey;->a(Lcom/vungle/publisher/dp$c;Lcom/vungle/publisher/dp$c;)V

    .line 92
    return-void
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vungle/publisher/ky;->C:Lcom/vungle/publisher/ky$a;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/vungle/publisher/ky;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/publisher/sa;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b_()I
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Lcom/vungle/publisher/es;->b_()I

    move-result v1

    .line 117
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/vungle/publisher/ky;->w:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/vungle/publisher/ky;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/em;

    .line 120
    invoke-virtual {v0}, Lcom/vungle/publisher/em;->b_()I

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/ky;->x:Lcom/vungle/publisher/kz;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/vungle/publisher/ky;->x:Lcom/vungle/publisher/kz;

    invoke-virtual {v0}, Lcom/vungle/publisher/kz;->b_()I

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/ky;->y:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/vungle/publisher/ky;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ki;

    .line 128
    invoke-virtual {v0}, Lcom/vungle/publisher/ki;->b_()I

    goto :goto_1

    .line 132
    :cond_2
    return v1
.end method

.method public final bridge synthetic c()Lcom/vungle/publisher/dp;
    .locals 0

    .prologue
    .line 28
    return-object p0
.end method

.method public final synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/vungle/publisher/es;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final g_()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/hm",
            "<",
            "Lcom/vungle/publisher/ky;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/vungle/publisher/ky;->C:Lcom/vungle/publisher/ky$a;

    .line 175
    invoke-virtual {v1, p0}, Lcom/vungle/publisher/ky$a;->a(Lcom/vungle/publisher/ky;)Ljava/util/List;

    .line 176
    iget-object v2, p0, Lcom/vungle/publisher/ky;->w:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/vungle/publisher/ky;->w:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/vungle/publisher/ky$a;->a(Lcom/vungle/publisher/ky;Z)Lcom/vungle/publisher/kz;

    .line 182
    iget-object v1, p0, Lcom/vungle/publisher/ky;->x:Lcom/vungle/publisher/kz;

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/vungle/publisher/ky;->x:Lcom/vungle/publisher/kz;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :goto_1
    return-object v0

    .line 179
    :cond_0
    const-string v2, "VungleDatabase"

    const-string v3, "vungle mraid ad assets are null"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_1
    const-string v1, "VungleDatabase"

    const-string v2, "vungle mraid ad template is null"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final h_()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 156
    iget-object v1, p0, Lcom/vungle/publisher/ky;->C:Lcom/vungle/publisher/ky$a;

    .line 157
    invoke-virtual {v1, p0, v0}, Lcom/vungle/publisher/ky$a;->a(Lcom/vungle/publisher/ky;Z)Lcom/vungle/publisher/kz;

    .line 158
    iget-object v1, p0, Lcom/vungle/publisher/ky;->x:Lcom/vungle/publisher/kz;

    if-eqz v1, :cond_0

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/vungle/publisher/ky;->z()Ljava/lang/String;

    move-result-object v1

    .line 161
    if-eqz v0, :cond_1

    .line 162
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/vungle/publisher/fr$b;->e:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/vungle/publisher/ky;->x:Lcom/vungle/publisher/kz;

    iget-object v3, v3, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    iget-object v3, v3, Lcom/vungle/publisher/hn;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_1
    return v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :cond_1
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vungle mraid ad is invalid. template = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vungle/publisher/ky;->x:Lcom/vungle/publisher/kz;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v1, Lcom/vungle/publisher/dp$c;->c:Lcom/vungle/publisher/dp$c;

    invoke-virtual {p0, v1}, Lcom/vungle/publisher/ky;->a(Lcom/vungle/publisher/dp$c;)V

    goto :goto_1
.end method

.method public final synthetic q()Lcom/vungle/publisher/mq;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vungle/publisher/ky;->C:Lcom/vungle/publisher/ky$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/ky$a;->a(Lcom/vungle/publisher/ky;Z)Lcom/vungle/publisher/kz;

    iget-object v0, p0, Lcom/vungle/publisher/ky;->D:Lcom/vungle/publisher/mm$a;

    iget-object v1, p0, Lcom/vungle/publisher/ky;->x:Lcom/vungle/publisher/kz;

    invoke-virtual {v1}, Lcom/vungle/publisher/kz;->C()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/mm$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/mm;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic v()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 28
    invoke-super {p0}, Lcom/vungle/publisher/es;->v()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/publisher/ky;->z:Lcom/vungle/publisher/md;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vungle/publisher/ky;->z:Lcom/vungle/publisher/md;

    invoke-virtual {v1}, Lcom/vungle/publisher/md;->b()V

    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/ky;->w:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vungle/publisher/ky;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/em;

    invoke-virtual {v1}, Lcom/vungle/publisher/em;->q()Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/vungle/publisher/ky;->x:Lcom/vungle/publisher/kz;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vungle/publisher/ky;->x:Lcom/vungle/publisher/kz;

    invoke-virtual {v1}, Lcom/vungle/publisher/kz;->v()Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/vungle/publisher/ky;->y:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vungle/publisher/ky;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/ki;

    invoke-virtual {v1}, Lcom/vungle/publisher/ki;->v()Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v0
.end method
