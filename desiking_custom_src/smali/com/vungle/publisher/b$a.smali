.class public final Lcom/vungle/publisher/b$a;
.super Lcom/vungle/publisher/rj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/vungle/publisher/rj;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/vungle/publisher/aa;)V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/vungle/publisher/b$a;->a:Lcom/vungle/publisher/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/b;->b(Z)V

    .line 340
    return-void
.end method
