.class final Lcom/vungle/publisher/zb$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/zb;->a(Lcom/vungle/publisher/dw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/dw;

.field final synthetic b:Lcom/vungle/publisher/zb;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/zb;Lcom/vungle/publisher/dw;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vungle/publisher/zb$1;->b:Lcom/vungle/publisher/zb;

    iput-object p2, p0, Lcom/vungle/publisher/zb$1;->a:Lcom/vungle/publisher/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/zb$1;->b:Lcom/vungle/publisher/zb;

    iget-object v0, v0, Lcom/vungle/publisher/zb;->c:Lcom/vungle/publisher/zl;

    iget-object v1, p0, Lcom/vungle/publisher/zb$1;->a:Lcom/vungle/publisher/dw;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/zl;->a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/xr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/xr;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/vungle/publisher/zb$1;->b:Lcom/vungle/publisher/zb;

    iget-object v1, v1, Lcom/vungle/publisher/zb;->m:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleProtocol"

    const-string v3, "error sending report ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
