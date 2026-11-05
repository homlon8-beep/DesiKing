.class final Lcom/vungle/publisher/pu$4;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/oe$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/pu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/pu;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/pu;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/vungle/publisher/pu$4;->a:Lcom/vungle/publisher/pu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/vungle/publisher/pu$4;->a:Lcom/vungle/publisher/pu;

    invoke-virtual {v0}, Lcom/vungle/publisher/pu;->onResume()V

    .line 665
    iget-object v0, p0, Lcom/vungle/publisher/pu$4;->a:Lcom/vungle/publisher/pu;

    invoke-static {v0}, Lcom/vungle/publisher/pu;->d(Lcom/vungle/publisher/pu;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 666
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/vungle/publisher/pu$4;->d()V

    .line 650
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 654
    const-string v0, "VungleAd"

    const-string v1, "cancel video"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/vungle/publisher/pu$4;->a:Lcom/vungle/publisher/pu;

    invoke-static {v0}, Lcom/vungle/publisher/pu;->c(Lcom/vungle/publisher/pu;)V

    .line 656
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/vungle/publisher/pu$4;->d()V

    .line 661
    return-void
.end method
