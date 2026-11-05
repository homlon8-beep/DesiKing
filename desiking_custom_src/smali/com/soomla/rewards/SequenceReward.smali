.class public Lcom/soomla/rewards/SequenceReward;
.super Lcom/soomla/rewards/Reward;
.source "SequenceReward.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA SequenceReward"


# instance fields
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
    .line 49
    .local p3, "rewards":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/rewards/Reward;>;"
    invoke-direct {p0, p1, p2}, Lcom/soomla/rewards/Reward;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    :cond_0
    const-string v0, "this reward doesn\'t make sense without items"

    .line 53
    .local v0, "error":Ljava/lang/String;
    const-string v1, "SOOMLA SequenceReward"

    const-string v2, "this reward doesn\'t make sense without items"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v0    # "error":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lcom/soomla/rewards/SequenceReward;->mRewards:Ljava/util/List;

    .line 57
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
    .line 67
    invoke-direct {p0, p1}, Lcom/soomla/rewards/Reward;-><init>(Lorg/json/JSONObject;)V

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/soomla/rewards/SequenceReward;->mRewards:Ljava/util/List;

    .line 70
    const-string v4, "rewards"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 71
    .local v3, "rewardsArr":Lorg/json/JSONArray;
    if-nez v3, :cond_0

    .line 72
    const-string v4, "SOOMLA SequenceReward"

    const-string v5, "reward has no meaning without children"

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v3, Lorg/json/JSONArray;

    .end local v3    # "rewardsArr":Lorg/json/JSONArray;
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 76
    .restart local v3    # "rewardsArr":Lorg/json/JSONArray;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 77
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 78
    .local v2, "rewardJSON":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/soomla/rewards/SequenceReward;->fromJSONObject(Lorg/json/JSONObject;)Lcom/soomla/rewards/Reward;

    move-result-object v1

    .line 79
    .local v1, "reward":Lcom/soomla/rewards/Reward;
    if-eqz v1, :cond_1

    .line 80
    iget-object v4, p0, Lcom/soomla/rewards/SequenceReward;->mRewards:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "reward":Lcom/soomla/rewards/Reward;
    .end local v2    # "rewardJSON":Lorg/json/JSONObject;
    :cond_2
    return-void
.end method


# virtual methods
.method public forceNextRewardToGive(Lcom/soomla/rewards/Reward;)Z
    .locals 3
    .param p1, "reward"    # Lcom/soomla/rewards/Reward;

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/soomla/rewards/SequenceReward;->mRewards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/soomla/rewards/SequenceReward;->mRewards:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/soomla/rewards/Reward;

    invoke-virtual {v1}, Lcom/soomla/rewards/Reward;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/soomla/rewards/Reward;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/soomla/rewards/SequenceReward;->getID()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Lcom/soomla/data/RewardStorage;->setLastSeqIdxGiven(Ljava/lang/String;I)V

    .line 140
    const/4 v1, 0x1

    .line 143
    :goto_1
    return v1

    .line 137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getLastGivenReward()Lcom/soomla/rewards/Reward;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/soomla/rewards/SequenceReward;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/soomla/data/RewardStorage;->getLastSeqIdxGiven(Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 114
    const/4 v1, 0x0

    .line 116
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/soomla/rewards/SequenceReward;->mRewards:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/soomla/rewards/Reward;

    goto :goto_0
.end method

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
    .line 176
    iget-object v0, p0, Lcom/soomla/rewards/SequenceReward;->mRewards:Ljava/util/List;

    return-object v0
.end method

.method protected giveInner()Z
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/soomla/rewards/SequenceReward;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/soomla/data/RewardStorage;->getLastSeqIdxGiven(Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, "idx":I
    iget-object v1, p0, Lcom/soomla/rewards/SequenceReward;->mRewards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 157
    const/4 v1, 0x0

    .line 160
    :goto_0
    return v1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/soomla/rewards/SequenceReward;->getID()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/soomla/data/RewardStorage;->setLastSeqIdxGiven(Ljava/lang/String;I)V

    .line 160
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasMoreToGive()Z
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/soomla/rewards/SequenceReward;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/soomla/data/RewardStorage;->getLastSeqIdxGiven(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/soomla/rewards/SequenceReward;->mRewards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected takeInner()Z
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/soomla/rewards/SequenceReward;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/soomla/data/RewardStorage;->getLastSeqIdxGiven(Ljava/lang/String;)I

    move-result v0

    .line 166
    .local v0, "idx":I
    if-gtz v0, :cond_0

    .line 167
    const/4 v1, 0x0

    .line 170
    :goto_0
    return v1

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/soomla/rewards/SequenceReward;->getID()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Lcom/soomla/data/RewardStorage;->setLastSeqIdxGiven(Ljava/lang/String;I)V

    .line 170
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 92
    invoke-super {p0}, Lcom/soomla/rewards/Reward;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 94
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 95
    .local v4, "rewardsArr":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/soomla/rewards/SequenceReward;->mRewards:Ljava/util/List;

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

    .line 96
    .local v3, "reward":Lcom/soomla/rewards/Reward;
    invoke-virtual {v3}, Lcom/soomla/rewards/Reward;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "reward":Lcom/soomla/rewards/Reward;
    .end local v4    # "rewardsArr":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "SOOMLA SequenceReward"

    const-string v6, "An error occurred while generating JSON object."

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v2

    .line 98
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
