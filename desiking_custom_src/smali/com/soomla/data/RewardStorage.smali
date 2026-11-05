.class public Lcom/soomla/data/RewardStorage;
.super Ljava/lang/Object;
.source "RewardStorage.java"


# static fields
.field private static final DB_KEY_REWARDS:Ljava/lang/String; = "soomla.rewards."

.field private static final TAG:Ljava/lang/String; = "SOOMLA RewardStorage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastGivenTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "rewardId"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p0}, Lcom/soomla/data/RewardStorage;->getLastGivenTimeMillis(Ljava/lang/String;)J

    move-result-wide v0

    .line 136
    .local v0, "timeMillis":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 137
    const/4 v2, 0x0

    .line 141
    :goto_0
    return-object v2

    .line 139
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 140
    .local v2, "toReturn":Ljava/util/Date;
    invoke-virtual {v2, v0, v1}, Ljava/util/Date;->setTime(J)V

    goto :goto_0
.end method

.method public static getLastGivenTimeMillis(Ljava/lang/String;)J
    .locals 4
    .param p0, "rewardId"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p0}, Lcom/soomla/data/RewardStorage;->keyRewardLastGiven(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/soomla/data/KeyValueStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const-wide/16 v2, 0x0

    .line 150
    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getLastSeqIdxGiven(Ljava/lang/String;)I
    .locals 3
    .param p0, "rewardId"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/soomla/data/RewardStorage;->keyRewardIdxSeqGiven(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/soomla/data/KeyValueStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "val":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 108
    const/4 v2, -0x1

    .line 110
    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private static getRewardIds()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getEncryptedKeys()Ljava/util/List;

    move-result-object v3

    .line 251
    .local v3, "kvKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v5, "rewardIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 269
    :cond_0
    return-object v5

    .line 256
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 257
    .local v2, "key":Ljava/lang/String;
    const-string v6, "soomla.rewards."

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 258
    const-string v6, "soomla.rewards."

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "rewardId":Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 260
    .local v0, "dotIndex":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_3

    .line 261
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 263
    :cond_3
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 264
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getRewardsState()Lorg/json/JSONObject;
    .locals 12

    .prologue
    .line 182
    invoke-static {}, Lcom/soomla/data/RewardStorage;->getRewardIds()Ljava/util/List;

    move-result-object v5

    .line 183
    .local v5, "rewardIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 185
    .local v7, "rewardsStateJSON":Lorg/json/JSONObject;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 186
    .local v4, "rewardId":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 188
    .local v6, "rewardValuesJSON":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {v4}, Lcom/soomla/data/RewardStorage;->getTimesGiven(Ljava/lang/String;)I

    move-result v8

    .line 189
    .local v8, "timesGiven":I
    const-string v9, "timesGiven"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    invoke-static {v4}, Lcom/soomla/data/RewardStorage;->getLastGivenTimeMillis(Ljava/lang/String;)J

    move-result-wide v2

    .line 192
    .local v2, "lastGiven":J
    const-string v9, "lastGiven"

    invoke-virtual {v6, v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 196
    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    .end local v2    # "lastGiven":J
    .end local v8    # "timesGiven":I
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lorg/json/JSONException;
    const-string v9, "SOOMLA RewardStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to set reward "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " state. error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "rewardId":Ljava/lang/String;
    .end local v6    # "rewardValuesJSON":Lorg/json/JSONObject;
    :cond_0
    return-object v7
.end method

.method public static getTimesGiven(Ljava/lang/String;)I
    .locals 3
    .param p0, "rewardId"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/soomla/data/RewardStorage;->keyRewardTimesGiven(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/soomla/data/KeyValueStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "val":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const/4 v2, 0x0

    .line 131
    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public static isRewardGiven(Ljava/lang/String;)Z
    .locals 1
    .param p0, "rewardId"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/soomla/data/RewardStorage;->getTimesGiven(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static keyRewardIdxSeqGiven(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "rewardId"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "seq.idx"

    invoke-static {p0, v0}, Lcom/soomla/data/RewardStorage;->keyRewards(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static keyRewardLastGiven(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "rewardId"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "lastGiven"

    invoke-static {p0, v0}, Lcom/soomla/data/RewardStorage;->keyRewards(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static keyRewardTimesGiven(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "rewardId"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v0, "timesGiven"

    invoke-static {p0, v0}, Lcom/soomla/data/RewardStorage;->keyRewards(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static keyRewards(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "rewardId"    # Ljava/lang/String;
    .param p1, "postfix"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "soomla.rewards."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resetRewardsState(Lorg/json/JSONObject;)Z
    .locals 13
    .param p0, "state"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x0

    .line 207
    if-nez p0, :cond_0

    .line 246
    :goto_0
    return v9

    .line 211
    :cond_0
    invoke-static {}, Lcom/soomla/data/RewardStorage;->getRewardIds()Ljava/util/List;

    move-result-object v7

    .line 214
    .local v7, "rewardIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 215
    .local v3, "keysIter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 216
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 217
    .local v6, "rewardId":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 219
    .local v2, "itemValuesJSON":Lorg/json/JSONObject;
    const-string v10, "timesGiven"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 220
    const-string v10, "timesGiven"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 221
    .local v8, "timesGiven":I
    invoke-static {v6, v8}, Lcom/soomla/data/RewardStorage;->resetTimesGiven(Ljava/lang/String;I)V

    .line 224
    .end local v8    # "timesGiven":I
    :cond_1
    const-string v10, "lastGiven"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 225
    const-string v10, "lastGiven"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 226
    .local v4, "lastGiven":J
    invoke-static {v6, v4, v5}, Lcom/soomla/data/RewardStorage;->setLastGivenTimeMillis(Ljava/lang/String;J)V

    .line 229
    .end local v4    # "lastGiven":J
    :cond_2
    invoke-interface {v7, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 232
    .end local v2    # "itemValuesJSON":Lorg/json/JSONObject;
    .end local v3    # "keysIter":Ljava/util/Iterator;
    .end local v6    # "rewardId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Lorg/json/JSONException;
    const-string v10, "SOOMLA RewardStorage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to set state for rewards. error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "keysIter":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 241
    .restart local v6    # "rewardId":Ljava/lang/String;
    invoke-static {v6}, Lcom/soomla/data/RewardStorage;->keyRewardTimesGiven(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/soomla/data/KeyValueStorage;->deleteKeyValue(Ljava/lang/String;)V

    .line 242
    invoke-static {v6}, Lcom/soomla/data/RewardStorage;->keyRewardLastGiven(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/soomla/data/KeyValueStorage;->deleteKeyValue(Ljava/lang/String;)V

    .line 243
    invoke-static {v6}, Lcom/soomla/data/RewardStorage;->keyRewardIdxSeqGiven(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/soomla/data/KeyValueStorage;->deleteKeyValue(Ljava/lang/String;)V

    goto :goto_2

    .line 246
    .end local v6    # "rewardId":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public static resetTimesGiven(Ljava/lang/String;I)V
    .locals 2
    .param p0, "rewardId"    # Ljava/lang/String;
    .param p1, "timesGiven"    # I

    .prologue
    .line 177
    invoke-static {p0}, Lcom/soomla/data/RewardStorage;->keyRewardTimesGiven(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "key":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/data/KeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public static setLastGivenTimeMillis(Ljava/lang/String;J)V
    .locals 3
    .param p0, "rewardId"    # Ljava/lang/String;
    .param p1, "lastGiven"    # J

    .prologue
    .line 155
    invoke-static {p0}, Lcom/soomla/data/RewardStorage;->keyRewardLastGiven(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "key":Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/data/KeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static setLastSeqIdxGiven(Ljava/lang/String;I)V
    .locals 2
    .param p0, "rewardId"    # Ljava/lang/String;
    .param p1, "idx"    # I

    .prologue
    .line 120
    invoke-static {p0}, Lcom/soomla/data/RewardStorage;->keyRewardIdxSeqGiven(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "key":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/data/KeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static setRewardStatus(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "rewardId"    # Ljava/lang/String;
    .param p1, "give"    # Z

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/soomla/data/RewardStorage;->setRewardStatus(Ljava/lang/String;ZZ)V

    .line 76
    return-void
.end method

.method public static setRewardStatus(Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "rewardId"    # Ljava/lang/String;
    .param p1, "give"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 79
    invoke-static {p0, p1, p2}, Lcom/soomla/data/RewardStorage;->setTimesGiven(Ljava/lang/String;ZZ)V

    .line 80
    return-void
.end method

.method private static setTimesGiven(Ljava/lang/String;ZZ)V
    .locals 4
    .param p0, "rewardId"    # Ljava/lang/String;
    .param p1, "up"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 160
    invoke-static {p0}, Lcom/soomla/data/RewardStorage;->getTimesGiven(Ljava/lang/String;)I

    move-result v2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 161
    .local v0, "total":I
    invoke-static {p0, v0}, Lcom/soomla/data/RewardStorage;->resetTimesGiven(Ljava/lang/String;I)V

    .line 163
    if-eqz p1, :cond_0

    .line 164
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/soomla/data/RewardStorage;->setLastGivenTimeMillis(Ljava/lang/String;J)V

    .line 167
    :cond_0
    if-eqz p2, :cond_1

    .line 168
    if-eqz p1, :cond_3

    .line 169
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v1

    new-instance v2, Lcom/soomla/events/RewardGivenEvent;

    invoke-direct {v2, p0}, Lcom/soomla/events/RewardGivenEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 174
    :cond_1
    :goto_1
    return-void

    .line 160
    .end local v0    # "total":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 171
    .restart local v0    # "total":I
    :cond_3
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v1

    new-instance v2, Lcom/soomla/events/RewardTakenEvent;

    invoke-direct {v2, p0}, Lcom/soomla/events/RewardTakenEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    goto :goto_1
.end method
