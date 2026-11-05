.class final Lcom/vungle/publisher/ub$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/vungle/publisher/ub;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/ub;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/vungle/publisher/ub$1;->c:Lcom/vungle/publisher/ub;

    iput-object p2, p0, Lcom/vungle/publisher/ub$1;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/vungle/publisher/ub$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/vungle/publisher/ub$1;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/vungle/publisher/ub$1;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "document.querySelector(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\').play()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/tw;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 248
    return-void
.end method
