.class public final Lcom/vungle/publisher/yb;
.super Lcom/vungle/publisher/xe;
.source "vungle"


# instance fields
.field a:Lcom/vungle/publisher/yq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/we;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/hs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected d:Lcom/vungle/publisher/cz;
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
.method public final a(Lcom/vungle/publisher/nd;)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/yb;->d:Lcom/vungle/publisher/cz;

    new-instance v1, Lcom/vungle/publisher/yb$2;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/yb$2;-><init>(Lcom/vungle/publisher/yb;Lcom/vungle/publisher/nd;)V

    sget-object v2, Lcom/vungle/publisher/cz$b;->s:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    .line 60
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/hs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/publisher/yb;->d:Lcom/vungle/publisher/cz;

    new-instance v1, Lcom/vungle/publisher/yb$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/yb$1;-><init>(Lcom/vungle/publisher/yb;Ljava/util/List;)V

    sget-object v2, Lcom/vungle/publisher/cz$b;->t:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    .line 44
    return-void
.end method
