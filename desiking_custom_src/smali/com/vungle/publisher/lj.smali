.class public final Lcom/vungle/publisher/lj;
.super Lcom/vungle/publisher/fj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/lj$a;
    }
.end annotation


# instance fields
.field d:Lcom/vungle/publisher/lj$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vungle/publisher/fj;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vungle/publisher/lj;->d:Lcom/vungle/publisher/lj$a;

    return-object v0
.end method
