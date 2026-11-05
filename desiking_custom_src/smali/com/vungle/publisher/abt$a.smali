.class public final Lcom/vungle/publisher/abt$a;
.super Lcom/vungle/publisher/ze$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/abt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ze$a",
        "<",
        "Lcom/vungle/publisher/abt;",
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
    .line 41
    invoke-direct {p0}, Lcom/vungle/publisher/ze$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/vungle/publisher/ze;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/vungle/publisher/abt$a;->d()Lcom/vungle/publisher/abt;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b()Lcom/vungle/publisher/xf;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/vungle/publisher/abt;

    invoke-direct {v0}, Lcom/vungle/publisher/abt;-><init>()V

    return-object v0
.end method

.method public final synthetic c()Lcom/vungle/publisher/xf;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/vungle/publisher/abt$a;->d()Lcom/vungle/publisher/abt;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/vungle/publisher/abt;
    .locals 4

    .prologue
    .line 45
    invoke-super {p0}, Lcom/vungle/publisher/ze$a;->a()Lcom/vungle/publisher/ze;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/abt;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/publisher/abt$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "new"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "app_id"

    iget-object v3, p0, Lcom/vungle/publisher/abt$a;->c:Lcom/vungle/publisher/qz;

    invoke-interface {v3}, Lcom/vungle/publisher/qz;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/vungle/publisher/abt$a;->g:Lcom/vungle/publisher/qs;

    invoke-interface {v2}, Lcom/vungle/publisher/qs;->a()Ljava/lang/String;

    move-result-object v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    const-string v3, "ifa"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/vungle/publisher/abt$a;->g:Lcom/vungle/publisher/qs;

    invoke-interface {v2}, Lcom/vungle/publisher/qs;->c()Ljava/lang/String;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    const-string v3, "isu"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/vungle/publisher/abt$a;->g:Lcom/vungle/publisher/qs;

    invoke-interface {v2}, Lcom/vungle/publisher/qs;->j()Ljava/lang/String;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    const-string v3, "mac"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/xf;->b:Ljava/lang/String;

    .line 63
    return-object v0
.end method
