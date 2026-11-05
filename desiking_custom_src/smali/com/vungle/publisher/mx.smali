.class public final Lcom/vungle/publisher/mx;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field public a:Landroid/media/AudioManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/mx;->b:Z

    .line 19
    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/vungle/publisher/mx;->a()I

    move-result v0

    .line 35
    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    int-to-float v0, v0

    div-float v0, p1, v0

    goto :goto_0
.end method

.method public final a()I
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/mx;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lcom/vungle/publisher/mx;->a:Landroid/media/AudioManager;

    const/4 v2, 0x3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vungle/publisher/mx;->a:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/vungle/publisher/mx;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/mx;->a(F)F

    move-result v0

    return v0
.end method

.method public final onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 64
    packed-switch p1, :pswitch_data_0

    .line 74
    :goto_0
    :pswitch_0
    const-string v0, "VungleDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audio focus changed to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vungle/publisher/mx;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", with focusChange code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 66
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/mx;->b:Z

    goto :goto_0

    .line 71
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/mx;->b:Z

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
