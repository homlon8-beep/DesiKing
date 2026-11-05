.class final Lcom/vungle/publisher/hn$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/hn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
            "Lcom/vungle/publisher/hn;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/wk;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/vungle/publisher/hn$b;)Lcom/vungle/publisher/hn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/hn$b",
            "<*>;)",
            "Lcom/vungle/publisher/hn;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vungle/publisher/hn$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hn;

    .line 240
    iput-object p1, v0, Lcom/vungle/publisher/hn;->a:Lcom/vungle/publisher/hn$b;

    .line 241
    iget-object v1, p0, Lcom/vungle/publisher/hn$a;->b:Lcom/vungle/publisher/wk;

    iput-object v1, v0, Lcom/vungle/publisher/hn;->d:Lcom/vungle/publisher/wk;

    .line 242
    return-object v0
.end method
