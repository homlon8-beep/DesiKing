.class public Lcom/google/ads/mediation/chartboost/ChartboostParams;
.super Ljava/lang/Object;
.source "ChartboostParams.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private appSignature:Ljava/lang/String;

.field private cbFramework:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field private cbFrameworkVersion:Ljava/lang/String;

.field private cbLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "Default"

    iput-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostParams;->cbLocation:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostParams;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostParams;->appSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getFramework()Lcom/chartboost/sdk/Chartboost$CBFramework;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostParams;->cbFramework:Lcom/chartboost/sdk/Chartboost$CBFramework;

    return-object v0
.end method

.method public getFrameworkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostParams;->cbFrameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/ads/mediation/chartboost/ChartboostParams;->cbLocation:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/ads/mediation/chartboost/ChartboostParams;->appId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setAppSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/ads/mediation/chartboost/ChartboostParams;->appSignature:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;)V
    .locals 0
    .param p1, "framework"    # Lcom/chartboost/sdk/Chartboost$CBFramework;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/ads/mediation/chartboost/ChartboostParams;->cbFramework:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 98
    return-void
.end method

.method public setFrameworkVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/ads/mediation/chartboost/ChartboostParams;->cbFrameworkVersion:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/ads/mediation/chartboost/ChartboostParams;->cbLocation:Ljava/lang/String;

    .line 84
    return-void
.end method
