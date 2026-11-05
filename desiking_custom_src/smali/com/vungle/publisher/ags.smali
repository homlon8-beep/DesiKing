.class public final Lcom/vungle/publisher/ags;
.super Lcom/vungle/publisher/agh;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ags$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/agh",
        "<",
        "Lcom/vungle/publisher/kq",
        "<***>;>;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final h:[Lcom/vungle/publisher/kr$a;


# instance fields
.field private i:I

.field private final j:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/vungle/publisher/kr$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/vungle/publisher/kr$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/kr$a;->c:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vungle/publisher/kr$a;->d:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vungle/publisher/kr$a;->e:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/vungle/publisher/kr$a;->f:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/vungle/publisher/kr$a;->g:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/vungle/publisher/kr$a;->h:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/ags;->h:[Lcom/vungle/publisher/kr$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vungle/publisher/agh;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/ags;->j:Ljava/util/HashSet;

    .line 45
    return-void
.end method

.method private a(Lcom/vungle/publisher/kr$a;)V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/vungle/publisher/ags;->a:Lcom/vungle/publisher/dp;

    if-nez v0, :cond_1

    .line 202
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "null ad in AdReportingHandler - cannot track event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/ags;->j:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tpat event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/publisher/kr$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/vungle/publisher/ags;->g:Lcom/vungle/publisher/wy;

    iget-object v2, p0, Lcom/vungle/publisher/ags;->a:Lcom/vungle/publisher/dp;

    iget-object v0, p0, Lcom/vungle/publisher/ags;->a:Lcom/vungle/publisher/dp;

    check-cast v0, Lcom/vungle/publisher/kq;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/kq;->a(Lcom/vungle/publisher/ko;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, p1, v0}, Lcom/vungle/publisher/wy;->a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/ko;Ljava/util/List;)V

    .line 208
    iget-object v0, p0, Lcom/vungle/publisher/ags;->j:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/vungle/publisher/ags;->i:I

    .line 50
    iget-object v0, p0, Lcom/vungle/publisher/ags;->j:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 51
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/ab;)V
    .locals 2
    .param p1, "event"    # Lcom/vungle/publisher/ab;

    .prologue
    .line 159
    iget-object v0, p1, Lcom/vungle/publisher/ab;->a:Lcom/vungle/publisher/kr$a;

    .line 160
    sget-object v1, Lcom/vungle/publisher/kr$a;->l:Lcom/vungle/publisher/kr$a;

    if-ne v0, v1, :cond_1

    .line 161
    sget-object v0, Lcom/vungle/publisher/ku$a;->e:Lcom/vungle/publisher/ku$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/ko;)V

    .line 165
    :cond_0
    :goto_0
    sget-object v0, Lcom/vungle/publisher/ku$a;->d:Lcom/vungle/publisher/ku$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/ko;)V

    .line 166
    return-void

    .line 162
    :cond_1
    sget-object v1, Lcom/vungle/publisher/kr$a;->i:Lcom/vungle/publisher/kr$a;

    if-ne v0, v1, :cond_0

    .line 163
    sget-object v0, Lcom/vungle/publisher/kr$a;->i:Lcom/vungle/publisher/kr$a;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/kr$a;)V

    goto :goto_0
.end method

.method public final onEvent(Lcom/vungle/publisher/ac;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ac",
            "<",
            "Lcom/vungle/publisher/kq",
            "<***>;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "event":Lcom/vungle/publisher/ac;, "Lcom/vungle/publisher/ac<Lcom/vungle/publisher/kq<***>;>;"
    invoke-virtual {p1}, Lcom/vungle/publisher/ac;->a()Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/kq;

    .line 95
    iget-object v1, p0, Lcom/vungle/publisher/ags;->g:Lcom/vungle/publisher/wy;

    iget-object v2, p1, Lcom/vungle/publisher/ac;->a:Lcom/vungle/publisher/kr$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/vungle/publisher/kq;->u()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/vungle/publisher/wy;->a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/ko;Ljava/util/Map;Ljava/util/List;)V

    .line 96
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/ai;)V
    .locals 4
    .param p1, "playVideoDurationEvent"    # Lcom/vungle/publisher/ai;

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ags;->c:Lcom/vungle/publisher/dw;

    iget v1, p1, Lcom/vungle/publisher/ai;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dw;->a(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    iget-object v1, p0, Lcom/vungle/publisher/ags;->e:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleReport"

    const-string v3, "error updating video duration millis"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onEvent(Lcom/vungle/publisher/ao;)V
    .locals 4

    .prologue
    .line 170
    :try_start_0
    sget-object v0, Lcom/vungle/publisher/ku$a;->i:Lcom/vungle/publisher/ku$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/ko;)V

    .line 171
    iget-object v0, p0, Lcom/vungle/publisher/ags;->c:Lcom/vungle/publisher/dw;

    invoke-virtual {v0}, Lcom/vungle/publisher/dw;->s()Lcom/vungle/publisher/dv;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ags;->b:Lcom/vungle/publisher/dv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    iget-object v1, p0, Lcom/vungle/publisher/ags;->e:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleReport"

    const-string v3, "error reporting replay"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onEvent(Lcom/vungle/publisher/ap;)V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/vungle/publisher/kr$a;->j:Lcom/vungle/publisher/kr$a;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/kr$a;)V

    .line 82
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/aw;)V
    .locals 7
    .param p1, "playVideoProgressEvent"    # Lcom/vungle/publisher/aw;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 119
    :try_start_0
    iget v3, p1, Lcom/vungle/publisher/aw;->a:I

    .line 120
    iget v2, p0, Lcom/vungle/publisher/ags;->i:I

    sget-object v4, Lcom/vungle/publisher/ags;->h:[Lcom/vungle/publisher/kr$a;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    move v2, v1

    .line 121
    :goto_0
    instance-of v4, p1, Lcom/vungle/publisher/aj;

    .line 122
    if-nez v2, :cond_0

    if-eqz v4, :cond_1

    .line 123
    :cond_0
    iget-object v5, p0, Lcom/vungle/publisher/ags;->c:Lcom/vungle/publisher/dw;

    invoke-virtual {v5}, Lcom/vungle/publisher/dw;->p()Ljava/lang/Integer;

    move-result-object v5

    .line 124
    if-nez v5, :cond_3

    .line 126
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "null video duration millis for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/ags;->c:Lcom/vungle/publisher/dw;

    invoke-virtual {v2}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v0

    .line 120
    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_4

    .line 129
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video duration millis 0 for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/ags;->c:Lcom/vungle/publisher/dw;

    invoke-virtual {v2}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    iget-object v1, p0, Lcom/vungle/publisher/ags;->e:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleReport"

    const-string v3, "error handling video view progress"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 133
    :cond_4
    if-eqz v2, :cond_7

    .line 134
    int-to-float v2, v3

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 135
    sget-object v3, Lcom/vungle/publisher/ags;->h:[Lcom/vungle/publisher/kr$a;

    iget v5, p0, Lcom/vungle/publisher/ags;->i:I

    aget-object v3, v3, v5

    .line 136
    iget v5, v3, Lcom/vungle/publisher/kr$a;->p:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_5

    move v0, v1

    .line 137
    :cond_5
    if-eqz v0, :cond_7

    .line 139
    sget-object v1, Lcom/vungle/publisher/kr$a;->g:Lcom/vungle/publisher/kr$a;

    if-ne v3, v1, :cond_6

    .line 140
    iget-object v1, p0, Lcom/vungle/publisher/ags;->eventBus:Lcom/vungle/publisher/rq;

    new-instance v2, Lcom/vungle/publisher/bh;

    invoke-direct {v2}, Lcom/vungle/publisher/bh;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 142
    :cond_6
    iget v1, p0, Lcom/vungle/publisher/ags;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vungle/publisher/ags;->i:I

    .line 143
    invoke-direct {p0, v3}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/kr$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :cond_7
    if-nez v0, :cond_8

    if-eqz v4, :cond_1

    .line 147
    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/vungle/publisher/ags;->b:Lcom/vungle/publisher/dv;

    iget v1, p1, Lcom/vungle/publisher/aw;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Lcom/vungle/publisher/dv;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lcom/vungle/publisher/dv;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_a

    :cond_9
    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setting watched millis "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/vungle/publisher/dv;->b:Ljava/lang/Integer;

    :goto_2
    iget-object v0, p0, Lcom/vungle/publisher/ags;->b:Lcom/vungle/publisher/dv;

    invoke-virtual {v0}, Lcom/vungle/publisher/dv;->b_()I

    iget-object v0, p0, Lcom/vungle/publisher/ags;->c:Lcom/vungle/publisher/dw;

    iget-wide v2, p1, Lcom/vungle/publisher/ri;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dw;->b(Ljava/lang/Long;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/vungle/publisher/ags;->e:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleReport"

    const-string v3, "error updating video view progress"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_a
    :try_start_4
    const-string v0, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ignoring decreased watched millis "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method

.method public final onEvent(Lcom/vungle/publisher/bg;)V
    .locals 4
    .param p1, "playVideoStartEvent"    # Lcom/vungle/publisher/bg;

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ags;->b:Lcom/vungle/publisher/dv;

    iget-wide v2, p1, Lcom/vungle/publisher/ri;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/dv;->c:Ljava/lang/Long;

    .line 110
    iget-object v0, p0, Lcom/vungle/publisher/ags;->b:Lcom/vungle/publisher/dv;

    invoke-virtual {v0}, Lcom/vungle/publisher/dv;->b_()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    iget-object v1, p0, Lcom/vungle/publisher/ags;->e:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleReport"

    const-string v3, "error updating play start millis"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onEvent(Lcom/vungle/publisher/bk;)V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/vungle/publisher/kr$a;->m:Lcom/vungle/publisher/kr$a;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/kr$a;)V

    .line 86
    sget-object v0, Lcom/vungle/publisher/ku$a;->b:Lcom/vungle/publisher/ku$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/ko;)V

    .line 87
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/bm;)V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/vungle/publisher/ku$a;->l:Lcom/vungle/publisher/ku$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/ko;)V

    .line 91
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/bn;)V
    .locals 1
    .param p1, "event"    # Lcom/vungle/publisher/bn;

    .prologue
    .line 71
    iget-boolean v0, p1, Lcom/vungle/publisher/bn;->a:Z

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/vungle/publisher/ku$a;->f:Lcom/vungle/publisher/ku$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/ko;)V

    .line 73
    sget-object v0, Lcom/vungle/publisher/kr$a;->b:Lcom/vungle/publisher/kr$a;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/kr$a;)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-object v0, Lcom/vungle/publisher/ku$a;->j:Lcom/vungle/publisher/ku$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/ko;)V

    .line 76
    sget-object v0, Lcom/vungle/publisher/kr$a;->k:Lcom/vungle/publisher/kr$a;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/kr$a;)V

    goto :goto_0
.end method

.method public final onEvent(Lcom/vungle/publisher/bo;)V
    .locals 2
    .param p1, "event"    # Lcom/vungle/publisher/bo;

    .prologue
    .line 67
    sget-object v0, Lcom/vungle/publisher/ku$a;->m:Lcom/vungle/publisher/ku$a;

    iget v1, p1, Lcom/vungle/publisher/bo;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/ko;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/bp;)V
    .locals 3
    .param p1, "event"    # Lcom/vungle/publisher/bp;

    .prologue
    .line 54
    iget v1, p1, Lcom/vungle/publisher/bp;->d:F

    .line 55
    iget v0, p1, Lcom/vungle/publisher/bp;->b:I

    iget v2, p1, Lcom/vungle/publisher/bp;->a:I

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lcom/vungle/publisher/ku$a;->o:Lcom/vungle/publisher/ku$a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/ko;Ljava/lang/Object;)V

    .line 60
    :goto_1
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    sget-object v0, Lcom/vungle/publisher/ku$a;->n:Lcom/vungle/publisher/ku$a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/ko;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final onEvent(Lcom/vungle/publisher/cd;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/cd",
            "<",
            "Lcom/vungle/publisher/kq",
            "<***>;>;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "endPlayAdEvent":Lcom/vungle/publisher/cd;, "Lcom/vungle/publisher/cd<Lcom/vungle/publisher/kq<***>;>;"
    :try_start_0
    const-string v0, "VungleReport"

    const-string v1, "received play ad end"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/ad;)V

    .line 182
    invoke-interface {p1}, Lcom/vungle/publisher/cd;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ags;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    iget-object v1, p0, Lcom/vungle/publisher/ags;->e:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleReport"

    const-string v3, "error processing ad end"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onEvent(Lcom/vungle/publisher/y;)V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/vungle/publisher/ku$a;->a:Lcom/vungle/publisher/ku$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ags;->a(Lcom/vungle/publisher/ko;)V

    .line 64
    return-void
.end method
