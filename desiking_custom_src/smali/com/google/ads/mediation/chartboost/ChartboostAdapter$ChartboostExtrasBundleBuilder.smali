.class public final Lcom/google/ads/mediation/chartboost/ChartboostAdapter$ChartboostExtrasBundleBuilder;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/chartboost/ChartboostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChartboostExtrasBundleBuilder"
.end annotation


# static fields
.field private static final KEY_FRAMEWORK:Ljava/lang/String; = "framework"

.field private static final KEY_FRAMEWORK_VERSION:Ljava/lang/String; = "framework_version"


# instance fields
.field private cbFramework:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field private cbFrameworkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 477
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 478
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "framework"

    iget-object v2, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$ChartboostExtrasBundleBuilder;->cbFramework:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 479
    const-string v1, "framework_version"

    iget-object v2, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$ChartboostExtrasBundleBuilder;->cbFrameworkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-object v0
.end method

.method public setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)Lcom/google/ads/mediation/chartboost/ChartboostAdapter$ChartboostExtrasBundleBuilder;
    .locals 0
    .param p1, "framework"    # Lcom/chartboost/sdk/Chartboost$CBFramework;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$ChartboostExtrasBundleBuilder;->cbFramework:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 472
    iput-object p2, p0, Lcom/google/ads/mediation/chartboost/ChartboostAdapter$ChartboostExtrasBundleBuilder;->cbFrameworkVersion:Ljava/lang/String;

    .line 473
    return-object p0
.end method
