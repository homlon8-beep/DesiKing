.class public final Lcom/vungle/publisher/ja;
.super Lcom/vungle/publisher/kq;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ja$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kq",
        "<",
        "Lcom/vungle/publisher/ja;",
        "Lcom/vungle/publisher/iz;",
        "Lcom/vungle/publisher/aff;",
        ">;"
    }
.end annotation


# instance fields
.field q:Lcom/vungle/publisher/ja$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/kq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/vungle/publisher/dp$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/ja;->q:Lcom/vungle/publisher/ja$a;

    return-object v0
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/ja;->q:Lcom/vungle/publisher/ja$a;

    return-object v0
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method protected final bridge synthetic s()Lcom/vungle/publisher/kq$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/ja;->q:Lcom/vungle/publisher/ja$a;

    return-object v0
.end method
