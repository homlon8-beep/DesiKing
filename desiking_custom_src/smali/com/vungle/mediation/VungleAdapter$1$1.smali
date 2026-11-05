.class Lcom/vungle/mediation/VungleAdapter$1$1;
.super Ljava/lang/Object;
.source "VungleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/mediation/VungleAdapter$1;->onAdEnd(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/mediation/VungleAdapter$1;

.field final synthetic val$wasSuccessfulView:Z


# direct methods
.method constructor <init>(Lcom/vungle/mediation/VungleAdapter$1;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/vungle/mediation/VungleAdapter$1;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vungle/mediation/VungleAdapter$1$1;->this$1:Lcom/vungle/mediation/VungleAdapter$1;

    iput-boolean p2, p0, Lcom/vungle/mediation/VungleAdapter$1$1;->val$wasSuccessfulView:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/vungle/mediation/VungleAdapter$1$1;->val$wasSuccessfulView:Z

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/vungle/mediation/VungleAdapter$1$1;->this$1:Lcom/vungle/mediation/VungleAdapter$1;

    iget-object v0, v0, Lcom/vungle/mediation/VungleAdapter$1;->this$0:Lcom/vungle/mediation/VungleAdapter;

    invoke-static {v0}, Lcom/vungle/mediation/VungleAdapter;->access$000(Lcom/vungle/mediation/VungleAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/mediation/VungleAdapter$1$1;->this$1:Lcom/vungle/mediation/VungleAdapter$1;

    iget-object v1, v1, Lcom/vungle/mediation/VungleAdapter$1;->this$0:Lcom/vungle/mediation/VungleAdapter;

    new-instance v2, Lcom/vungle/mediation/VungleAdapter$VungleReward;

    iget-object v3, p0, Lcom/vungle/mediation/VungleAdapter$1$1;->this$1:Lcom/vungle/mediation/VungleAdapter$1;

    iget-object v3, v3, Lcom/vungle/mediation/VungleAdapter$1;->this$0:Lcom/vungle/mediation/VungleAdapter;

    const-string v4, "vungle"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/vungle/mediation/VungleAdapter$VungleReward;-><init>(Lcom/vungle/mediation/VungleAdapter;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onRewarded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;Lcom/google/android/gms/ads/reward/RewardItem;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/vungle/mediation/VungleAdapter$1$1;->this$1:Lcom/vungle/mediation/VungleAdapter$1;

    iget-object v0, v0, Lcom/vungle/mediation/VungleAdapter$1;->this$0:Lcom/vungle/mediation/VungleAdapter;

    invoke-static {v0}, Lcom/vungle/mediation/VungleAdapter;->access$000(Lcom/vungle/mediation/VungleAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/mediation/VungleAdapter$1$1;->this$1:Lcom/vungle/mediation/VungleAdapter$1;

    iget-object v1, v1, Lcom/vungle/mediation/VungleAdapter$1;->this$0:Lcom/vungle/mediation/VungleAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClosed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 56
    return-void
.end method
