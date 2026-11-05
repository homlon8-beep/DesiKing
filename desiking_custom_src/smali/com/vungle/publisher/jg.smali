.class public final Lcom/vungle/publisher/jg;
.super Lcom/vungle/publisher/ks;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/jg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ks",
        "<",
        "Lcom/vungle/publisher/jl;",
        "Lcom/vungle/publisher/jg;",
        "Lcom/vungle/publisher/jm;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/jg$a;
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
    iget-object v0, p0, Lcom/vungle/publisher/jg;->e:Lcom/vungle/publisher/jg$a;

    return-object v0
.end method

.method protected final bridge synthetic b()Lcom/vungle/publisher/dx$a;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/vungle/publisher/jg;->e:Lcom/vungle/publisher/jg$a;

    iget-object v0, v0, Lcom/vungle/publisher/jg$a;->b:Lcom/vungle/publisher/jm$a;

    return-object v0
.end method
