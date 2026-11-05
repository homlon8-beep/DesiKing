.class final Lcom/vungle/publisher/k$a;
.super Lcom/vungle/publisher/rj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/cz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/cp$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/k;",
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
    .line 56
    invoke-direct {p0}, Lcom/vungle/publisher/rj;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/vungle/publisher/ah;)V
    .locals 5
    .param p1, "downloadEvent"    # Lcom/vungle/publisher/ah;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/k$a;->a:Lcom/vungle/publisher/cz;

    iget-object v1, p0, Lcom/vungle/publisher/k$a;->b:Lcom/vungle/publisher/cp$a;

    iget-object v2, p1, Lcom/vungle/publisher/ah;->c:Lcom/vungle/publisher/p;

    iget-object v3, p1, Lcom/vungle/publisher/ah;->a:Lcom/vungle/publisher/hm;

    iget-object v4, p1, Lcom/vungle/publisher/ah;->b:Lcom/vungle/publisher/yu;

    invoke-virtual {v1, v2, v3, v4}, Lcom/vungle/publisher/cp$a;->a(Lcom/vungle/publisher/p;Lcom/vungle/publisher/hm;Lcom/vungle/publisher/yu;)Lcom/vungle/publisher/cp;

    move-result-object v1

    sget-object v2, Lcom/vungle/publisher/cz$b;->h:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    .line 62
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/au;)V
    .locals 3
    .param p1, "prepareSuccessEvent"    # Lcom/vungle/publisher/au;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/k$a;->c:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/k;

    iget-object v1, p1, Lcom/vungle/publisher/au;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/vungle/publisher/au;->b:Lcom/vungle/publisher/p;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/k;->a(Ljava/lang/String;Lcom/vungle/publisher/p;)V

    .line 66
    return-void
.end method
