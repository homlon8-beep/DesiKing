.class final Lcom/vungle/publisher/zb$4;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/zb;->a(Ljava/lang/String;Lcom/vungle/publisher/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/publisher/u;

.field final synthetic c:Lcom/vungle/publisher/zb;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/zb;Ljava/lang/String;Lcom/vungle/publisher/u;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/vungle/publisher/zb$4;->c:Lcom/vungle/publisher/zb;

    iput-object p2, p0, Lcom/vungle/publisher/zb$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/publisher/zb$4;->b:Lcom/vungle/publisher/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/zb$4;->c:Lcom/vungle/publisher/zb;

    iget-object v0, v0, Lcom/vungle/publisher/zb;->f:Lcom/vungle/publisher/abe;

    iget-object v1, p0, Lcom/vungle/publisher/zb$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/publisher/zb$4;->b:Lcom/vungle/publisher/u;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/abe;->a(Ljava/lang/String;Lcom/vungle/publisher/u;)Lcom/vungle/publisher/xr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/xr;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    iget-object v1, p0, Lcom/vungle/publisher/zb$4;->c:Lcom/vungle/publisher/zb;

    iget-object v1, v1, Lcom/vungle/publisher/zb;->m:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleProtocol"

    const-string v3, "error creating request streaming ad message"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    iget-object v0, p0, Lcom/vungle/publisher/zb$4;->c:Lcom/vungle/publisher/zb;

    invoke-virtual {v0}, Lcom/vungle/publisher/zb;->b()V

    goto :goto_0

    .line 179
    :catch_1
    move-exception v0

    .line 180
    iget-object v1, p0, Lcom/vungle/publisher/zb$4;->c:Lcom/vungle/publisher/zb;

    iget-object v1, v1, Lcom/vungle/publisher/zb;->m:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleProtocol"

    const-string v3, "error requesting streaming ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    iget-object v0, p0, Lcom/vungle/publisher/zb$4;->c:Lcom/vungle/publisher/zb;

    invoke-virtual {v0}, Lcom/vungle/publisher/zb;->b()V

    goto :goto_0
.end method
