.class public final Lcom/vungle/publisher/cp$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cp;",
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
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/p;Lcom/vungle/publisher/hm;Lcom/vungle/publisher/yu;)Lcom/vungle/publisher/cp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/p;",
            "Lcom/vungle/publisher/hm",
            "<*>;",
            "Lcom/vungle/publisher/yu;",
            ")",
            "Lcom/vungle/publisher/cp;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vungle/publisher/cp$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cp;

    .line 111
    iput-object p2, v0, Lcom/vungle/publisher/cp;->a:Lcom/vungle/publisher/hm;

    .line 112
    invoke-interface {p2}, Lcom/vungle/publisher/hm;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/cp;->b:Ljava/lang/String;

    .line 113
    iput-object p1, v0, Lcom/vungle/publisher/cp;->c:Lcom/vungle/publisher/p;

    .line 114
    iput-object p3, v0, Lcom/vungle/publisher/cp;->d:Lcom/vungle/publisher/yu;

    .line 115
    return-object v0
.end method
