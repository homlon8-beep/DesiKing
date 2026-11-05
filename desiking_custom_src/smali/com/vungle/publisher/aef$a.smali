.class public final Lcom/vungle/publisher/aef$a;
.super Lcom/vungle/publisher/adj$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/adj$a",
        "<",
        "Lcom/vungle/publisher/lo;",
        "Lcom/vungle/publisher/aef;",
        "Lcom/vungle/publisher/lt;",
        "Lcom/vungle/publisher/ky;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/agb$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vungle/publisher/adj$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/adj;
    .locals 2

    .prologue
    .line 25
    check-cast p1, Lcom/vungle/publisher/lt;

    invoke-super {p0, p1}, Lcom/vungle/publisher/adj$a;->a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/adj;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aef;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/vungle/publisher/lt;->v:Lcom/vungle/publisher/eu;

    invoke-virtual {v1}, Lcom/vungle/publisher/eu;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/aef;->h:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/vungle/publisher/lt;->w:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/aef;->t:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    new-array v0, p1, [Lcom/vungle/publisher/aef;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/vungle/publisher/aef;

    invoke-direct {v0}, Lcom/vungle/publisher/aef;-><init>()V

    return-object v0
.end method

.method protected final c()Lcom/vungle/publisher/adg$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/adg$a",
            "<",
            "Lcom/vungle/publisher/lo;",
            "**>;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vungle/publisher/aef$a;->g:Lcom/vungle/publisher/agb$a;

    return-object v0
.end method
