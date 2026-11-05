.class public final Lcom/vungle/publisher/acc$a;
.super Lcom/vungle/publisher/ze$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/acc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ze$a",
        "<",
        "Lcom/vungle/publisher/acc;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/qs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/aes$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vungle/publisher/ze$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/vungle/publisher/acc;
    .locals 5

    .prologue
    .line 42
    invoke-super {p0}, Lcom/vungle/publisher/ze$a;->a()Lcom/vungle/publisher/ze;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/acc;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/publisher/acc$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unfilled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "app_id"

    iget-object v3, p0, Lcom/vungle/publisher/acc$a;->c:Lcom/vungle/publisher/qz;

    invoke-interface {v3}, Lcom/vungle/publisher/qz;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/vungle/publisher/acc$a;->g:Lcom/vungle/publisher/qs;

    invoke-interface {v2}, Lcom/vungle/publisher/qs;->a()Ljava/lang/String;

    move-result-object v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    const-string v3, "ifa"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    :cond_0
    iget-object v2, p0, Lcom/vungle/publisher/acc$a;->g:Lcom/vungle/publisher/qs;

    invoke-interface {v2}, Lcom/vungle/publisher/qs;->c()Ljava/lang/String;

    move-result-object v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    const-string v3, "isu"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/vungle/publisher/acc$a;->g:Lcom/vungle/publisher/qs;

    invoke-interface {v2}, Lcom/vungle/publisher/qs;->j()Ljava/lang/String;

    move-result-object v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    const-string v3, "mac"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    :cond_2
    const-string v2, "ut"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/xf;->b:Ljava/lang/String;

    .line 61
    return-object v0
.end method

.method protected final synthetic b()Lcom/vungle/publisher/xf;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/vungle/publisher/acc;

    invoke-direct {v0}, Lcom/vungle/publisher/acc;-><init>()V

    return-object v0
.end method
