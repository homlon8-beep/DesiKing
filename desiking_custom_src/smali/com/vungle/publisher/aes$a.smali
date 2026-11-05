.class public final Lcom/vungle/publisher/aes$a;
.super Lcom/vungle/publisher/aei$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/aei$a",
        "<",
        "Lcom/vungle/publisher/aes;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field f:Lcom/vungle/publisher/fk$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/aes$b$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/rd;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/vungle/publisher/aei$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/vungle/publisher/acl;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/vungle/publisher/aes$a;->d()Lcom/vungle/publisher/aes;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    new-array v0, p1, [Lcom/vungle/publisher/aes;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/vungle/publisher/aes;

    invoke-direct {v0}, Lcom/vungle/publisher/aes;-><init>()V

    return-object v0
.end method

.method public final synthetic c()Lcom/vungle/publisher/aei;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/vungle/publisher/aes$a;->d()Lcom/vungle/publisher/aes;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/vungle/publisher/aes;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-super {p0}, Lcom/vungle/publisher/aei$a;->c()Lcom/vungle/publisher/aei;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aes;

    .line 92
    iget-object v2, p0, Lcom/vungle/publisher/aes$a;->f:Lcom/vungle/publisher/fk$a;

    invoke-virtual {v2}, Lcom/vungle/publisher/fk$a;->j_()Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/vungle/publisher/aes;->g:Ljava/util/List;

    .line 93
    if-nez v3, :cond_0

    move v2, v1

    :goto_0
    if-lez v2, :cond_2

    const-string v4, "VungleReport"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sending "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " event_tracking_http_log records"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v6, v2, [Lcom/vungle/publisher/aes$b;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v1

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/fk;

    const-string v3, "VungleReport"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "sending "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/publisher/fk;->z()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    if-eqz v1, :cond_3

    new-instance v4, Lcom/vungle/publisher/aes$b;

    invoke-direct {v4}, Lcom/vungle/publisher/aes$b;-><init>()V

    iget-object v8, v1, Lcom/vungle/publisher/fk;->a:Ljava/lang/String;

    iput-object v8, v4, Lcom/vungle/publisher/aes$b;->a:Ljava/lang/String;

    iget-object v8, v1, Lcom/vungle/publisher/fk;->b:Ljava/lang/String;

    iput-object v8, v4, Lcom/vungle/publisher/aes$b;->b:Ljava/lang/String;

    iget-wide v8, v1, Lcom/vungle/publisher/fk;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v4, Lcom/vungle/publisher/aes$b;->c:Ljava/lang/Long;

    iget-object v8, v1, Lcom/vungle/publisher/fk;->c:Lcom/vungle/publisher/ko;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/vungle/publisher/aes$b;->d:Ljava/lang/String;

    iget-object v8, v1, Lcom/vungle/publisher/fk;->e:Ljava/lang/Integer;

    iput-object v8, v4, Lcom/vungle/publisher/aes$b;->e:Ljava/lang/Integer;

    iget-object v8, v1, Lcom/vungle/publisher/fk;->f:Ljava/lang/Long;

    iput-object v8, v4, Lcom/vungle/publisher/aes$b;->f:Ljava/lang/Long;

    iget-object v1, v1, Lcom/vungle/publisher/fk;->g:Ljava/lang/String;

    iput-object v1, v4, Lcom/vungle/publisher/aes$b;->g:Ljava/lang/String;

    move-object v1, v4

    :goto_2
    aput-object v1, v6, v2

    move v2, v3

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    move-object v5, v6

    :cond_2
    iput-object v5, v0, Lcom/vungle/publisher/aes;->h:[Lcom/vungle/publisher/aes$b;

    .line 94
    return-object v0

    :cond_3
    move-object v1, v5

    goto :goto_2
.end method
