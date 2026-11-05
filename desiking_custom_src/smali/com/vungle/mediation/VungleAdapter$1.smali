.class Lcom/vungle/mediation/VungleAdapter$1;
.super Lcom/vungle/mediation/VungleListener;
.source "VungleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/mediation/VungleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/mediation/VungleAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/mediation/VungleAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vungle/mediation/VungleAdapter;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vungle/mediation/VungleAdapter$1;->this$0:Lcom/vungle/mediation/VungleAdapter;

    invoke-direct {p0}, Lcom/vungle/mediation/VungleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdAvailable()V
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/vungle/mediation/VungleAdapter$1;->this$0:Lcom/vungle/mediation/VungleAdapter;

    invoke-static {v1}, Lcom/vungle/mediation/VungleAdapter;->access$000(Lcom/vungle/mediation/VungleAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/vungle/mediation/VungleAdapter$1$3;

    invoke-direct {v1, p0}, Lcom/vungle/mediation/VungleAdapter$1$3;-><init>(Lcom/vungle/mediation/VungleAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onAdEnd(ZZ)V
    .locals 2
    .param p1, "wasSuccessfulView"    # Z
    .param p2, "wasCallToActionClicked"    # Z

    .prologue
    .line 46
    iget-object v1, p0, Lcom/vungle/mediation/VungleAdapter$1;->this$0:Lcom/vungle/mediation/VungleAdapter;

    invoke-static {v1}, Lcom/vungle/mediation/VungleAdapter;->access$000(Lcom/vungle/mediation/VungleAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/vungle/mediation/VungleAdapter$1$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/mediation/VungleAdapter$1$1;-><init>(Lcom/vungle/mediation/VungleAdapter$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onAdStart()V
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/vungle/mediation/VungleAdapter$1;->this$0:Lcom/vungle/mediation/VungleAdapter;

    invoke-static {v1}, Lcom/vungle/mediation/VungleAdapter;->access$000(Lcom/vungle/mediation/VungleAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 65
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/vungle/mediation/VungleAdapter$1$2;

    invoke-direct {v1, p0}, Lcom/vungle/mediation/VungleAdapter$1$2;-><init>(Lcom/vungle/mediation/VungleAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method
