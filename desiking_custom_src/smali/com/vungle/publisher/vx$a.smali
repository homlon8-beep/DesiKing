.class public final Lcom/vungle/publisher/vx$a;
.super Lcom/vungle/publisher/ye$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/vx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ye$a",
        "<",
        "Lcom/vungle/publisher/vx;",
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
            "Lcom/vungle/publisher/vx;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vungle/publisher/ye$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/nd;)Lcom/vungle/publisher/vx;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/vungle/publisher/vx$a;->d()Lcom/vungle/publisher/ye;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/vx;

    .line 31
    invoke-virtual {p1}, Lcom/vungle/publisher/nd;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/xf;->d:Ljava/lang/String;

    .line 32
    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "installedApps"

    return-object v0
.end method

.method protected final synthetic b()Lcom/vungle/publisher/xf;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/publisher/vx$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/vx;

    return-object v0
.end method
