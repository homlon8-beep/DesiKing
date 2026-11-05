.class public final Lcom/vungle/publisher/jv$a;
.super Lcom/vungle/publisher/kn$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/jv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kn$a",
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

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/jv;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/jb$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vungle/publisher/kn$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/vungle/publisher/fj$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/jv$a;->b:Lcom/vungle/publisher/jb$a;

    return-object v0
.end method

.method protected final synthetic b()Lcom/vungle/publisher/kn;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/jv$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jv;

    return-object v0
.end method
