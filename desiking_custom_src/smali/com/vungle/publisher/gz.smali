.class public final Lcom/vungle/publisher/gz;
.super Lcom/vungle/publisher/kn;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/gz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kn",
        "<",
        "Lcom/vungle/publisher/gz;",
        "Lcom/vungle/publisher/fu;",
        "Lcom/vungle/publisher/aew;",
        "Lcom/vungle/publisher/kr;",
        "Lcom/vungle/publisher/gf$a;",
        "Lcom/vungle/publisher/afu;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/gz$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/kn;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/vungle/publisher/kn$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/gz;->a:Lcom/vungle/publisher/gz$a;

    return-object v0
.end method
