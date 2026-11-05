.class final Lcom/vungle/publisher/zb$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/zb;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/zb;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/zb;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/vungle/publisher/zb$2;->a:Lcom/vungle/publisher/zb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/zb$2;->a:Lcom/vungle/publisher/zb;

    iget-object v0, v0, Lcom/vungle/publisher/zb;->d:Lcom/vungle/publisher/aam;

    invoke-virtual {v0}, Lcom/vungle/publisher/aam;->a()Lcom/vungle/publisher/xr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/xr;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    iget-object v1, p0, Lcom/vungle/publisher/zb$2;->a:Lcom/vungle/publisher/zb;

    iget-object v1, v1, Lcom/vungle/publisher/zb;->m:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleProtocol"

    const-string v3, "error sending request config"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
