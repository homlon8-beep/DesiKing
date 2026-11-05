.class final Lcom/vungle/publisher/zu$a;
.super Lcom/vungle/publisher/zf$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/zu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/zf$a",
        "<",
        "Lcom/vungle/publisher/ady;",
        "Lcom/vungle/publisher/zu;",
        "Lcom/vungle/publisher/jl;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/ady$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/zf$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic b()Lcom/vungle/publisher/xf;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/vungle/publisher/zu;

    invoke-direct {v0}, Lcom/vungle/publisher/zu;-><init>()V

    return-object v0
.end method

.method protected final bridge synthetic d()Lcom/vungle/publisher/adj$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/zu$a;->g:Lcom/vungle/publisher/ady$a;

    return-object v0
.end method

.method protected final synthetic e()Lcom/vungle/publisher/zf;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/vungle/publisher/zu;

    invoke-direct {v0}, Lcom/vungle/publisher/zu;-><init>()V

    return-object v0
.end method
