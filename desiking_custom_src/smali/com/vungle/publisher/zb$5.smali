.class final Lcom/vungle/publisher/zb$5;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/zb;->a(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/vungle/publisher/zb;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/zb;JJ)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/vungle/publisher/zb$5;->c:Lcom/vungle/publisher/zb;

    iput-wide p2, p0, Lcom/vungle/publisher/zb$5;->a:J

    iput-wide p4, p0, Lcom/vungle/publisher/zb$5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/zb$5;->c:Lcom/vungle/publisher/zb;

    iget-object v0, v0, Lcom/vungle/publisher/zb;->g:Lcom/vungle/publisher/abk;

    iget-wide v2, p0, Lcom/vungle/publisher/zb$5;->a:J

    iget-wide v4, p0, Lcom/vungle/publisher/zb$5;->b:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/vungle/publisher/abk;->a(JJ)Lcom/vungle/publisher/xr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/xr;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    iget-object v1, p0, Lcom/vungle/publisher/zb$5;->c:Lcom/vungle/publisher/zb;

    iget-object v1, v1, Lcom/vungle/publisher/zb;->m:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleProtocol"

    const-string v3, "error sending session end"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
