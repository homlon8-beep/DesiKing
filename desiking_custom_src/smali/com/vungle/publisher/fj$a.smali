.class abstract Lcom/vungle/publisher/fj$a;
.super Lcom/vungle/publisher/er$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/fj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/vungle/publisher/fj;",
        "T:",
        "Lcom/vungle/publisher/aft;",
        "R:",
        "Lcom/vungle/publisher/aej;",
        ">",
        "Lcom/vungle/publisher/er$a",
        "<TE;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/vungle/publisher/er$a;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/ko;",
            "Ljava/util/List",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p0, :cond_1

    .line 84
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fj;

    .line 87
    invoke-virtual {v0}, Lcom/vungle/publisher/fj;->v()Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 55
    check-cast p1, Lcom/vungle/publisher/fj;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/publisher/fj$a;->a(Lcom/vungle/publisher/fj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fj;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/fj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Landroid/database/Cursor;",
            "Z)TE;"
        }
    .end annotation

    .prologue
    .line 174
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/fj;->t:Ljava/lang/Object;

    .line 175
    const-string v0, "ad_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/fj;->b:Ljava/lang/String;

    .line 176
    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/fj;->a:Ljava/lang/String;

    .line 177
    return-object p1
.end method

.method final a(Lcom/vungle/publisher/aej;)Ljava/util/Map;
    .locals 6
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
    .line 72
    iget-object v0, p1, Lcom/vungle/publisher/aej;->f:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/vungle/publisher/fj$a;->d:Lcom/vungle/publisher/dl;

    invoke-virtual {v1}, Lcom/vungle/publisher/dl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "event_tracking"

    const-string v3, "ad_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleted "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " expired event_tracking records for adId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p1, Lcom/vungle/publisher/aej;->d:Lcom/vungle/publisher/aft;

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/fj$a;->a(Ljava/lang/String;Lcom/vungle/publisher/aft;)Ljava/util/Map;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/vungle/publisher/fj$a;->a(Ljava/util/Map;)V

    .line 79
    return-object v0
.end method

.method final a(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/ko;",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 95
    .line 96
    if-nez p1, :cond_1

    .line 97
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to fetch event_tracking records by ad_id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    .line 123
    :cond_0
    :goto_0
    return-object v1

    .line 102
    :cond_1
    :try_start_0
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetching event_tracking records by ad_id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/vungle/publisher/fj$a;->d:Lcom/vungle/publisher/dl;

    invoke-virtual {v1}, Lcom/vungle/publisher/dl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "event_tracking"

    const/4 v3, 0x0

    const-string v4, "ad_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 106
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 107
    const-string v2, "VungleDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " event_tracking for ad_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-lez v1, :cond_6

    .line 109
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 110
    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    invoke-virtual {p0}, Lcom/vungle/publisher/fj$a;->c_()Lcom/vungle/publisher/er;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/vungle/publisher/fj;

    move-object v2, v0

    .line 112
    invoke-virtual {p0, v2, v3}, Lcom/vungle/publisher/fj$a;->b(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;

    .line 113
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/vungle/publisher/fj;->c:Lcom/vungle/publisher/ko;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 118
    :catchall_0
    move-exception v1

    move-object v9, v3

    :goto_2
    if-eqz v9, :cond_4

    .line 119
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    :cond_5
    move-object v1, v9

    .line 118
    :goto_3
    if-eqz v3, :cond_0

    .line 119
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 118
    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_6
    move-object v1, v9

    goto :goto_3
.end method

.method abstract a(Ljava/lang/String;Lcom/vungle/publisher/aft;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/ko;",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation
.end method

.method final a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/ko;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/ko;",
            "Ljava/util/List",
            "<TE;>;>;",
            "Lcom/vungle/publisher/ko;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 127
    if-eqz p4, :cond_4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 128
    if-eqz p4, :cond_6

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p3, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/vungle/publisher/fj$a;->c_()Lcom/vungle/publisher/er;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/fj;

    iput-object p1, v1, Lcom/vungle/publisher/fj;->b:Ljava/lang/String;

    iput-object p3, v1, Lcom/vungle/publisher/fj;->c:Lcom/vungle/publisher/ko;

    iput-object v0, v1, Lcom/vungle/publisher/fj;->a:Ljava/lang/String;

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move-object v0, v2

    .line 129
    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 130
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_4
    return-void

    :cond_5
    move-object v1, v2

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, "event_tracking"

    return-object v0
.end method
