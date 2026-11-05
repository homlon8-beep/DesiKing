.class public final Lcom/vungle/publisher/acf;
.super Lcom/vungle/publisher/xr$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/acc$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/xb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vungle/publisher/xr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/vungle/publisher/xr;
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/acf;->a:Lcom/vungle/publisher/acc$a;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/publisher/acc$a;->a(J)Lcom/vungle/publisher/acc;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/acf;->b:Lcom/vungle/publisher/xb;

    invoke-super {p0, v0, v1}, Lcom/vungle/publisher/xr$a;->a(Lcom/vungle/publisher/xf;Lcom/vungle/publisher/xm;)Lcom/vungle/publisher/xr;

    move-result-object v0

    return-object v0
.end method
