.class public final Lcom/vungle/publisher/ij;
.super Lcom/vungle/publisher/dw;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/fi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ij$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dw",
        "<",
        "Lcom/vungle/publisher/ij;",
        "Lcom/vungle/publisher/ie;",
        "Lcom/vungle/publisher/ik;",
        "Lcom/vungle/publisher/hy;",
        ">;",
        "Lcom/vungle/publisher/fi;"
    }
.end annotation


# instance fields
.field v:Lcom/vungle/publisher/ij$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vungle/publisher/dw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/ij;->v:Lcom/vungle/publisher/ij$a;

    return-object v0
.end method

.method public final a_(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public final bridge synthetic b()Lcom/vungle/publisher/dw$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/ij;->v:Lcom/vungle/publisher/ij$a;

    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/dv$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/ij;->v:Lcom/vungle/publisher/ij$a;

    iget-object v0, v0, Lcom/vungle/publisher/ij$a;->e:Lcom/vungle/publisher/ie$a;

    return-object v0
.end method
