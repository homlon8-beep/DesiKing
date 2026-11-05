.class public final Lcom/vungle/publisher/kz;
.super Lcom/vungle/publisher/fs;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/kz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/fs",
        "<",
        "Lcom/vungle/publisher/ky;",
        "Lcom/vungle/publisher/kz;",
        ">;"
    }
.end annotation


# instance fields
.field h:Lcom/vungle/publisher/ky$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/kz$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vungle/publisher/fs;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vungle/publisher/kz;->B()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "index.html"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vungle/publisher/sa;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/kz;->i:Lcom/vungle/publisher/kz$a;

    return-object v0
.end method

.method protected final bridge synthetic r()Lcom/vungle/publisher/dp$a;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vungle/publisher/kz;->h:Lcom/vungle/publisher/ky$a;

    return-object v0
.end method
