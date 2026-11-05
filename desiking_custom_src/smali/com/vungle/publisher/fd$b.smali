.class public final Lcom/vungle/publisher/fd$b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/dl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/p$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/dp$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/hs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/le;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/ga;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/fd$c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 163
    .line 164
    new-array v2, v4, [Lcom/vungle/publisher/fd;

    iget-object v1, p0, Lcom/vungle/publisher/fd$b;->e:Lcom/vungle/publisher/le;

    aput-object v1, v2, v0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/vungle/publisher/fd$b;->f:Lcom/vungle/publisher/ga;

    aput-object v3, v2, v1

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v3, v2, v0

    .line 165
    invoke-virtual {v3}, Lcom/vungle/publisher/fd;->a()I

    move-result v3

    add-int/2addr v1, v3

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return v1
.end method

.method public final varargs a([Lcom/vungle/publisher/dp$c;)Lcom/vungle/publisher/et;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/vungle/publisher/dp;",
            "R:",
            "Lcom/vungle/publisher/aej;",
            ">([",
            "Lcom/vungle/publisher/dp$c;",
            ")",
            "Lcom/vungle/publisher/et",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 222
    .line 224
    invoke-static {p1}, Lcom/vungle/publisher/agy;->a([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 226
    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Lcom/vungle/publisher/p;

    const/4 v3, 0x0

    sget-object v4, Lcom/vungle/publisher/p;->a:Lcom/vungle/publisher/p;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/vungle/publisher/p;->c:Lcom/vungle/publisher/p;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/vungle/publisher/p;->d:Lcom/vungle/publisher/p;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/vungle/publisher/agy;->a([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    .line 227
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    new-instance v4, Lcom/vungle/publisher/iy$a;

    invoke-direct {v4}, Lcom/vungle/publisher/iy$a;-><init>()V

    const-string v5, "ad"

    iput-object v5, v4, Lcom/vungle/publisher/iy$a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "status IN ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v0

    invoke-static {v6}, Lcom/vungle/publisher/dh;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vungle/publisher/iy$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/iy$a;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " AND type IN ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v2

    invoke-static {v6}, Lcom/vungle/publisher/dh;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vungle/publisher/iy$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/iy$a;

    move-result-object v4

    const-string v5, " AND expiration_timestamp_seconds > ?"

    invoke-virtual {v4, v5}, Lcom/vungle/publisher/iy$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/iy$a;

    move-result-object v4

    const-string v5, " ORDER BY received_timestamp_millis ASC"

    invoke-virtual {v4, v5}, Lcom/vungle/publisher/iy$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/iy$a;

    move-result-object v4

    const-string v5, " LIMIT ?"

    invoke-virtual {v4, v5}, Lcom/vungle/publisher/iy$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/iy$a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/vungle/publisher/iy$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/iy$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/iy$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/iy$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/iy$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/iy$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/iy$a;->a()Lcom/vungle/publisher/iy;

    move-result-object v0

    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "built query: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/iy;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/vungle/publisher/fd$b;->a:Lcom/vungle/publisher/dl;

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/dl;->a(Lcom/vungle/publisher/iy;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 229
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 230
    packed-switch v3, :pswitch_data_0

    .line 248
    new-instance v0, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fetched "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/vungle/publisher/fd$b;->d:Lcom/vungle/publisher/hs$a;

    const-string v4, "VunglePrepare"

    const-string v5, "could not get next ad by status"

    invoke-virtual {v3, v4, v5, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 254
    if-eqz v2, :cond_2

    .line 255
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 258
    :cond_0
    :goto_1
    return-object v0

    .line 232
    :pswitch_0
    :try_start_3
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "no record found for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/iy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    .line 254
    :goto_2
    if-eqz v2, :cond_0

    .line 255
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 235
    :pswitch_1
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/vungle/publisher/fd$b;->b:Lcom/vungle/publisher/p$a;

    const-string v3, "type"

    invoke-virtual {v0, v2, v3}, Lcom/vungle/publisher/p$a;->a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/vungle/publisher/p;

    move-result-object v0

    .line 237
    iget-object v3, p0, Lcom/vungle/publisher/fd$b;->c:Lcom/vungle/publisher/dp$b;

    invoke-virtual {v3, v0}, Lcom/vungle/publisher/dp$b;->a(Lcom/vungle/publisher/p;)Lcom/vungle/publisher/fc;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Lcom/vungle/publisher/fc;->i_()Lcom/vungle/publisher/dp$a;

    move-result-object v3

    .line 239
    invoke-virtual {v3}, Lcom/vungle/publisher/dp$a;->c_()Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dp;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/vungle/publisher/dp$a;->a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/et;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 254
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 255
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 254
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 250
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()Lcom/vungle/publisher/et;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/et",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/vungle/publisher/dp$c;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/dp$c;->e:Lcom/vungle/publisher/dp$c;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/fd$b;->a([Lcom/vungle/publisher/dp$c;)Lcom/vungle/publisher/et;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Long;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 187
    .line 190
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v3, Lcom/vungle/publisher/dp$c;->f:Lcom/vungle/publisher/dp$c;

    invoke-virtual {v3}, Lcom/vungle/publisher/dp$c;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    sget-object v3, Lcom/vungle/publisher/dp$c;->g:Lcom/vungle/publisher/dp$c;

    invoke-virtual {v3}, Lcom/vungle/publisher/dp$c;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 191
    new-instance v1, Lcom/vungle/publisher/iy$a;

    invoke-direct {v1}, Lcom/vungle/publisher/iy$a;-><init>()V

    const-string v3, "ad"

    iput-object v3, v1, Lcom/vungle/publisher/iy$a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "status NOT IN ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/vungle/publisher/dh;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vungle/publisher/iy$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/iy$a;

    move-result-object v1

    const-string v3, " ORDER BY expiration_timestamp_seconds ASC"

    invoke-virtual {v1, v3}, Lcom/vungle/publisher/iy$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/iy$a;

    move-result-object v1

    const-string v3, " LIMIT ?"

    invoke-virtual {v1, v3}, Lcom/vungle/publisher/iy$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/iy$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/iy$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/iy$a;

    move-result-object v0

    const-string v1, "1"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/iy$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/iy$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/iy$a;->a()Lcom/vungle/publisher/iy;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/vungle/publisher/fd$b;->a:Lcom/vungle/publisher/dl;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/dl;->a(Lcom/vungle/publisher/iy;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 201
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "expiration_timestamp_seconds"

    invoke-static {v1, v0}, Lcom/vungle/publisher/dh;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 203
    if-nez v0, :cond_2

    .line 204
    const-string v0, "VunglePrepare"

    const-string v3, "next ad expiration time seconds is null"

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 214
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_1
    return-object v2

    .line 207
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 208
    const-string v0, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "next ad expiration time millis "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    .line 214
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 213
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
