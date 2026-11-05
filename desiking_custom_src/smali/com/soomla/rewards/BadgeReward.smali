.class public Lcom/soomla/rewards/BadgeReward;
.super Lcom/soomla/rewards/Reward;
.source "BadgeReward.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA BadgeReward"


# instance fields
.field private mIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rewardId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/soomla/rewards/Reward;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rewardId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/soomla/rewards/Reward;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object p3, p0, Lcom/soomla/rewards/BadgeReward;->mIconUrl:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/soomla/rewards/Reward;-><init>(Lorg/json/JSONObject;)V

    .line 65
    :try_start_0
    const-string v1, "iconUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/rewards/BadgeReward;->mIconUrl:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ignored":Lorg/json/JSONException;
    const-string v1, "SOOMLA BadgeReward"

    const-string v2, "An error occurred while generating JSON object."

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/soomla/rewards/BadgeReward;->mIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected giveInner()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/soomla/rewards/BadgeReward;->mIconUrl:Ljava/lang/String;

    .line 109
    return-void
.end method

.method protected takeInner()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Lcom/soomla/rewards/Reward;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 80
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "iconUrl"

    iget-object v3, p0, Lcom/soomla/rewards/BadgeReward;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "SOOMLA BadgeReward"

    const-string v3, "An error occurred while generating JSON object."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
