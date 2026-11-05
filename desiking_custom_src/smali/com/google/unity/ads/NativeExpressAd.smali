.class public Lcom/google/unity/ads/NativeExpressAd;
.super Ljava/lang/Object;
.source "NativeExpressAd.java"


# instance fields
.field private mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

.field private mUnityListener:Lcom/google/unity/ads/UnityAdListener;

.field private mUnityPlayerActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/unity/ads/UnityAdListener;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/google/unity/ads/UnityAdListener;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/android/gms/ads/NativeExpressAdView;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/NativeExpressAd;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/unity/ads/NativeExpressAd;Lcom/google/android/gms/ads/NativeExpressAdView;)Lcom/google/android/gms/ads/NativeExpressAdView;
    .locals 0
    .param p0, "x0"    # Lcom/google/unity/ads/NativeExpressAd;
    .param p1, "x1"    # Lcom/google/android/gms/ads/NativeExpressAdView;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/unity/ads/NativeExpressAd;->mAdView:Lcom/google/android/gms/ads/NativeExpressAdView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/unity/ads/NativeExpressAd;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/NativeExpressAd;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/unity/ads/UnityAdListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/unity/ads/NativeExpressAd;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityListener:Lcom/google/unity/ads/UnityAdListener;

    return-object v0
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;I)V
    .locals 2
    .param p1, "publisherId"    # Ljava/lang/String;
    .param p2, "adSize"    # Lcom/google/android/gms/ads/AdSize;
    .param p3, "positionCode"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/NativeExpressAd$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/unity/ads/NativeExpressAd$1;-><init>(Lcom/google/unity/ads/NativeExpressAd;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/NativeExpressAd$6;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/NativeExpressAd$6;-><init>(Lcom/google/unity/ads/NativeExpressAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/NativeExpressAd$5;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/NativeExpressAd$5;-><init>(Lcom/google/unity/ads/NativeExpressAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/google/android/gms/ads/AdRequest;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/NativeExpressAd$2;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/NativeExpressAd$2;-><init>(Lcom/google/unity/ads/NativeExpressAd;Lcom/google/android/gms/ads/AdRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public setAdSize(Lcom/google/android/gms/ads/AdSize;)V
    .locals 2
    .param p1, "adSize"    # Lcom/google/android/gms/ads/AdSize;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/NativeExpressAd$3;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/NativeExpressAd$3;-><init>(Lcom/google/unity/ads/NativeExpressAd;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/unity/ads/NativeExpressAd;->mUnityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/NativeExpressAd$4;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/NativeExpressAd$4;-><init>(Lcom/google/unity/ads/NativeExpressAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method
