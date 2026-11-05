.class public abstract Lcom/vungle/publisher/dp;
.super Lcom/vungle/publisher/er;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/dp$a;,
        Lcom/vungle/publisher/dp$b;,
        Lcom/vungle/publisher/dp$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/er",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String;

.field protected static final b:Ljava/lang/String;

.field protected static final c:Ljava/lang/String;


# instance fields
.field protected d:Lcom/vungle/publisher/p;

.field protected e:Lcom/vungle/publisher/dp$c;

.field protected f:J

.field protected g:J

.field protected h:J

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field k:I

.field l:Ljava/lang/Long;

.field m:Ljava/lang/String;

.field n:I

.field o:J

.field p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(SELECT DISTINCT ad_id FROM ad_report WHERE status IN (\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/publisher/dw$c;->d:Lcom/vungle/publisher/dw$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vungle/publisher/dw$c;->c:Lcom/vungle/publisher/dw$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/publisher/dp;->a:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id NOT IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/publisher/dp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/publisher/dp;->b:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id IN "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/publisher/dp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/publisher/dp;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vungle/publisher/er;-><init>()V

    .line 307
    return-void
.end method


# virtual methods
.method protected a(Z)Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vungle/publisher/dp;->g:J

    .line 162
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 163
    if-eqz p1, :cond_0

    .line 164
    const-string v4, "id"

    invoke-virtual {p0}, Lcom/vungle/publisher/dp;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "insert_timestamp_millis"

    iput-wide v2, p0, Lcom/vungle/publisher/dp;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    const-string v0, "type"

    iget-object v4, p0, Lcom/vungle/publisher/dp;->d:Lcom/vungle/publisher/p;

    invoke-virtual {v4}, Lcom/vungle/publisher/p;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    const-string v0, "advertising_app_vungle_id"

    iget-object v4, p0, Lcom/vungle/publisher/dp;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "delivery_id"

    iget-object v4, p0, Lcom/vungle/publisher/dp;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "status"

    iget-object v4, p0, Lcom/vungle/publisher/dp;->e:Lcom/vungle/publisher/dp$c;

    invoke-virtual {v4}, Lcom/vungle/publisher/dp$c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "update_timestamp_millis"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    const-string v0, "failed_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/dp;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    const-string v0, "delete_local_content_attempts"

    iget v2, p0, Lcom/vungle/publisher/dp;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v0, "expiration_timestamp_seconds"

    iget-object v2, p0, Lcom/vungle/publisher/dp;->l:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    const-string v0, "parent_path"

    iget-object v2, p0, Lcom/vungle/publisher/dp;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "prepare_retry_count"

    iget v2, p0, Lcom/vungle/publisher/dp;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v0, "received_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/dp;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    return-object v1
.end method

.method protected abstract a()Lcom/vungle/publisher/dp$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/dp$a",
            "<**>;"
        }
    .end annotation
.end method

.method public a(Lcom/vungle/publisher/dp$c;)V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/vungle/publisher/dp;->e:Lcom/vungle/publisher/dp$c;

    .line 146
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setting status from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/dp;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lcom/vungle/publisher/dp;->e:Lcom/vungle/publisher/dp$c;

    .line 148
    sget-object v0, Lcom/vungle/publisher/dp$c;->b:Lcom/vungle/publisher/dp$c;

    if-ne p1, v0, :cond_0

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/publisher/dp;->h:J

    .line 151
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcom/vungle/publisher/dp;->m:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/dp;->p:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public final a(Lcom/vungle/publisher/dp;)Z
    .locals 2

    .prologue
    .line 223
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/vungle/publisher/dp;->t:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/vungle/publisher/dp;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/publisher/dp;->t:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/vungle/publisher/dp$c;)V
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/vungle/publisher/dp;->a()Lcom/vungle/publisher/dp$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/vungle/publisher/dp;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/vungle/publisher/dp$a;->a(Ljava/util/List;Lcom/vungle/publisher/dp$c;)I

    .line 157
    return-void
.end method

.method protected abstract b()Z
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "ad"

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/dp;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected final e_()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "ad"    # Ljava/lang/Object;

    .prologue
    .line 219
    instance-of v0, p1, Lcom/vungle/publisher/dp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/vungle/publisher/dp;

    .end local p1    # "ad":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/dp;->a(Lcom/vungle/publisher/dp;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/vungle/publisher/p;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vungle/publisher/dp;->d:Lcom/vungle/publisher/p;

    return-object v0
.end method

.method protected final f_()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 183
    invoke-super {p0}, Lcom/vungle/publisher/er;->f_()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    const-string v1, "type"

    iget-object v2, p0, Lcom/vungle/publisher/dp;->d:Lcom/vungle/publisher/p;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 185
    return-object v0
.end method

.method public final g()Lcom/vungle/publisher/dp$c;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vungle/publisher/dp;->e:Lcom/vungle/publisher/dp$c;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vungle/publisher/dp;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/vungle/publisher/dp;->m:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/vungle/publisher/dp;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/sa;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/vungle/publisher/sa;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/dp;->p:Ljava/lang/String;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/dp;->p:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vungle/publisher/dp;->t:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/dp;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/vungle/publisher/dp;->n:I

    return v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/vungle/publisher/dp;->n:I

    .line 126
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/vungle/publisher/dp;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vungle/publisher/dp;->n:I

    .line 130
    return-void
.end method

.method public final l()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/vungle/publisher/dp;->h:J

    return-wide v0
.end method

.method protected n()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 190
    invoke-super {p0}, Lcom/vungle/publisher/er;->n()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    const-string v1, "advertising_app_vungle_id"

    iget-object v2, p0, Lcom/vungle/publisher/dp;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 192
    const-string v1, "delivery_id"

    iget-object v2, p0, Lcom/vungle/publisher/dp;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 193
    const-string v1, "insert_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/dp;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 194
    const-string v1, "status"

    iget-object v2, p0, Lcom/vungle/publisher/dp;->e:Lcom/vungle/publisher/dp$c;

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 195
    const-string v1, "update_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/dp;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 196
    const-string v1, "failed_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/dp;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 197
    const-string v1, "delete_local_content_attempts"

    iget v2, p0, Lcom/vungle/publisher/dp;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 198
    const-string v1, "expiration_timestamp_seconds"

    iget-object v2, p0, Lcom/vungle/publisher/dp;->l:Ljava/lang/Long;

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 199
    const-string v1, "parent_path"

    iget-object v2, p0, Lcom/vungle/publisher/dp;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 200
    const-string v1, "prepare_retry_count"

    iget v2, p0, Lcom/vungle/publisher/dp;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 201
    const-string v1, "received_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/dp;->o:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 202
    return-object v0
.end method

.method public final o()I
    .locals 4

    .prologue
    .line 207
    iget v0, p0, Lcom/vungle/publisher/dp;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vungle/publisher/dp;->k:I

    .line 208
    invoke-virtual {p0}, Lcom/vungle/publisher/dp;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-super {p0}, Lcom/vungle/publisher/er;->o()I

    move-result v0

    .line 213
    :goto_0
    return v0

    .line 211
    :cond_0
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to delete files for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/publisher/dp;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attempt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/vungle/publisher/dp;->b_()I

    .line 213
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/vungle/publisher/dp;->a()Lcom/vungle/publisher/dp$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/dp$a;->a(Lcom/vungle/publisher/dp;)Z

    move-result v0

    return v0
.end method
