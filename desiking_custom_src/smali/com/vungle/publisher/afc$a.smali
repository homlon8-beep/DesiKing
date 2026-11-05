.class public final Lcom/vungle/publisher/afc$a;
.super Lcom/vungle/publisher/aei$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/afc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/aei$a",
        "<",
        "Lcom/vungle/publisher/afc;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected f:Lcom/vungle/publisher/acy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vungle/publisher/aei$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/vungle/publisher/u;)Lcom/vungle/publisher/afc;
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Lcom/vungle/publisher/aei$a;->c()Lcom/vungle/publisher/aei;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/afc;

    .line 40
    invoke-virtual {p2}, Lcom/vungle/publisher/u;->getPlacement()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v1}, Lcom/vungle/publisher/ahe;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iput-object v1, v0, Lcom/vungle/publisher/afc;->i:Ljava/lang/String;

    .line 44
    :cond_0
    invoke-virtual {p2}, Lcom/vungle/publisher/u;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/publisher/acy$a;->a(Ljava/util/Map;)Lcom/vungle/publisher/acy;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/afc;->g:Lcom/vungle/publisher/acy;

    .line 45
    iput-object p1, v0, Lcom/vungle/publisher/afc;->h:Ljava/lang/String;

    .line 46
    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    new-array v0, p1, [Lcom/vungle/publisher/afc;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/vungle/publisher/afc;

    invoke-direct {v0}, Lcom/vungle/publisher/afc;-><init>()V

    return-object v0
.end method
