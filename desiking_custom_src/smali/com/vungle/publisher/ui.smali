.class public final Lcom/vungle/publisher/ui;
.super Landroid/widget/RelativeLayout;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ui$1;,
        Lcom/vungle/publisher/ui$a;,
        Lcom/vungle/publisher/ui$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/vungle/publisher/ui;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/vungle/publisher/ui;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/vungle/publisher/ui;->a:Landroid/widget/ImageView;

    return-object p1
.end method


# virtual methods
.method public final setCloseVisibility(Lcom/vungle/publisher/ui$b;)V
    .locals 3
    .param p1, "visibility"    # Lcom/vungle/publisher/ui$b;

    .prologue
    const/4 v2, 0x0

    .line 33
    sget-object v0, Lcom/vungle/publisher/ui$1;->a:[I

    invoke-virtual {p1}, Lcom/vungle/publisher/ui$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v0, p0, Lcom/vungle/publisher/ui;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    invoke-virtual {p0, v2}, Lcom/vungle/publisher/ui;->setVisibility(I)V

    goto :goto_0

    .line 39
    :pswitch_1
    iget-object v0, p0, Lcom/vungle/publisher/ui;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    invoke-virtual {p0, v2}, Lcom/vungle/publisher/ui;->setVisibility(I)V

    goto :goto_0

    .line 43
    :pswitch_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ui;->setVisibility(I)V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
