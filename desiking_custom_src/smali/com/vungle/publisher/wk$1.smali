.class final Lcom/vungle/publisher/wk$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/wk;->a(Lcom/vungle/publisher/hm;Lcom/vungle/publisher/yu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/hm;

.field final synthetic b:Lcom/vungle/publisher/yu;

.field final synthetic c:Lcom/vungle/publisher/wk;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/wk;Lcom/vungle/publisher/hm;Lcom/vungle/publisher/yu;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vungle/publisher/wk$1;->c:Lcom/vungle/publisher/wk;

    iput-object p2, p0, Lcom/vungle/publisher/wk$1;->a:Lcom/vungle/publisher/hm;

    iput-object p3, p0, Lcom/vungle/publisher/wk$1;->b:Lcom/vungle/publisher/yu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/wk$1;->c:Lcom/vungle/publisher/wk;

    iget-object v0, v0, Lcom/vungle/publisher/wk;->a:Lcom/vungle/publisher/wv;

    iget-object v1, p0, Lcom/vungle/publisher/wk$1;->a:Lcom/vungle/publisher/hm;

    invoke-interface {v1}, Lcom/vungle/publisher/hm;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/wk$1;->a:Lcom/vungle/publisher/hm;

    invoke-interface {v2}, Lcom/vungle/publisher/hm;->s()Lcom/vungle/publisher/p;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/wk$1;->a:Lcom/vungle/publisher/hm;

    invoke-interface {v3}, Lcom/vungle/publisher/hm;->c()Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/publisher/wk$1;->a:Lcom/vungle/publisher/hm;

    invoke-interface {v4}, Lcom/vungle/publisher/hm;->u()Lcom/vungle/publisher/fr$b;

    move-result-object v4

    iget-object v5, p0, Lcom/vungle/publisher/wk$1;->a:Lcom/vungle/publisher/hm;

    invoke-interface {v5}, Lcom/vungle/publisher/hm;->f()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/vungle/publisher/wk$1;->a:Lcom/vungle/publisher/hm;

    invoke-interface {v6}, Lcom/vungle/publisher/hm;->g()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/vungle/publisher/wk$1;->b:Lcom/vungle/publisher/yu;

    invoke-virtual/range {v0 .. v7}, Lcom/vungle/publisher/wv;->a(Ljava/lang/String;Lcom/vungle/publisher/p;Ljava/lang/Integer;Lcom/vungle/publisher/fr$b;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/publisher/yu;)Lcom/vungle/publisher/xr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/xr;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    iget-object v1, p0, Lcom/vungle/publisher/wk$1;->c:Lcom/vungle/publisher/wk;

    iget-object v1, v1, Lcom/vungle/publisher/wk;->b:Lcom/vungle/publisher/hs$a;

    const-string v2, "VungleNetwork"

    const-string v3, "error requesting streaming ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
