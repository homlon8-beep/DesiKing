.class public final Lcom/vungle/publisher/mt;
.super Lcom/vungle/publisher/mq;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/mt$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/mq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 32
    const-string v0, "webViewRootContentString"

    iget-object v1, p0, Lcom/vungle/publisher/mt;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vungle/publisher/mt;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vungle/publisher/mt;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/vungle/publisher/mt;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/ahe;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/mt;->b:Ljava/lang/String;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/mt;->b:Ljava/lang/String;

    return-object v0
.end method
