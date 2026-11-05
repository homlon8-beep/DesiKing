.class public final Lcom/vungle/publisher/wk;
.super Lcom/vungle/publisher/xe;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/wv;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/hs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected c:Lcom/vungle/publisher/cz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vungle/publisher/xe;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/hm;Lcom/vungle/publisher/yu;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/hm",
            "<*>;",
            "Lcom/vungle/publisher/yu;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/publisher/wk;->c:Lcom/vungle/publisher/cz;

    new-instance v1, Lcom/vungle/publisher/wk$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/publisher/wk$1;-><init>(Lcom/vungle/publisher/wk;Lcom/vungle/publisher/hm;Lcom/vungle/publisher/yu;)V

    sget-object v2, Lcom/vungle/publisher/cz$b;->i:Lcom/vungle/publisher/cz$b;

    const/16 v3, 0x7d0

    invoke-virtual {p2, v3}, Lcom/vungle/publisher/yu;->a(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;J)V

    .line 46
    return-void
.end method
