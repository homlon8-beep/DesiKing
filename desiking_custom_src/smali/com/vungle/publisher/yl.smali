.class public final Lcom/vungle/publisher/yl;
.super Lcom/vungle/publisher/xb;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/yl$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/hs;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/vungle/publisher/hs$a;
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
    invoke-direct {p0}, Lcom/vungle/publisher/xb;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/xb;->a(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V

    .line 25
    iget-object v0, p0, Lcom/vungle/publisher/yl;->b:Lcom/vungle/publisher/hs$a;

    iget-object v1, p0, Lcom/vungle/publisher/yl;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/hs$a;->a(Ljava/util/List;)I

    .line 26
    return-void
.end method
