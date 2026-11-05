.class public final Lcom/vungle/publisher/ja$a;
.super Lcom/vungle/publisher/kq$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kq$a",
        "<",
        "Lcom/vungle/publisher/ja;",
        "Lcom/vungle/publisher/iz;",
        "Lcom/vungle/publisher/aff;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ja;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/iz$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/jv$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vungle/publisher/kq$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/dp;
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/vungle/publisher/aff;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ja$a;->a(Lcom/vungle/publisher/aff;)Lcom/vungle/publisher/ja;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/aff;)Lcom/vungle/publisher/ja;
    .locals 2

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/vungle/publisher/kq$a;->a(Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kq;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ja;

    .line 63
    sget-object v1, Lcom/vungle/publisher/dp$c;->e:Lcom/vungle/publisher/dp$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ja;->a(Lcom/vungle/publisher/dp$c;)V

    .line 64
    return-object v0
.end method

.method public final bridge synthetic a(Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kq;
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/vungle/publisher/aff;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ja$a;->a(Lcom/vungle/publisher/aff;)Lcom/vungle/publisher/ja;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Lcom/vungle/publisher/p;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/vungle/publisher/p;->b:Lcom/vungle/publisher/p;

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 47
    new-array v0, p1, [Lcom/vungle/publisher/ja;

    return-object v0
.end method

.method protected final a_(I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    new-array v0, p1, [Ljava/lang/String;

    return-object v0
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    new-array v0, p1, [Ljava/lang/String;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "ad"

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/ja$a;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ja;

    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/kn$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/ja$a;->f:Lcom/vungle/publisher/jv$a;

    return-object v0
.end method

.method protected final bridge synthetic f()Lcom/vungle/publisher/kp$a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/ja$a;->e:Lcom/vungle/publisher/iz$a;

    return-object v0
.end method
