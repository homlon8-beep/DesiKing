.class public abstract Lcom/vungle/publisher/oa;
.super Lcom/vungle/publisher/nx;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/oa$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<W:",
        "Lcom/vungle/publisher/ny;",
        ">",
        "Lcom/vungle/publisher/nx;"
    }
.end annotation


# instance fields
.field protected f:Lcom/vungle/publisher/mq;

.field protected g:Lcom/vungle/publisher/ny;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TW;"
        }
    .end annotation
.end field

.field protected h:Ljava/lang/String;

.field protected i:Lcom/vungle/publisher/a;

.field j:Lcom/vungle/publisher/qs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/mq$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vungle/publisher/nx;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;Lcom/vungle/publisher/a;)Lcom/vungle/publisher/ny;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/a;",
            ")TW;"
        }
    .end annotation
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 60
    .local p0, "this":Lcom/vungle/publisher/oa;, "Lcom/vungle/publisher/oa<TW;>;"
    invoke-super {p0, p1}, Lcom/vungle/publisher/nx;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    iget-object v0, p0, Lcom/vungle/publisher/oa;->g:Lcom/vungle/publisher/ny;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ny;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    .local p0, "this":Lcom/vungle/publisher/oa;, "Lcom/vungle/publisher/oa<TW;>;"
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/nx;->onCreate(Landroid/os/Bundle;)V

    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/vungle/publisher/oa;->l:Lcom/vungle/publisher/mq$b;

    const-string v1, "webViewRootContentIndexFile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/vungle/publisher/mq$b;->a:Lcom/vungle/publisher/mm$a;

    const-string v1, "webViewRootContentIndexFile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/mm$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/mm;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/vungle/publisher/oa;->f:Lcom/vungle/publisher/mq;

    .line 50
    const-string v0, "adId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/oa;->h:Ljava/lang/String;

    .line 56
    :cond_0
    :goto_1
    return-void

    .line 49
    :cond_1
    const-string v1, "webViewRootContentString"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/vungle/publisher/mq$b;->b:Lcom/vungle/publisher/mt$a;

    const-string v1, "webViewRootContentString"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/mt$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/mt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "VungleAd"

    const-string v2, "exception in onCreate"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 66
    .local p0, "this":Lcom/vungle/publisher/oa;, "Lcom/vungle/publisher/oa<TW;>;"
    const/4 v1, 0x0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/oa;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/publisher/oa;->i:Lcom/vungle/publisher/a;

    invoke-virtual {p0, v0, v2}, Lcom/vungle/publisher/oa;->a(Ljava/lang/String;Lcom/vungle/publisher/a;)Lcom/vungle/publisher/ny;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/publisher/oa;->g:Lcom/vungle/publisher/ny;

    .line 69
    iget-object v0, p0, Lcom/vungle/publisher/oa;->f:Lcom/vungle/publisher/mq;

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/ny;->a(Lcom/vungle/publisher/mq;)V

    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/oa;->j:Lcom/vungle/publisher/qs;

    invoke-interface {v0, v2}, Lcom/vungle/publisher/qs;->a(Landroid/webkit/WebView;)V

    .line 72
    new-instance v0, Lcom/vungle/publisher/ahi$1;

    invoke-direct {v0}, Lcom/vungle/publisher/ahi$1;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/vungle/publisher/oa;->m:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {v2}, Lcom/vungle/publisher/ny;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 76
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 77
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 80
    :goto_1
    const-string v2, "VungleAd"

    const-string v3, "exception in onCreateView"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "VungleAd"

    const-string v1, "webview fragment onDestroy()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-super {p0}, Lcom/vungle/publisher/nx;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/vungle/publisher/oa;->g:Lcom/vungle/publisher/ny;

    invoke-virtual {v0}, Lcom/vungle/publisher/ny;->destroy()V

    .line 92
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    .local p0, "this":Lcom/vungle/publisher/oa;, "Lcom/vungle/publisher/oa<TW;>;"
    invoke-super {p0, p1}, Lcom/vungle/publisher/nx;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/vungle/publisher/oa;->f:Lcom/vungle/publisher/mq;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/mq;->a(Landroid/os/Bundle;)V

    .line 98
    const-string v0, "adId"

    iget-object v1, p0, Lcom/vungle/publisher/oa;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method
