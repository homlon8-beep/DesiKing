.class final Lcom/vungle/publisher/dp$b$1;
.super Lcom/vungle/publisher/t;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/dp$b;->a(Lcom/vungle/publisher/p;)Lcom/vungle/publisher/fc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/t",
        "<",
        "Lcom/vungle/publisher/fc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/p;

.field final synthetic b:Lcom/vungle/publisher/dp$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/dp$b;Lcom/vungle/publisher/p;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/vungle/publisher/dp$b$1;->b:Lcom/vungle/publisher/dp$b;

    iput-object p2, p0, Lcom/vungle/publisher/dp$b$1;->a:Lcom/vungle/publisher/p;

    invoke-direct {p0}, Lcom/vungle/publisher/t;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/vungle/publisher/dp$b$1;->b:Lcom/vungle/publisher/dp$b;

    iget-object v0, v0, Lcom/vungle/publisher/dp$b;->a:Lcom/vungle/publisher/fu$a;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot get cacheable factory for ad type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/dp$b$1;->a:Lcom/vungle/publisher/p;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/vungle/publisher/dp$b$1;->b:Lcom/vungle/publisher/dp$b;

    iget-object v0, v0, Lcom/vungle/publisher/dp$b;->c:Lcom/vungle/publisher/ky$a;

    return-object v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/vungle/publisher/dp$b$1;->b:Lcom/vungle/publisher/dp$b;

    iget-object v0, v0, Lcom/vungle/publisher/dp$b;->d:Lcom/vungle/publisher/hy$a;

    return-object v0
.end method
