.class Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;
.super Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/chartboost/ChartboostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-direct {p0}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didCacheRewardedVideo(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$200(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    .line 163
    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$000(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdLoaded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 165
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$202(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;Z)Z

    .line 167
    :cond_0
    return-void
.end method

.method public didClickRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didClickRewardedVideo(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClicked(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 196
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdLeftApplication(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 199
    :cond_0
    return-void
.end method

.method public didCompleteRewardedVideo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "reward"    # I

    .prologue
    .line 203
    invoke-super {p0, p1, p2}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 204
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    new-instance v2, Lcom/google/ads/mediation/chartboost/ChartboostReward;

    invoke-direct {v2, p2}, Lcom/google/ads/mediation/chartboost/ChartboostReward;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onRewarded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;Lcom/google/android/gms/ads/reward/RewardItem;)V

    .line 208
    :cond_0
    return-void
.end method

.method public didDismissRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didDismissRewardedVideo(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdClosed(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 187
    :cond_0
    return-void
.end method

.method public didDisplayRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didDisplayRewardedVideo(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdOpened(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 217
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onVideoStarted(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 219
    :cond_0
    return-void
.end method

.method public didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 173
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$200(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    .line 174
    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$000(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    .line 176
    invoke-static {p2}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$300(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)I

    move-result v2

    .line 175
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;I)V

    .line 177
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$202(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;Z)Z

    .line 179
    :cond_0
    return-void
.end method

.method public didInitialize()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didInitialize()V

    .line 152
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$500(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$502(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;Z)Z

    .line 154
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$400(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdListener;->onInitializationSucceeded(Lcom/google/android/gms/ads/reward/mediation/MediationRewardedVideoAdAdapter;)V

    .line 157
    :cond_0
    return-void
.end method

.method public getChartboostParams()Lcom/google/ads/mediation/chartboost/ChartboostParams;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$2;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$000(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v0

    return-object v0
.end method
