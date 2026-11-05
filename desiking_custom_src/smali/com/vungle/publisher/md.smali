.class public final Lcom/vungle/publisher/md;
.super Lcom/vungle/publisher/kn;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/md$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kn",
        "<",
        "Lcom/vungle/publisher/md;",
        "Lcom/vungle/publisher/ky;",
        "Lcom/vungle/publisher/afk;",
        "Lcom/vungle/publisher/lj;",
        "Lcom/vungle/publisher/lj$a;",
        "Lcom/vungle/publisher/acu;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/md$a;
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
    invoke-direct {p0}, Lcom/vungle/publisher/kn;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/vungle/publisher/kn$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/md;->a:Lcom/vungle/publisher/md$a;

    return-object v0
.end method
