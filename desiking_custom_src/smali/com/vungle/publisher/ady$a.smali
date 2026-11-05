.class public final Lcom/vungle/publisher/ady$a;
.super Lcom/vungle/publisher/aee$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ady$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/aee$a",
        "<",
        "Lcom/vungle/publisher/ady;",
        "Lcom/vungle/publisher/jl;",
        "Lcom/vungle/publisher/jg;",
        "Lcom/vungle/publisher/jm;",
        "Lcom/vungle/publisher/ja;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/ady$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/afc$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vungle/publisher/aee$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/adj;
    .locals 2

    .prologue
    .line 13
    check-cast p1, Lcom/vungle/publisher/jl;

    invoke-super {p0, p1}, Lcom/vungle/publisher/aee$a;->a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/adj;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ady;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/vungle/publisher/jl;->h()Lcom/vungle/publisher/dp;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/ja;

    invoke-virtual {v1}, Lcom/vungle/publisher/ja;->B()Lcom/vungle/publisher/kp;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/iz;

    iget-object v1, v1, Lcom/vungle/publisher/iz;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/ady;->t:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    new-array v0, p1, [Lcom/vungle/publisher/ady;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/vungle/publisher/ady;

    invoke-direct {v0}, Lcom/vungle/publisher/ady;-><init>()V

    return-object v0
.end method

.method protected final bridge synthetic c()Lcom/vungle/publisher/adg$a;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/vungle/publisher/ady$a;->g:Lcom/vungle/publisher/ady$a$a;

    return-object v0
.end method
