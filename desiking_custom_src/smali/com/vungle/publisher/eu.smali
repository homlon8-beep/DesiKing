.class public final Lcom/vungle/publisher/eu;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/eu$a;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/dw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/dw",
            "<****>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 8

    .prologue
    .line 19
    const/4 v0, -0x1

    .line 20
    iget-object v1, p0, Lcom/vungle/publisher/eu;->a:Lcom/vungle/publisher/dw;

    iget-object v1, v1, Lcom/vungle/publisher/dw;->o:Ljava/lang/Long;

    .line 21
    iget-object v2, p0, Lcom/vungle/publisher/eu;->a:Lcom/vungle/publisher/dw;

    iget-object v2, v2, Lcom/vungle/publisher/dw;->d:Ljava/lang/Long;

    .line 22
    iget-object v3, p0, Lcom/vungle/publisher/eu;->a:Lcom/vungle/publisher/dw;

    invoke-virtual {v3}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v3

    .line 23
    if-nez v1, :cond_0

    .line 24
    const-string v1, "VungleReport"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "download end millis null for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :goto_0
    return v0

    .line 26
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 28
    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :cond_1
    if-nez v2, :cond_2

    .line 31
    const-string v1, "VungleReport"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "insert timestamp millis null for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected final a(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 51
    const-string v0, "download_end_millis"

    iget-object v1, p0, Lcom/vungle/publisher/eu;->a:Lcom/vungle/publisher/dw;

    iget-object v1, v1, Lcom/vungle/publisher/dw;->o:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    return-object p1
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vungle/publisher/eu;->a:Lcom/vungle/publisher/dw;

    iput-object p1, v0, Lcom/vungle/publisher/dw;->o:Ljava/lang/Long;

    iget-object v0, p0, Lcom/vungle/publisher/eu;->a:Lcom/vungle/publisher/dw;

    invoke-virtual {v0}, Lcom/vungle/publisher/dw;->z()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VungleReport"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setting ad download end millis "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (duration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vungle/publisher/eu;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms) for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/eu;->a:Lcom/vungle/publisher/dw;

    invoke-virtual {v0}, Lcom/vungle/publisher/dw;->y()Ljava/lang/Object;

    .line 48
    return-void
.end method
