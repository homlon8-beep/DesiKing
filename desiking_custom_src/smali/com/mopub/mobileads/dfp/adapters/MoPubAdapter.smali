.class public final Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;
.super Ljava/lang/Object;
.source "MoPubAdapter.java"

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;,
        Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerAdapter",
        "<",
        "Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;",
        "Lcom/mopub/mobileads/dfp/adapters/MoPubServerParameters;",
        ">;",
        "Lcom/google/ads/mediation/MediationInterstitialAdapter",
        "<",
        "Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;",
        "Lcom/mopub/mobileads/dfp/adapters/MoPubServerParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final MOPUB_NATIVE_CEVENT_VERSION:Ljava/lang/String; = "tp=dfp_custom_1.0"


# instance fields
.field private mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private mMoPubView:Lcom/mopub/mobileads/MoPubView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getKeywords(Lcom/google/ads/mediation/MediationAdRequest;)Ljava/lang/String;
    .locals 4
    .param p1, "mediationAdRequest"    # Lcom/google/ads/mediation/MediationAdRequest;

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v0, "keywordsBuilder":Ljava/lang/StringBuilder;
    const-string v1, "tp=dfp_custom_1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 133
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ",m_age:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ",m_birthday:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ",m_gender:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 133
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 134
    :cond_1
    const-string v1, ""

    goto :goto_1

    .line 135
    :cond_2
    const-string v1, ""

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 145
    iput-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 150
    iput-object v1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 152
    :cond_1
    return-void
.end method

.method public getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const-class v0, Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mopub/mobileads/dfp/adapters/MoPubServerParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    const-class v0, Lcom/mopub/mobileads/dfp/adapters/MoPubServerParameters;

    return-object v0
.end method

.method public bridge synthetic requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .locals 7

    .prologue
    .line 1
    move-object v3, p3

    check-cast v3, Lcom/mopub/mobileads/dfp/adapters/MoPubServerParameters;

    move-object v6, p6

    check-cast v6, Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/mopub/mobileads/dfp/adapters/MoPubServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;)V

    return-void
.end method

.method public requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/mopub/mobileads/dfp/adapters/MoPubServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/ads/mediation/MediationBannerListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "serverParameters"    # Lcom/mopub/mobileads/dfp/adapters/MoPubServerParameters;
    .param p4, "adSize"    # Lcom/google/ads/AdSize;
    .param p5, "mediationAdRequest"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p6, "extras"    # Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;

    .prologue
    .line 91
    new-instance v0, Lcom/mopub/mobileads/MoPubView;

    invoke-direct {v0, p2}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    new-instance v1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$MBannerListener;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/ads/mediation/MediationBannerListener;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 93
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p3, Lcom/mopub/mobileads/dfp/adapters/MoPubServerParameters;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p5}, Lcom/google/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setTesting(Z)V

    .line 101
    :cond_0
    invoke-virtual {p5}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p5}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setLocation(Landroid/location/Location;)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p0, p5}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/ads/mediation/MediationAdRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setKeywords(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 107
    return-void
.end method

.method public bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .locals 6

    .prologue
    .line 1
    move-object v3, p3

    check-cast v3, Lcom/mopub/mobileads/dfp/adapters/MoPubServerParameters;

    move-object v5, p5

    check-cast v5, Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/mopub/mobileads/dfp/adapters/MoPubServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;)V

    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/mopub/mobileads/dfp/adapters/MoPubServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/ads/mediation/MediationInterstitialListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "serverParameters"    # Lcom/mopub/mobileads/dfp/adapters/MoPubServerParameters;
    .param p4, "mediationAdRequest"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p5, "extras"    # Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;

    .prologue
    .line 114
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    .line 115
    iget-object v1, p3, Lcom/mopub/mobileads/dfp/adapters/MoPubServerParameters;->adUnitId:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 114
    iput-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 117
    new-instance v1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter$mMediationInterstitialListener;-><init>(Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;Lcom/google/ads/mediation/MediationInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 120
    invoke-virtual {p4}, Lcom/google/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setTesting(Z)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {p0, p4}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->getKeywords(Lcom/google/ads/mediation/MediationAdRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 126
    return-void
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->mMoPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v0, "Mopub"

    const-string v1, "Interstitial was not ready. Unable to load the interstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
