.class final Lcom/vungle/publisher/zf$b$1;
.super Lcom/vungle/publisher/t;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/zf$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/t",
        "<",
        "Lcom/vungle/publisher/zf",
        "<**>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/dw;

.field final synthetic b:Lcom/vungle/publisher/zf$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/zf$b;Lcom/vungle/publisher/dw;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vungle/publisher/zf$b$1;->b:Lcom/vungle/publisher/zf$b;

    iput-object p2, p0, Lcom/vungle/publisher/zf$b$1;->a:Lcom/vungle/publisher/dw;

    invoke-direct {p0}, Lcom/vungle/publisher/t;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/zf$b$1;->b:Lcom/vungle/publisher/zf$b;

    iget-object v1, v0, Lcom/vungle/publisher/zf$b;->a:Lcom/vungle/publisher/zo$a;

    iget-object v0, p0, Lcom/vungle/publisher/zf$b$1;->a:Lcom/vungle/publisher/dw;

    check-cast v0, Lcom/vungle/publisher/gp;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/zo$a;->a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/zf;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/zf$b$1;->b:Lcom/vungle/publisher/zf$b;

    iget-object v1, v0, Lcom/vungle/publisher/zf$b;->b:Lcom/vungle/publisher/zu$a;

    iget-object v0, p0, Lcom/vungle/publisher/zf$b$1;->a:Lcom/vungle/publisher/dw;

    check-cast v0, Lcom/vungle/publisher/jl;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/zu$a;->a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/zf;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/zf$b$1;->b:Lcom/vungle/publisher/zf$b;

    iget-object v1, v0, Lcom/vungle/publisher/zf$b;->c:Lcom/vungle/publisher/zx$a;

    iget-object v0, p0, Lcom/vungle/publisher/zf$b$1;->a:Lcom/vungle/publisher/dw;

    check-cast v0, Lcom/vungle/publisher/lt;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/zx$a;->a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/zf;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/zf$b$1;->b:Lcom/vungle/publisher/zf$b;

    iget-object v1, v0, Lcom/vungle/publisher/zf$b;->d:Lcom/vungle/publisher/zr$a;

    iget-object v0, p0, Lcom/vungle/publisher/zf$b$1;->a:Lcom/vungle/publisher/dw;

    check-cast v0, Lcom/vungle/publisher/ij;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/zr$a;->a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/zf;

    move-result-object v0

    return-object v0
.end method
