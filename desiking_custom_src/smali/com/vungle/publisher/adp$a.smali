.class public final Lcom/vungle/publisher/adp$a;
.super Lcom/vungle/publisher/aee$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/adp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/adp$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/aee$a",
        "<",
        "Lcom/vungle/publisher/adp;",
        "Lcom/vungle/publisher/gp;",
        "Lcom/vungle/publisher/gk;",
        "Lcom/vungle/publisher/gq;",
        "Lcom/vungle/publisher/fu;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/adp$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected h:Lcom/vungle/publisher/acy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vungle/publisher/aee$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/adj;
    .locals 2

    .prologue
    .line 14
    check-cast p1, Lcom/vungle/publisher/gp;

    invoke-super {p0, p1}, Lcom/vungle/publisher/aee$a;->a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/adj;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/adp;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/vungle/publisher/gp;->x:Lcom/vungle/publisher/eu;

    invoke-virtual {v1}, Lcom/vungle/publisher/eu;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adp;->h:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/vungle/publisher/gp;->h()Lcom/vungle/publisher/dp;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/fu;

    invoke-virtual {v1}, Lcom/vungle/publisher/fu;->B()Lcom/vungle/publisher/kp;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/ft;

    iget-object v1, v1, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    iget-object v1, v1, Lcom/vungle/publisher/hn;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/adp;->t:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    new-array v0, p1, [Lcom/vungle/publisher/adp;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/vungle/publisher/adp;

    invoke-direct {v0}, Lcom/vungle/publisher/adp;-><init>()V

    return-object v0
.end method

.method protected final bridge synthetic c()Lcom/vungle/publisher/adg$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vungle/publisher/adp$a;->g:Lcom/vungle/publisher/adp$a$a;

    return-object v0
.end method
