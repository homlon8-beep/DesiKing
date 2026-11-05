.class public final Lcom/vungle/publisher/pl$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/pl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ahi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)Lcom/vungle/publisher/pl;
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 58
    new-instance v0, Lcom/vungle/publisher/pl;

    invoke-direct {v0, p1}, Lcom/vungle/publisher/pl;-><init>(Landroid/content/Context;)V

    .line 59
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/pl;->setGravity(I)V

    .line 60
    new-instance v1, Lcom/vungle/publisher/pf;

    invoke-direct {v1, p1}, Lcom/vungle/publisher/pf;-><init>(Landroid/content/Context;)V

    .line 61
    iget-object v2, p0, Lcom/vungle/publisher/pl$a;->a:Lcom/vungle/publisher/ahi;

    const-string v3, "vg_privacy.png"

    invoke-virtual {v2, v1, v3}, Lcom/vungle/publisher/ahi;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 62
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    const-string v3, "privacy"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 65
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-virtual {v2, v6, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 68
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/pl;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {v0, v2}, Lcom/vungle/publisher/pl;->addView(Landroid/view/View;)V

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/vungle/publisher/pl$a;->b:Lcom/vungle/publisher/rq;

    invoke-static {v0, v1}, Lcom/vungle/publisher/pl;->a(Lcom/vungle/publisher/pl;Lcom/vungle/publisher/rq;)Lcom/vungle/publisher/rq;

    .line 77
    invoke-static {v0, v2}, Lcom/vungle/publisher/pl;->a(Lcom/vungle/publisher/pl;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 78
    invoke-virtual {v0, v5}, Lcom/vungle/publisher/pl;->setVisibility(I)V

    .line 79
    return-object v0

    .line 72
    :cond_0
    invoke-virtual {v0, v2}, Lcom/vungle/publisher/pl;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/pl;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
