.class public final Lcom/vungle/publisher/p$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/hs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/vungle/publisher/p;
    .locals 4

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p1, p2}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/p$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/p;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/p$a;->a:Lcom/vungle/publisher/hs$a;

    const-string v1, "VungleProtocol"

    const-string v2, "AdType not found"

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/vungle/publisher/p;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 27
    if-nez p1, :cond_0

    .line 36
    :goto_0
    return-object v0

    .line 30
    :cond_0
    invoke-static {}, Lcom/vungle/publisher/p;->values()[Lcom/vungle/publisher/p;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 31
    invoke-virtual {v1}, Lcom/vungle/publisher/p;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v1

    .line 32
    goto :goto_0

    .line 30
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/vungle/publisher/p$a;->a:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleProtocol"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown AdType: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
