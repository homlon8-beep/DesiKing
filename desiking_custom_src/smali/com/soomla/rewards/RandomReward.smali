.class public Lcom/soomla/rewards/RandomReward;
.super Lcom/soomla/rewards/Reward;
.source "RandomReward.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA RandomReward"


# instance fields
.field private mLastGivenReward:Lcom/soomla/rewards/Reward;

.field private mRewards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/soomla/rewards/Reward;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "rewardId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/rewards/Reward;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, "rewards":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/rewards/Reward;>;"
    invoke-direct {p0, p1, p2}, Lcom/soomla/rewards/Reward;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    :cond_0
    const-string v0, "this reward doesn\'t make sense without items"

    .line 58
    .local v0, "error":Ljava/lang/String;
    const-string v1, "SOOMLA RandomReward"

    const-string v2, "this reward doesn\'t make sense without items"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v0    # "error":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lcom/soomla/rewards/RandomReward;->mRewards:Ljava/util/List;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/soomla/rewards/Reward;-><init>(Lorg/json/JSONObject;)V

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/soomla/rewards/RandomReward;->mRewards:Ljava/util/List;

    .line 75
    const-string v4, "rewards"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 76
    .local v3, "rewardsArr":Lorg/json/JSONArray;
    if-nez v3, :cond_0

    .line 77
    const-string v4, "SOOMLA RandomReward"

    const-string v5, "reward has no meaning without children"

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v3, Lorg/json/JSONArray;

    .end local v3    # "rewardsArr":Lorg/json/JSONArray;
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 83
    .restart local v3    # "rewardsArr":Lorg/json/JSONArray;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 84
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 85
    .local v2, "rewardJSON":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/soomla/rewards/Reward;->fromJSONObject(Lorg/json/JSONObject;)Lcom/soomla/rewards/Reward;

    move-result-object v1

    .line 86
    .local v1, "reward":Lcom/soomla/rewards/Reward;
    if-eqz v1, :cond_1

    .line 87
    iget-object v4, p0, Lcom/soomla/rewards/RandomReward;->mRewards:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "reward":Lcom/soomla/rewards/Reward;
    .end local v2    # "rewardJSON":Lorg/json/JSONObject;
    :cond_2
    return-void
.end method


# virtual methods
.method public getRewards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/rewards/Reward;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/soomla/rewards/RandomReward;->mRewards:Ljava/util/List;

    return-object v0
.end method

.method protected giveInner()Z
    .locals 9

    .prologue
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, "canBeGivenRewards":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/rewards/Reward;>;"
    iget-object v6, p0, Lcom/soomla/rewards/RandomReward;->mRewards:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/soomla/rewards/Reward;

    .line 122
    .local v5, "reward":Lcom/soomla/rewards/Reward;
    invoke-virtual {v5}, Lcom/soomla/rewards/Reward;->canGive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    .end local v5    # "reward":Lcom/soomla/rewards/Reward;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 128
    const-string v6, "SOOMLA RandomReward"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No more rewards to give in this Random Reward: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/soomla/rewards/RandomReward;->mID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v6, 0x0

    .line 138
    :goto_1
    return v6

    .line 132
    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 133
    .local v3, "rand":Ljava/util/Random;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 134
    .local v2, "n":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/soomla/rewards/Reward;

    .line 135
    .local v4, "randomReward":Lcom/soomla/rewards/Reward;
    invoke-virtual {v4}, Lcom/soomla/rewards/Reward;->give()Z

    .line 136
    iput-object v4, p0, Lcom/soomla/rewards/RandomReward;->mLastGivenReward:Lcom/soomla/rewards/Reward;

    .line 138
    const/4 v6, 0x1

    goto :goto_1
.end method

.method protected takeInner()Z
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/soomla/rewards/RandomReward;->mLastGivenReward:Lcom/soomla/rewards/Reward;

    if-nez v1, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/soomla/rewards/RandomReward;->mLastGivenReward:Lcom/soomla/rewards/Reward;

    invoke-virtual {v1}, Lcom/soomla/rewards/Reward;->take()Z

    move-result v0

    .line 149
    .local v0, "taken":Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/soomla/rewards/RandomReward;->mLastGivenReward:Lcom/soomla/rewards/Reward;

    goto :goto_0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 99
    invoke-super {p0}, Lcom/soomla/rewards/Reward;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 101
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 102
    .local v4, "rewardsArr":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/soomla/rewards/RandomReward;->mRewards:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/soomla/rewards/Reward;

    .line 103
    .local v3, "reward":Lcom/soomla/rewards/Reward;
    invoke-virtual {v3}, Lcom/soomla/rewards/Reward;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "reward":Lcom/soomla/rewards/Reward;
    .end local v4    # "rewardsArr":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "SOOMLA RandomReward"

    const-string v6, "An error occurred while generating JSON object."

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v2

    .line 105
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "rewardsArr":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    const-string v5, "rewards"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
