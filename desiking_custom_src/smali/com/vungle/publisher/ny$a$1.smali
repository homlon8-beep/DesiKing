.class public final Lcom/vungle/publisher/ny$a$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ny$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/vungle/publisher/ny$a;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ny$a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vungle/publisher/ny$a$1;->b:Lcom/vungle/publisher/ny$a;

    iput-object p2, p0, Lcom/vungle/publisher/ny$a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/vungle/publisher/ny$a$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 62
    iget-object v1, p0, Lcom/vungle/publisher/ny$a$1;->b:Lcom/vungle/publisher/ny$a;

    iget-object v1, v1, Lcom/vungle/publisher/ny$a;->b:Lcom/vungle/publisher/qs;

    invoke-interface {v1, v0}, Lcom/vungle/publisher/qs;->a(Landroid/webkit/WebView;)V

    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/ny$a$1;->b:Lcom/vungle/publisher/ny$a;

    iget-object v0, v0, Lcom/vungle/publisher/ny$a;->a:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/rh;

    invoke-direct {v1}, Lcom/vungle/publisher/rh;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
