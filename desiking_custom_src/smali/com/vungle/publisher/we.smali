.class public final Lcom/vungle/publisher/we;
.super Lcom/vungle/publisher/xr$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/vx$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/wb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vungle/publisher/xr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/nd;)Lcom/vungle/publisher/xr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vungle/publisher/we;->a:Lcom/vungle/publisher/vx$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/vx$a;->a(Lcom/vungle/publisher/nd;)Lcom/vungle/publisher/vx;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/we;->b:Lcom/vungle/publisher/wb;

    invoke-super {p0, v0, v1}, Lcom/vungle/publisher/xr$a;->a(Lcom/vungle/publisher/xf;Lcom/vungle/publisher/xm;)Lcom/vungle/publisher/xr;

    move-result-object v0

    return-object v0
.end method
