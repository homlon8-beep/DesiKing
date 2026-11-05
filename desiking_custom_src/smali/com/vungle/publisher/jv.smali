.class public final Lcom/vungle/publisher/jv;
.super Lcom/vungle/publisher/kn;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/jv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kn",
        "<",
        "Lcom/vungle/publisher/jv;",
        "Lcom/vungle/publisher/ja;",
        "Lcom/vungle/publisher/aff;",
        "Lcom/vungle/publisher/kr;",
        "Lcom/vungle/publisher/jb$a;",
        "Lcom/vungle/publisher/afu;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/jv$a;
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
    iget-object v0, p0, Lcom/vungle/publisher/jv;->a:Lcom/vungle/publisher/jv$a;

    return-object v0
.end method
