.class public abstract Lcom/vungle/publisher/fs;
.super Lcom/vungle/publisher/kv;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/hn$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/fs$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/dp;",
        "V:",
        "Lcom/vungle/publisher/fs",
        "<TA;TV;>;>",
        "Lcom/vungle/publisher/kv",
        "<TA;>;",
        "Lcom/vungle/publisher/hn$b",
        "<TA;>;"
    }
.end annotation


# instance fields
.field a:[Lcom/vungle/publisher/eh;

.field b:Z

.field c:Z

.field d:Z

.field e:Lcom/vungle/publisher/hs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/eh$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/hn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vungle/publisher/kv;-><init>()V

    .line 260
    return-void
.end method

.method private E()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 141
    .line 143
    iget-object v0, p0, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->a()Ljava/io/File;

    move-result-object v3

    .line 145
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vungle/publisher/fs;->B()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/vungle/publisher/sd$a;

    const/4 v6, 0x0

    new-instance v7, Lcom/vungle/publisher/fs$1;

    invoke-direct {v7, p0, v0}, Lcom/vungle/publisher/fs$1;-><init>(Lcom/vungle/publisher/fs;Ljava/util/List;)V

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/vungle/publisher/sd;->a(Ljava/io/File;Ljava/io/File;[Lcom/vungle/publisher/sd$a;)V

    .line 154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/vungle/publisher/eh;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/eh;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/vungle/publisher/fs;->a([Lcom/vungle/publisher/eh;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 160
    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    iget-object v1, p0, Lcom/vungle/publisher/fs;->e:Lcom/vungle/publisher/hs$a;

    const-string v4, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error extracting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v0}, Lcom/vungle/publisher/hs$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_0
.end method

.method private F()Z
    .locals 5

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/vungle/publisher/fs;->B()Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vungle/publisher/fs;->r:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/vungle/publisher/fs;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/publisher/sa;->a(Ljava/lang/String;)Z

    move-result v1

    .line 207
    if-eqz v1, :cond_0

    .line 208
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vungle/publisher/fs;->r:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/fs;->a:[Lcom/vungle/publisher/eh;

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/fs;->d:Z

    .line 215
    :goto_0
    return v1

    .line 213
    :cond_0
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to delete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vungle/publisher/fs;->r:Lcom/vungle/publisher/fr$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a([Lcom/vungle/publisher/eh;Z)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lcom/vungle/publisher/fs;->a:[Lcom/vungle/publisher/eh;

    .line 92
    iput-boolean p2, p0, Lcom/vungle/publisher/fs;->c:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/fs;->b:Z

    .line 94
    return-void
.end method


# virtual methods
.method final B()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vungle/publisher/fs;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vungle/publisher/fs;->r:Lcom/vungle/publisher/fr$b;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vungle/publisher/sa;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final C()Ljava/io/File;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vungle/publisher/fs;->D()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vungle/publisher/fs;->B()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "index.html"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vungle/publisher/sa;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Z)Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/vungle/publisher/kv;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/hn;->a(Landroid/content/ContentValues;)V

    .line 248
    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/yu;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/hn;->a(Lcom/vungle/publisher/yu;)V

    .line 122
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    iput-object p1, v0, Lcom/vungle/publisher/hn;->c:Ljava/lang/Integer;

    .line 67
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    iput-object p1, v0, Lcom/vungle/publisher/hn;->b:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public final b_()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-super {p0}, Lcom/vungle/publisher/kv;->b_()I

    move-result v1

    .line 228
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 229
    iget-boolean v0, p0, Lcom/vungle/publisher/fs;->d:Z

    if-eqz v0, :cond_1

    .line 230
    iget-object v2, p0, Lcom/vungle/publisher/fs;->f:Lcom/vungle/publisher/eh$a;

    iget-object v0, p0, Lcom/vungle/publisher/fs;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/eh$a;->a(Ljava/lang/Integer;)I

    .line 231
    invoke-direct {p0}, Lcom/vungle/publisher/fs;->F()Z

    .line 232
    const-string v0, "VungleDatabase"

    const-string v2, "resetting areArchiveEntriesDeleted = false"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput-boolean v3, p0, Lcom/vungle/publisher/fs;->d:Z

    .line 241
    :cond_0
    :goto_0
    return v1

    .line 235
    :cond_1
    iget-boolean v0, p0, Lcom/vungle/publisher/fs;->c:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/vungle/publisher/fs;->a:[Lcom/vungle/publisher/eh;

    invoke-static {v0}, Lcom/vungle/publisher/eh$a;->a([Lcom/vungle/publisher/er;)V

    .line 237
    const-string v0, "VungleDatabase"

    const-string v2, "resetting areArchiveEntriesNew = false"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iput-boolean v3, p0, Lcom/vungle/publisher/fs;->c:Z

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vungle/publisher/fs;->u()Lcom/vungle/publisher/fr$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    iget-object v0, v0, Lcom/vungle/publisher/hn;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->e()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->f()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->h()Z

    move-result v0

    invoke-direct {p0}, Lcom/vungle/publisher/fs;->F()Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Lcom/vungle/publisher/kv;->o()I

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    invoke-virtual {v1}, Lcom/vungle/publisher/hn;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/vungle/publisher/fs;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/vungle/publisher/fs;->p()Z

    move-result v0

    .line 137
    :cond_0
    return v0
.end method

.method protected final n()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Lcom/vungle/publisher/kv;->n()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/hn;->a(Ljava/lang/StringBuilder;)V

    .line 257
    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/vungle/publisher/fs;->F()Z

    .line 188
    iget-object v0, p0, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->d()I

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/vungle/publisher/fs;->q()[Lcom/vungle/publisher/eh;

    move-result-object v5

    array-length v6, v5

    move v4, v1

    move v0, v1

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/vungle/publisher/eh;->a:Lcom/vungle/publisher/fs;

    invoke-virtual {v7}, Lcom/vungle/publisher/fs;->B()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1

    iget-object v7, v2, Lcom/vungle/publisher/eh;->b:Ljava/lang/String;

    aput-object v7, v0, v3

    invoke-static {v0}, Lcom/vungle/publisher/sa;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v7, v2, Lcom/vungle/publisher/eh;->c:Ljava/lang/Integer;

    if-nez v7, :cond_2

    const-string v2, "VunglePrepare"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " size is null"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    move v0, v1

    .line 179
    :cond_0
    return v0

    .line 174
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    iget-object v2, v2, Lcom/vungle/publisher/eh;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_3

    move v2, v3

    :goto_3
    if-eqz v2, :cond_4

    const-string v8, "VunglePrepare"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " size verified "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    const-string v2, "VunglePrepare"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " doesn\'t match expected "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_2

    .line 171
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v3

    goto/16 :goto_0
.end method

.method public final q()[Lcom/vungle/publisher/eh;
    .locals 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/vungle/publisher/fs;->b:Z

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/fs;->f:Lcom/vungle/publisher/eh$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/eh$a;->a(Lcom/vungle/publisher/fs;)[Lcom/vungle/publisher/eh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vungle/publisher/fs;->a([Lcom/vungle/publisher/eh;Z)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/fs;->a:[Lcom/vungle/publisher/eh;

    return-object v0
.end method
