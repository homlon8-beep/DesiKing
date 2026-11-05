.class final Lcom/vungle/publisher/om$c;
.super Lcom/vungle/publisher/om$d;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/om;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/om$d",
        "<",
        "Lcom/vungle/publisher/ui$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/om;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/om;Lcom/vungle/publisher/ui$b;I)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/vungle/publisher/om$c;->a:Lcom/vungle/publisher/om;

    .line 268
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/om$d;-><init>(Lcom/vungle/publisher/om;Ljava/lang/Object;I)V

    .line 269
    return-void
.end method


# virtual methods
.method final a()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/vungle/publisher/om$c;->a:Lcom/vungle/publisher/om;

    iget-object v0, v0, Lcom/vungle/publisher/om;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 265
    check-cast p1, Lcom/vungle/publisher/ui$b;

    iget-object v0, p0, Lcom/vungle/publisher/om$c;->a:Lcom/vungle/publisher/om;

    iget-object v0, v0, Lcom/vungle/publisher/om;->q:Lcom/vungle/publisher/ui;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ui;->setCloseVisibility(Lcom/vungle/publisher/ui$b;)V

    return-void
.end method
