.class public final Lcom/vungle/publisher/k;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/k$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/cg$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/k$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/cz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/cm;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/vungle/publisher/p;)V
    .locals 3

    .prologue
    .line 37
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prepare ad request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/vungle/publisher/k;->b:Lcom/vungle/publisher/k$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/k$a;->registerOnce()V

    .line 39
    iget-object v0, p0, Lcom/vungle/publisher/k;->d:Lcom/vungle/publisher/cm;

    invoke-virtual {v0}, Lcom/vungle/publisher/cm;->registerOnce()V

    .line 40
    iget-object v1, p0, Lcom/vungle/publisher/k;->c:Lcom/vungle/publisher/cz;

    iget-object v0, p0, Lcom/vungle/publisher/k;->a:Lcom/vungle/publisher/cg$a;

    iget-object v0, v0, Lcom/vungle/publisher/cg$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cg;

    invoke-static {v0, p1}, Lcom/vungle/publisher/cg;->a(Lcom/vungle/publisher/cg;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/vungle/publisher/cg;->a(Lcom/vungle/publisher/cg;Lcom/vungle/publisher/p;)Lcom/vungle/publisher/p;

    sget-object v2, Lcom/vungle/publisher/cz$b;->g:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v1, v0, v2}, Lcom/vungle/publisher/cz;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/cz$b;)V

    .line 43
    return-void
.end method
