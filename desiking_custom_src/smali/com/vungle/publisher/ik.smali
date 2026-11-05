.class public final Lcom/vungle/publisher/ik;
.super Lcom/vungle/publisher/dx;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ik$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dx",
        "<",
        "Lcom/vungle/publisher/ie;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/ik$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/dx;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/vungle/publisher/ik;->e:Lcom/vungle/publisher/ik$a;

    return-object v0
.end method
