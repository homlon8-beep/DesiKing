.class public final Lcom/vungle/publisher/ij$a;
.super Lcom/vungle/publisher/dw$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dw$a",
        "<",
        "Lcom/vungle/publisher/ij;",
        "Lcom/vungle/publisher/ie;",
        "Lcom/vungle/publisher/ik;",
        "Lcom/vungle/publisher/hy;",
        "Lcom/vungle/publisher/aez;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field c:Lcom/vungle/publisher/hy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/ie$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ij;",
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
    .line 46
    invoke-direct {p0}, Lcom/vungle/publisher/dw$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/vungle/publisher/dp$a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/ij$a;->c:Lcom/vungle/publisher/hy$a;

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 35
    new-array v0, p1, [Lcom/vungle/publisher/ij;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/ij$a;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ij;

    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/dv$a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/ij$a;->e:Lcom/vungle/publisher/ie$a;

    return-object v0
.end method

.method public final f()Lcom/vungle/publisher/p;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/vungle/publisher/p;->d:Lcom/vungle/publisher/p;

    return-object v0
.end method
