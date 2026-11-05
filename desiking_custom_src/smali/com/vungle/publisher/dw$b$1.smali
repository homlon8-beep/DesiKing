.class final Lcom/vungle/publisher/dw$b$1;
.super Lcom/vungle/publisher/t;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/dw$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/t",
        "<",
        "Lcom/vungle/publisher/dw",
        "<***TA;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/dp;

.field final synthetic b:Lcom/vungle/publisher/dw$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/dw$b;Lcom/vungle/publisher/dp;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/vungle/publisher/dw$b$1;->b:Lcom/vungle/publisher/dw$b;

    iput-object p2, p0, Lcom/vungle/publisher/dw$b$1;->a:Lcom/vungle/publisher/dp;

    invoke-direct {p0}, Lcom/vungle/publisher/t;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/vungle/publisher/dw$b$1;->b:Lcom/vungle/publisher/dw$b;

    iget-object v0, v0, Lcom/vungle/publisher/dw$b;->b:Lcom/vungle/publisher/gp$a;

    iget-object v1, p0, Lcom/vungle/publisher/dw$b$1;->a:Lcom/vungle/publisher/dp;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dw$a;->c(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/dw;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/vungle/publisher/dw$b$1;->b:Lcom/vungle/publisher/dw$b;

    iget-object v0, v0, Lcom/vungle/publisher/dw$b;->c:Lcom/vungle/publisher/jl$a;

    iget-object v1, p0, Lcom/vungle/publisher/dw$b$1;->a:Lcom/vungle/publisher/dp;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dw$a;->c(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/dw;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/vungle/publisher/dw$b$1;->b:Lcom/vungle/publisher/dw$b;

    iget-object v0, v0, Lcom/vungle/publisher/dw$b;->d:Lcom/vungle/publisher/lt$a;

    iget-object v1, p0, Lcom/vungle/publisher/dw$b$1;->a:Lcom/vungle/publisher/dp;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dw$a;->c(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/dw;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/vungle/publisher/dw$b$1;->b:Lcom/vungle/publisher/dw$b;

    iget-object v0, v0, Lcom/vungle/publisher/dw$b;->e:Lcom/vungle/publisher/ij$a;

    iget-object v1, p0, Lcom/vungle/publisher/dw$b$1;->a:Lcom/vungle/publisher/dp;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dw$a;->c(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/dw;

    move-result-object v0

    return-object v0
.end method
