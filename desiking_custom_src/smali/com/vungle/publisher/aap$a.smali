.class public final Lcom/vungle/publisher/aap$a;
.super Lcom/vungle/publisher/ze$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ze$a",
        "<",
        "Lcom/vungle/publisher/aap;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/aes$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vungle/publisher/ze$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/vungle/publisher/ze;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/vungle/publisher/aap$a;->d()Lcom/vungle/publisher/aap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b()Lcom/vungle/publisher/xf;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/vungle/publisher/aap;

    invoke-direct {v0}, Lcom/vungle/publisher/aap;-><init>()V

    return-object v0
.end method

.method public final synthetic c()Lcom/vungle/publisher/xf;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/vungle/publisher/aap$a;->d()Lcom/vungle/publisher/aap;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/vungle/publisher/aap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/th;
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/ze$a;->a()Lcom/vungle/publisher/ze;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aap;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/publisher/aap$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "requestAd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/xf;->b:Ljava/lang/String;

    .line 48
    iget-object v1, v0, Lcom/vungle/publisher/xf;->c:Landroid/os/Bundle;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/vungle/publisher/aap$a;->g:Lcom/vungle/publisher/aes$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/aes$a;->d()Lcom/vungle/publisher/aes;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aap;->e:Lcom/vungle/publisher/aes;

    .line 50
    invoke-virtual {v1}, Lcom/vungle/publisher/aes;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/xf;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Lcom/vungle/publisher/th;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/th;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
