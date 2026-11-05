.class public final Lcom/vungle/publisher/ie;
.super Lcom/vungle/publisher/dv;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ie$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dv",
        "<",
        "Lcom/vungle/publisher/ij;",
        "Lcom/vungle/publisher/ie;",
        "Lcom/vungle/publisher/ik;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/ie$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vungle/publisher/dv;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/vungle/publisher/ie;->e:Lcom/vungle/publisher/ie$a;

    return-object v0
.end method

.method protected final bridge synthetic b()Lcom/vungle/publisher/dx$a;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/vungle/publisher/ie;->e:Lcom/vungle/publisher/ie$a;

    iget-object v0, v0, Lcom/vungle/publisher/ie$a;->b:Lcom/vungle/publisher/ik$a;

    return-object v0
.end method
