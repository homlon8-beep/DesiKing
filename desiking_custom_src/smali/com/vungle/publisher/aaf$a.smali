.class public final Lcom/vungle/publisher/aaf$a;
.super Lcom/vungle/publisher/ze$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ze$a",
        "<",
        "Lcom/vungle/publisher/aaf;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/aaf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/aen;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vungle/publisher/ze$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/vungle/publisher/ze;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/vungle/publisher/aaf$a;->d()Lcom/vungle/publisher/aaf;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic b()Lcom/vungle/publisher/xf;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vungle/publisher/aaf$a;->g:Lcom/vungle/publisher/aaf;

    return-object v0
.end method

.method public final synthetic c()Lcom/vungle/publisher/xf;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/vungle/publisher/aaf$a;->d()Lcom/vungle/publisher/aaf;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/vungle/publisher/aaf;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/th;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aaf$a;->g:Lcom/vungle/publisher/aaf;

    iget-boolean v0, v0, Lcom/vungle/publisher/aaf;->e:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/vungle/publisher/aaf$a;->g:Lcom/vungle/publisher/aaf;

    .line 52
    :goto_0
    return-object v0

    .line 47
    :cond_0
    invoke-super {p0}, Lcom/vungle/publisher/ze$a;->a()Lcom/vungle/publisher/ze;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aaf;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/publisher/aaf$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/xf;->b:Ljava/lang/String;

    .line 49
    iget-object v1, v0, Lcom/vungle/publisher/xf;->c:Landroid/os/Bundle;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/vungle/publisher/aaf$a;->h:Lcom/vungle/publisher/aen;

    invoke-virtual {v1}, Lcom/vungle/publisher/aen;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/xf;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Lcom/vungle/publisher/th;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/th;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
