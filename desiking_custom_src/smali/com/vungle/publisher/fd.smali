.class public abstract Lcom/vungle/publisher/fd;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/fd$c;,
        Lcom/vungle/publisher/fd$b;,
        Lcom/vungle/publisher/fd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/dp;",
        "R:",
        "Lcom/vungle/publisher/aej;",
        "F:",
        "Lcom/vungle/publisher/dp$a",
        "<TA;TR;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/dl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/fd$c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/ahf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/dp$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/dp$a",
            "<TA;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    return-void
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TA;>;)",
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dp;

    .line 80
    iget v3, v0, Lcom/vungle/publisher/dp;->k:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/vungle/publisher/dp;->k:I

    .line 81
    invoke-virtual {v0}, Lcom/vungle/publisher/dp;->b()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    .line 82
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_1
    const-string v4, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unable to delete files for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/dp;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " attempt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Lcom/vungle/publisher/dp;->b_()I

    goto :goto_0

    .line 90
    :cond_2
    return-object v1
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/fd;->d:Lcom/vungle/publisher/dp$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/dp$a;->a()Lcom/vungle/publisher/p;

    move-result-object v0

    .line 95
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleting expired "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ad records without pending reports"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/vungle/publisher/p;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 99
    iget-object v0, p0, Lcom/vungle/publisher/fd;->d:Lcom/vungle/publisher/dp$a;

    const-string v2, "type = ? AND expiration_timestamp_seconds <= ?"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/vungle/publisher/dp$a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/fd;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TA;>;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 49
    .line 50
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 51
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vungle/log/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "deleting "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dp;

    .line 57
    if-eqz v1, :cond_0

    move v1, v2

    .line 63
    :goto_1
    invoke-virtual {v0}, Lcom/vungle/publisher/dp;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    :cond_0
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 65
    :cond_1
    const-string v0, "VunglePrepare"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    invoke-static {p1}, Lcom/vungle/publisher/fd;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/vungle/publisher/fd;->d:Lcom/vungle/publisher/dp$a;

    sget-object v2, Lcom/vungle/publisher/dp$c;->g:Lcom/vungle/publisher/dp$c;

    invoke-virtual {v1, v0, v2}, Lcom/vungle/publisher/dp$a;->a(Ljava/util/List;Lcom/vungle/publisher/dp$c;)I

    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/fd;->d:Lcom/vungle/publisher/dp$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/dp$a;->b()I

    move-result v2

    .line 74
    :cond_3
    return v2
.end method

.method public final b()I
    .locals 5

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type = ? AND "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/publisher/dp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY insert_timestamp_millis DESC LIMIT ? OFFSET ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vungle/publisher/fd;->d:Lcom/vungle/publisher/dp$a;

    invoke-virtual {v3}, Lcom/vungle/publisher/dp$a;->a()Lcom/vungle/publisher/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/publisher/p;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 114
    iget-object v2, p0, Lcom/vungle/publisher/fd;->d:Lcom/vungle/publisher/dp$a;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/vungle/publisher/dp$a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 116
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " extra "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/vungle/publisher/fd;->d:Lcom/vungle/publisher/dp$a;

    invoke-virtual {v3}, Lcom/vungle/publisher/dp$a;->a()Lcom/vungle/publisher/p;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ad records to reach target size 4"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/fd;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method
