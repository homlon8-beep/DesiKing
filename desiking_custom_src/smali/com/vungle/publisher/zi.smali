.class public final Lcom/vungle/publisher/zi;
.super Lcom/vungle/publisher/ya;
.source "vungle"


# instance fields
.field protected a:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/agi;",
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
    .line 20
    invoke-direct {p0}, Lcom/vungle/publisher/ya;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p1, Lcom/vungle/publisher/xr;->a:Lcom/vungle/publisher/xf;

    check-cast v0, Lcom/vungle/publisher/zf;

    .line 26
    iget-object v1, p0, Lcom/vungle/publisher/zi;->a:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/agi;

    iget-object v2, v0, Lcom/vungle/publisher/zf;->f:Ljava/lang/Integer;

    const-string v3, "VungleReport"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deleting report "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/vungle/publisher/agi;->c:Lcom/vungle/publisher/gp$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/vungle/publisher/gp$a;->a([Ljava/lang/Object;)I

    .line 29
    iget-object v0, v0, Lcom/vungle/publisher/zf;->e:Lcom/vungle/publisher/dp;

    invoke-virtual {v0}, Lcom/vungle/publisher/dp;->p()Z

    .line 31
    return-void
.end method
