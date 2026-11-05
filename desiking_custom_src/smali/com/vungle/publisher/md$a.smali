.class public final Lcom/vungle/publisher/md$a;
.super Lcom/vungle/publisher/kn$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/md;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kn$a",
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

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/md;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/lj$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vungle/publisher/kn$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/vungle/publisher/fj$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/md$a;->b:Lcom/vungle/publisher/lj$a;

    return-object v0
.end method

.method protected final synthetic b()Lcom/vungle/publisher/kn;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/md$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/md;

    return-object v0
.end method
