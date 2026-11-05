.class public abstract Lcom/vungle/publisher/dw;
.super Lcom/vungle/publisher/er;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/dw$a;,
        Lcom/vungle/publisher/dw$b;,
        Lcom/vungle/publisher/dw$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vungle/publisher/dw",
        "<TT;TP;TE;TA;>;P:",
        "Lcom/vungle/publisher/dv",
        "<TT;TP;TE;>;E:",
        "Lcom/vungle/publisher/dx",
        "<TP;>;A:",
        "Lcom/vungle/publisher/dp;",
        ">",
        "Lcom/vungle/publisher/er",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/dp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/Long;

.field protected e:Z

.field protected f:Ljava/lang/String;

.field protected g:Lcom/vungle/publisher/dw$c;

.field protected h:Ljava/lang/Long;

.field protected i:Ljava/lang/Integer;

.field protected j:Ljava/lang/Long;

.field protected k:Ljava/lang/Long;

.field l:Lcom/vungle/publisher/fp;

.field protected m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TP;>;"
        }
    .end annotation
.end field

.field protected n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/dq;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/lang/Long;

.field p:Z

.field q:Lcom/vungle/publisher/dy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field r:Lcom/vungle/publisher/ahf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vungle/publisher/er;-><init>()V

    return-void
.end method

.method private B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TP;>;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/vungle/publisher/dw;->m:Ljava/util/List;

    .line 223
    if-nez v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->e()Lcom/vungle/publisher/dv$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/dv$a;->b(Lcom/vungle/publisher/dw;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/dw;->m:Ljava/util/List;

    .line 226
    :cond_0
    return-object v0
.end method

.method private C()V
    .locals 4

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/vungle/publisher/dw;->p:Z

    if-eqz v0, :cond_2

    .line 240
    iget-object v1, p0, Lcom/vungle/publisher/dw;->l:Lcom/vungle/publisher/fp;

    .line 241
    iget-object v0, p0, Lcom/vungle/publisher/dw;->t:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 242
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delaying inserting extras for uninserted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string v0, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "replacing extras for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/vungle/publisher/dw;->q:Lcom/vungle/publisher/dy$a;

    iget-object v0, p0, Lcom/vungle/publisher/dw;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/dy$a;->a(Ljava/lang/Integer;)I

    .line 247
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/vungle/publisher/fp;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    invoke-virtual {v1}, Lcom/vungle/publisher/fp;->size()I

    move-result v0

    new-array v0, v0, [Lcom/vungle/publisher/dy;

    invoke-virtual {v1}, Lcom/vungle/publisher/fp;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/dy;

    invoke-static {v0}, Lcom/vungle/publisher/dy$a;->a([Lcom/vungle/publisher/er;)V

    .line 250
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/dw;->p:Z

    goto :goto_0

    .line 254
    :cond_2
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no new extras to insert for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Z)Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 260
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 261
    if-eqz p1, :cond_0

    .line 262
    const-string v3, "ad_id"

    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v3, "insert_timestamp_millis"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/vungle/publisher/dw;->d:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 265
    :cond_0
    const-string v3, "incentivized_publisher_app_user_id"

    iget-object v4, p0, Lcom/vungle/publisher/dw;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v3, "is_incentivized"

    iget-boolean v4, p0, Lcom/vungle/publisher/dw;->e:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 267
    const-string v3, "placement"

    iget-object v4, p0, Lcom/vungle/publisher/dw;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v3, "status"

    iget-object v4, p0, Lcom/vungle/publisher/dw;->g:Lcom/vungle/publisher/dw$c;

    invoke-static {v4}, Lcom/vungle/publisher/ahe;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v3, "update_timestamp_millis"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/dw;->h:Ljava/lang/Long;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    const-string v0, "video_duration_millis"

    iget-object v1, p0, Lcom/vungle/publisher/dw;->i:Ljava/lang/Integer;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    const-string v0, "view_end_millis"

    iget-object v1, p0, Lcom/vungle/publisher/dw;->j:Ljava/lang/Long;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 272
    const-string v0, "view_start_millis"

    iget-object v1, p0, Lcom/vungle/publisher/dw;->k:Ljava/lang/Long;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 273
    return-object v2
.end method

.method public final a(Lcom/vungle/publisher/dw$c;)V
    .locals 3

    .prologue
    .line 151
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting ad_report status "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/vungle/publisher/dw;->g:Lcom/vungle/publisher/dw$c;

    .line 153
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 166
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting video duration millis "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/publisher/dw;->i:Ljava/lang/Integer;

    .line 167
    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->b_()I

    .line 168
    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 3

    .prologue
    .line 185
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting ad end millis "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/vungle/publisher/dw;->j:Ljava/lang/Long;

    .line 187
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/vungle/publisher/dw;->b:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v4, p0, Lcom/vungle/publisher/dw;->q:Lcom/vungle/publisher/dy$a;

    iget-object v0, p0, Lcom/vungle/publisher/dw;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    new-instance v3, Lcom/vungle/publisher/fp;

    invoke-direct {v3}, Lcom/vungle/publisher/fp;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/vungle/publisher/dy$a;->a()Lcom/vungle/publisher/dy;

    move-result-object v6

    iput-object v0, v6, Lcom/vungle/publisher/dy;->a:Ljava/lang/Integer;

    iput-object v2, v6, Lcom/vungle/publisher/dy;->b:Ljava/lang/String;

    iput-object v1, v6, Lcom/vungle/publisher/dy;->c:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Lcom/vungle/publisher/fp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_1
    iput-object v0, p0, Lcom/vungle/publisher/dw;->l:Lcom/vungle/publisher/fp;

    .line 99
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 100
    :goto_2
    if-gtz v0, :cond_2

    .line 101
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no new extras for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_3
    return-void

    .line 99
    :cond_1
    invoke-virtual {v0}, Lcom/vungle/publisher/fp;->size()I

    move-result v0

    goto :goto_2

    .line 104
    :cond_2
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " new extras for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/dw;->p:Z

    .line 106
    invoke-direct {p0}, Lcom/vungle/publisher/dw;->C()V

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public abstract b()Lcom/vungle/publisher/dw$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/dw$a",
            "<TT;TP;TE;TA;*>;"
        }
    .end annotation
.end method

.method public final b(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/dw;->a(Ljava/lang/Long;)V

    .line 191
    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->b_()I

    .line 192
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/vungle/publisher/dw;->c:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/vungle/publisher/dw;->e:Z

    .line 124
    return-void
.end method

.method public final c(Ljava/lang/Long;)V
    .locals 3

    .prologue
    .line 199
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting ad start millis "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iput-object p1, p0, Lcom/vungle/publisher/dw;->k:Ljava/lang/Long;

    .line 201
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/vungle/publisher/dw;->f:Ljava/lang/String;

    .line 140
    return-void
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "ad_report"

    return-object v0
.end method

.method protected abstract e()Lcom/vungle/publisher/dv$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/dv$a",
            "<TT;TP;TE;>;"
        }
    .end annotation
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/dq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vungle/publisher/dw;->n:Ljava/util/List;

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vungle/publisher/dw;->a:Lcom/vungle/publisher/dp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/dw;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/dw;->a:Lcom/vungle/publisher/dp;

    invoke-virtual {v0}, Lcom/vungle/publisher/dp;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final h()Lcom/vungle/publisher/dp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/dw;->a:Lcom/vungle/publisher/dp;

    return-object v0
.end method

.method public final i()Lcom/vungle/publisher/fp;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vungle/publisher/dw;->l:Lcom/vungle/publisher/fp;

    .line 112
    if-nez v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/vungle/publisher/dw;->q:Lcom/vungle/publisher/dy$a;

    iget-object v0, p0, Lcom/vungle/publisher/dw;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/dy$a;->b(Ljava/lang/Integer;)Lcom/vungle/publisher/fp;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/dw;->l:Lcom/vungle/publisher/fp;

    .line 115
    :cond_0
    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/vungle/publisher/dw;->e:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vungle/publisher/dw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vungle/publisher/dw;->f:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 280
    invoke-super {p0}, Lcom/vungle/publisher/er;->n()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 281
    const-string v0, "ad_id"

    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 282
    const-string v0, "insert_timestamp_millis"

    iget-object v2, p0, Lcom/vungle/publisher/dw;->d:Ljava/lang/Long;

    invoke-static {v1, v0, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 283
    const-string v0, "incentivized_publisher_app_user_id"

    iget-object v2, p0, Lcom/vungle/publisher/dw;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 284
    const-string v0, "is_incentivized"

    iget-boolean v2, p0, Lcom/vungle/publisher/dw;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 285
    const-string v0, "placement"

    iget-object v2, p0, Lcom/vungle/publisher/dw;->f:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 286
    const-string v0, "status"

    iget-object v2, p0, Lcom/vungle/publisher/dw;->g:Lcom/vungle/publisher/dw$c;

    invoke-static {v1, v0, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 287
    const-string v0, "update_timestamp_millis"

    iget-object v2, p0, Lcom/vungle/publisher/dw;->h:Ljava/lang/Long;

    invoke-static {v1, v0, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 288
    const-string v0, "video_duration_millis"

    iget-object v2, p0, Lcom/vungle/publisher/dw;->i:Ljava/lang/Integer;

    invoke-static {v1, v0, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 289
    const-string v0, "view_end_millis"

    iget-object v2, p0, Lcom/vungle/publisher/dw;->j:Ljava/lang/Long;

    invoke-static {v1, v0, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 290
    const-string v0, "view_start_millis"

    iget-object v2, p0, Lcom/vungle/publisher/dw;->k:Ljava/lang/Long;

    invoke-static {v1, v0, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 291
    const-string v2, "plays"

    iget-object v0, p0, Lcom/vungle/publisher/dw;->m:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "not fetched"

    :goto_0
    invoke-static {v1, v2, v0, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 292
    return-object v1

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/dw;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public final p()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vungle/publisher/dw;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public final q()I
    .locals 4

    .prologue
    .line 171
    const/4 v0, -0x1

    .line 172
    iget-object v1, p0, Lcom/vungle/publisher/dw;->k:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 173
    const-string v1, "VungleDatabase"

    const-string v2, "unable to calculate ad duration because view start millis was null"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return v0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/dw;->j:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 176
    const-string v1, "VungleDatabase"

    const-string v2, "unable to calculate ad duration because view end millis was null"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/dw;->j:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vungle/publisher/dw;->k:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public final r()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vungle/publisher/dw;->k:Ljava/lang/Long;

    return-object v0
.end method

.method public final s()Lcom/vungle/publisher/dv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/vungle/publisher/dw;->B()Ljava/util/List;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->e()Lcom/vungle/publisher/dv$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vungle/publisher/dv$a;->a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/dv;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lcom/vungle/publisher/dv;->v()Ljava/lang/Object;

    .line 209
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-object v1
.end method

.method public final t()[Lcom/vungle/publisher/dv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TP;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/vungle/publisher/dw;->B()Ljava/util/List;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->e()Lcom/vungle/publisher/dv$a;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/dv$a;->a(I)[Lcom/vungle/publisher/er;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/dv;

    return-object v0
.end method

.method public final u()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-super {p0}, Lcom/vungle/publisher/er;->v()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 234
    invoke-direct {p0}, Lcom/vungle/publisher/dw;->C()V

    .line 235
    return-object v0
.end method

.method public final synthetic v()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/vungle/publisher/dw;->u()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
