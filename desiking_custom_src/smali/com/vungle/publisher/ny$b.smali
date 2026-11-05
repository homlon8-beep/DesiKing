.class public abstract Lcom/vungle/publisher/ny$b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ny;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Lcom/vungle/publisher/ny;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/qs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Lcom/vungle/publisher/ny;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TW;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;Lcom/vungle/publisher/a;)Lcom/vungle/publisher/ny;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/a;",
            ")TW;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/ny$b;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ny$b;->a(Landroid/content/Context;)Lcom/vungle/publisher/ny;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/vungle/publisher/ny$b;->c:Lcom/vungle/publisher/rq;

    iput-object v1, v0, Lcom/vungle/publisher/ny;->a:Lcom/vungle/publisher/rq;

    .line 87
    invoke-virtual {v0}, Lcom/vungle/publisher/ny;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v2, p0, Lcom/vungle/publisher/ny$b;->b:Lcom/vungle/publisher/qs;

    sget-object v3, Lcom/vungle/publisher/qo;->e:Lcom/vungle/publisher/qo;

    invoke-interface {v2, v3}, Lcom/vungle/publisher/qs;->a(Lcom/vungle/publisher/qo;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ny;->setBackgroundColor(I)V

    invoke-virtual {v0, v4}, Lcom/vungle/publisher/ny;->setBackgroundResource(I)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/vungle/publisher/ny$b;->a(Ljava/lang/String;Lcom/vungle/publisher/ny;Lcom/vungle/publisher/a;)V

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ny$b;->a(Lcom/vungle/publisher/ny;)V

    iget-object v1, p0, Lcom/vungle/publisher/ny$b;->b:Lcom/vungle/publisher/qs;

    sget-object v2, Lcom/vungle/publisher/qo;->g:Lcom/vungle/publisher/qo;

    invoke-interface {v1, v2}, Lcom/vungle/publisher/qs;->a(Lcom/vungle/publisher/qo;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v5}, Lcom/vungle/publisher/ny;->setWebContentsDebuggingEnabled(Z)V

    .line 88
    :cond_1
    return-object v0
.end method

.method public abstract a(Lcom/vungle/publisher/ny;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lcom/vungle/publisher/ny;Lcom/vungle/publisher/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TW;",
            "Lcom/vungle/publisher/a;",
            ")V"
        }
    .end annotation
.end method
