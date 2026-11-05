.class public final Lcom/vungle/publisher/pc;
.super Lcom/vungle/publisher/pf;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/pc$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:Lcom/vungle/publisher/mx;

.field c:Lcom/vungle/publisher/rq;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/vungle/publisher/pf;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/vungle/publisher/pc;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/pc;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/vungle/publisher/pc;->d:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/pc;Lcom/vungle/publisher/mx;)Lcom/vungle/publisher/mx;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/vungle/publisher/pc;->b:Lcom/vungle/publisher/mx;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/pc;Lcom/vungle/publisher/rq;)Lcom/vungle/publisher/rq;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/vungle/publisher/pc;->c:Lcom/vungle/publisher/rq;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/pc;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/vungle/publisher/pc;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/vungle/publisher/pc;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/vungle/publisher/pc;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method final a(Z)V
    .locals 3

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/vungle/publisher/pc;->c:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/bn;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vungle/publisher/bn;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/pc;->c:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/bn;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/vungle/publisher/bn;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/vungle/publisher/pc;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/pc;->b:Lcom/vungle/publisher/mx;

    invoke-virtual {v0}, Lcom/vungle/publisher/mx;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/vungle/publisher/pc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/pc;->e:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/pc;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/pc;->d:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method final setAndCacheSoundEnabled(Z)V
    .locals 0
    .param p1, "isSoundEnabled"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/vungle/publisher/pc;->a:Z

    .line 72
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/pc;->setSoundEnabled(Z)V

    .line 73
    return-void
.end method

.method final setSoundEnabled(Z)V
    .locals 1
    .param p1, "isSoundEnabled"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/pc;->b:Lcom/vungle/publisher/mx;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/mx;->a(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/vungle/publisher/pc;->b()V

    .line 78
    return-void
.end method

.method final setVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/pc;->b:Lcom/vungle/publisher/mx;

    iget-object v0, v0, Lcom/vungle/publisher/mx;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 86
    invoke-virtual {p0}, Lcom/vungle/publisher/pc;->b()V

    .line 87
    return-void
.end method
