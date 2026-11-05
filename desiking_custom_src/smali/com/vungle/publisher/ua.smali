.class public final Lcom/vungle/publisher/ua;
.super Lcom/vungle/publisher/ny;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ua$a;
    }
.end annotation


# instance fields
.field public b:Lcom/vungle/publisher/ub;

.field public c:Lcom/vungle/publisher/ul;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/vungle/publisher/ny;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/mq;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/vungle/publisher/uo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vungle/publisher/tw;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1}, Lcom/vungle/publisher/ny;->a(Lcom/vungle/publisher/mq;)V

    .line 28
    return-void
.end method

.method public final getHistoryIndex()I
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/vungle/publisher/ua;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    return v0
.end method
