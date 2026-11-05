.class Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;
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
    .line 78
    iput-object p1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-direct {p0}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didCacheInterstitial(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$100(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$200(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    .line 89
    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$000(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$100(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 91
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$202(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;Z)Z

    .line 93
    :cond_0
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didClickInterstitial(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$100(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$100(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$100(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 126
    :cond_0
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didDismissInterstitial(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$100(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$100(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 113
    :cond_0
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didDisplayInterstitial(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$100(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$100(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    .line 134
    :cond_0
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/google/ads/mediation/chartboost/AbstractChartboostAdapterDelegate;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 99
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$100(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$200(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    .line 100
    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$000(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/mediation/chartboost/ChartboostParams;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$100(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    .line 102
    invoke-static {p2}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$300(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)I

    move-result v2

    .line 101
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    .line 103
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$202(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;Z)Z

    .line 105
    :cond_0
    return-void
.end method

.method public getChartboostParams()Lcom/google/ads/mediation/chartboost/ChartboostParams;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$1;->this$0:Lcom/google/ads/mediation/chartboost/ChartboostAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/chartboost/ChartboostAdapter;->access$000(Lcom/google/ads/mediation/chartboost/ChartboostAdapter;)Lcom/google/ads/mediation/chartboost/ChartboostParams;

    move-result-object v0

    return-object v0
.end method
