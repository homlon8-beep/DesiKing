.class public final Lcom/vungle/publisher/cm;
.super Lcom/vungle/publisher/rj;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/zb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/rd;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vungle/publisher/rj;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/yu;)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/vungle/publisher/cm;->unregister()V

    .line 38
    iget-object v0, p0, Lcom/vungle/publisher/cm;->a:Lcom/vungle/publisher/zb;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/zb;->b(Lcom/vungle/publisher/yu;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/vungle/publisher/aq;)V
    .locals 1
    .param p1, "event"    # Lcom/vungle/publisher/aq;

    .prologue
    .line 29
    iget-object v0, p1, Lcom/vungle/publisher/as;->a:Lcom/vungle/publisher/yu;

    invoke-direct {p0, v0}, Lcom/vungle/publisher/cm;->a(Lcom/vungle/publisher/yu;)V

    .line 30
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/ar;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/cm;->a(Lcom/vungle/publisher/yu;)V

    .line 34
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/at;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/cm;->a(Lcom/vungle/publisher/yu;)V

    .line 26
    return-void
.end method
