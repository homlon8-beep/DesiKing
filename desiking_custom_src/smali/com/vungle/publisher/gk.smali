.class public final Lcom/vungle/publisher/gk;
.super Lcom/vungle/publisher/ks;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/gk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ks",
        "<",
        "Lcom/vungle/publisher/gp;",
        "Lcom/vungle/publisher/gk;",
        "Lcom/vungle/publisher/gq;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/gk$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vungle/publisher/ks;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/vungle/publisher/gk;->e:Lcom/vungle/publisher/gk$a;

    return-object v0
.end method

.method protected final bridge synthetic b()Lcom/vungle/publisher/dx$a;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/vungle/publisher/gk;->e:Lcom/vungle/publisher/gk$a;

    iget-object v0, v0, Lcom/vungle/publisher/gk$a;->b:Lcom/vungle/publisher/gq$a;

    return-object v0
.end method
