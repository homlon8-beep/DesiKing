.class Lcom/google/unity/ads/NativeExpressAd$1;
.super Ljava/lang/Object;
.source "NativeExpressAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/NativeExpressAd;->create(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/NativeExpressAd;

.field final synthetic val$adSize:Lcom/google/android/gms/ads/AdSize;

.field final synthetic val$positionCode:I

.field final synthetic val$publisherId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/NativeExpressAd;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/unity/ads/NativeExpressAd;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/unity/ads/NativeExpressAd$1;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    iput-object p2, p0, Lcom/google/unity/ads/NativeExpressAd$1;->val$publisherId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/unity/ads/NativeExpressAd$1;->val$adSize:Lcom/google/android/gms/ads/AdSize;

    iput p4, p0, Lcom/google/unity/ads/NativeExpressAd$1;->val$positionCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 73
    iget-object v1, p0, Lcom/google/unity/ads/NativeExpressAd$1;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    new-instance v2, Lcom/google/android/gms/ads/NativeExpressAdView;

    iget-object v3, p0, Lcom/google/unity/ads/NativeExpressAd$1;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    invoke-static {v3}, Lcom/google/unity/ads/NativeExpressAd;->access$100(Lcom/google/unity/ads/NativeExpressAd;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/NativeExpressAdView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/google/unity/ads/NativeExpressAd;->access$002(Lcom/google/unity/ads/NativeExpressAd;Lcom/google/android/gms/ads/NativeExpressAdView;)Lcom/google/android/gms/ads/NativeExpressAdView;

    .line 76
    iget-object v1, p0, Lcom/google/unity/ads/NativeExpressAd$1;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    invoke-static {v1}, Lcom/google/unity/ads/NativeExpressAd;->access$000(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/android/gms/ads/NativeExpressAdView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->setBackgroundColor(I)V

    .line 77
    iget-object v1, p0, Lcom/google/unity/ads/NativeExpressAd$1;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    invoke-static {v1}, Lcom/google/unity/ads/NativeExpressAd;->access$000(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/android/gms/ads/NativeExpressAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/unity/ads/NativeExpressAd$1;->val$publisherId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/google/unity/ads/NativeExpressAd$1;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    invoke-static {v1}, Lcom/google/unity/ads/NativeExpressAd;->access$000(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/android/gms/ads/NativeExpressAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/unity/ads/NativeExpressAd$1;->val$adSize:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 79
    iget-object v1, p0, Lcom/google/unity/ads/NativeExpressAd$1;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    invoke-static {v1}, Lcom/google/unity/ads/NativeExpressAd;->access$000(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/android/gms/ads/NativeExpressAdView;

    move-result-object v1

    new-instance v2, Lcom/google/unity/ads/NativeExpressAd$1$1;

    invoke-direct {v2, p0}, Lcom/google/unity/ads/NativeExpressAd$1$1;-><init>(Lcom/google/unity/ads/NativeExpressAd$1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 115
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v0, "adParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/google/unity/ads/NativeExpressAd$1;->val$positionCode:I

    invoke-static {v1}, Lcom/google/unity/ads/PluginUtils;->getLayoutGravityForPositionCode(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    iget-object v1, p0, Lcom/google/unity/ads/NativeExpressAd$1;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    invoke-static {v1}, Lcom/google/unity/ads/NativeExpressAd;->access$100(Lcom/google/unity/ads/NativeExpressAd;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/unity/ads/NativeExpressAd$1;->this$0:Lcom/google/unity/ads/NativeExpressAd;

    invoke-static {v2}, Lcom/google/unity/ads/NativeExpressAd;->access$000(Lcom/google/unity/ads/NativeExpressAd;)Lcom/google/android/gms/ads/NativeExpressAdView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    return-void
.end method
