.class public final Lcom/vungle/publisher/dp$b$2;
.super Lcom/vungle/publisher/t;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/dp$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/t",
        "<",
        "Lcom/vungle/publisher/dp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/publisher/dp$b;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/dp$b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/vungle/publisher/dp$b$2;->b:Lcom/vungle/publisher/dp$b;

    iput-object p2, p0, Lcom/vungle/publisher/dp$b$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/vungle/publisher/t;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vungle/publisher/dp$b$2;->b:Lcom/vungle/publisher/dp$b;

    iget-object v0, v0, Lcom/vungle/publisher/dp$b;->a:Lcom/vungle/publisher/fu$a;

    iget-object v1, p0, Lcom/vungle/publisher/dp$b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/er$a;->b(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dp;

    return-object v0
.end method

.method protected final bridge synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vungle/publisher/dp$b$2;->b:Lcom/vungle/publisher/dp$b;

    iget-object v0, v0, Lcom/vungle/publisher/dp$b;->b:Lcom/vungle/publisher/ja$a;

    iget-object v1, p0, Lcom/vungle/publisher/dp$b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/er$a;->b(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dp;

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vungle/publisher/dp$b$2;->b:Lcom/vungle/publisher/dp$b;

    iget-object v0, v0, Lcom/vungle/publisher/dp$b;->c:Lcom/vungle/publisher/ky$a;

    iget-object v1, p0, Lcom/vungle/publisher/dp$b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/er$a;->b(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dp;

    return-object v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vungle/publisher/dp$b$2;->b:Lcom/vungle/publisher/dp$b;

    iget-object v0, v0, Lcom/vungle/publisher/dp$b;->d:Lcom/vungle/publisher/hy$a;

    iget-object v1, p0, Lcom/vungle/publisher/dp$b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/er$a;->b(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dp;

    return-object v0
.end method
