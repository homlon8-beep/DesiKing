.class final Lcom/vungle/publisher/wy$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/wy;->a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/ko;Ljava/util/Map;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/dp;

.field final synthetic b:Lcom/vungle/publisher/ko;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/vungle/publisher/wy;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/wy;Lcom/vungle/publisher/dp;Lcom/vungle/publisher/ko;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vungle/publisher/wy$1;->e:Lcom/vungle/publisher/wy;

    iput-object p2, p0, Lcom/vungle/publisher/wy$1;->a:Lcom/vungle/publisher/dp;

    iput-object p3, p0, Lcom/vungle/publisher/wy$1;->b:Lcom/vungle/publisher/ko;

    iput-object p4, p0, Lcom/vungle/publisher/wy$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/vungle/publisher/wy$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/wy$1;->e:Lcom/vungle/publisher/wy;

    iget-object v5, v1, Lcom/vungle/publisher/wy;->a:Lcom/vungle/publisher/yy;

    iget-object v6, p0, Lcom/vungle/publisher/wy$1;->a:Lcom/vungle/publisher/dp;

    iget-object v7, p0, Lcom/vungle/publisher/wy$1;->b:Lcom/vungle/publisher/ko;

    iget-object v1, p0, Lcom/vungle/publisher/wy$1;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/publisher/wy$1;->d:Ljava/util/Map;

    if-eqz v2, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {v8, v4, v10, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v5, v6, v7, v1}, Lcom/vungle/publisher/yy;->a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/ko;Ljava/lang/String;)Lcom/vungle/publisher/xr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/publisher/xr;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_2
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 56
    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error sending "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vungle/publisher/wy$1;->b:Lcom/vungle/publisher/ko;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
