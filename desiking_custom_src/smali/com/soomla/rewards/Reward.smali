.class public abstract Lcom/soomla/rewards/Reward;
.super Lcom/soomla/SoomlaEntity;
.source "Reward.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/soomla/SoomlaEntity",
        "<",
        "Lcom/soomla/rewards/Reward;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA Reward"

.field private static sJSONFactory:Lcom/soomla/util/JSONFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/soomla/util/JSONFactory",
            "<",
            "Lcom/soomla/rewards/Reward;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mSchedule:Lcom/soomla/Schedule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/soomla/util/JSONFactory;

    invoke-direct {v0}, Lcom/soomla/util/JSONFactory;-><init>()V

    sput-object v0, Lcom/soomla/rewards/Reward;->sJSONFactory:Lcom/soomla/util/JSONFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rewardId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v0, ""

    invoke-direct {p0, p2, v0, p1}, Lcom/soomla/SoomlaEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/soomla/Schedule;->AnyTimeOnce()Lcom/soomla/Schedule;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/rewards/Reward;->mSchedule:Lcom/soomla/Schedule;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/soomla/SoomlaEntity;-><init>(Lorg/json/JSONObject;)V

    .line 58
    const-string v1, "schedule"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 59
    .local v0, "scheduleObj":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/soomla/Schedule;->AnyTimeOnce()Lcom/soomla/Schedule;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/rewards/Reward;->mSchedule:Lcom/soomla/Schedule;

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/soomla/rewards/Reward;->mSchedule:Lcom/soomla/Schedule;

    goto :goto_0
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/soomla/rewards/Reward;
    .locals 2
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 93
    sget-object v0, Lcom/soomla/rewards/Reward;->sJSONFactory:Lcom/soomla/util/JSONFactory;

    const-class v1, Lcom/soomla/rewards/Reward;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/soomla/util/JSONFactory;->create(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soomla/rewards/Reward;

    return-object v0
.end method

.method public static fromJSONString(Ljava/lang/String;)Lcom/soomla/rewards/Reward;
    .locals 3
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "rewardObj":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/soomla/rewards/Reward;->fromJSONObject(Lorg/json/JSONObject;)Lcom/soomla/rewards/Reward;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 88
    .end local v1    # "rewardObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canGive()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/soomla/rewards/Reward;->mSchedule:Lcom/soomla/Schedule;

    invoke-virtual {p0}, Lcom/soomla/rewards/Reward;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/soomla/data/RewardStorage;->getTimesGiven(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/soomla/Schedule;->approve(I)Z

    move-result v0

    return v0
.end method

.method public getSchedule()Lcom/soomla/Schedule;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/soomla/rewards/Reward;->mSchedule:Lcom/soomla/Schedule;

    return-object v0
.end method

.method public give()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/soomla/rewards/Reward;->canGive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    const-string v1, "SOOMLA Reward"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(Give) Reward is not approved by Schedule. id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/soomla/rewards/Reward;->mID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/soomla/rewards/Reward;->giveInner()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/soomla/rewards/Reward;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/soomla/data/RewardStorage;->setRewardStatus(Ljava/lang/String;Z)V

    move v0, v1

    .line 111
    goto :goto_0
.end method

.method protected abstract giveInner()Z
.end method

.method public isOwned()Z
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/soomla/rewards/Reward;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/soomla/data/RewardStorage;->isRewardGiven(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public take()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/soomla/rewards/Reward;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/soomla/data/RewardStorage;->isRewardGiven(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    const-string v1, "SOOMLA Reward"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reward not given. id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/soomla/rewards/Reward;->mID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/soomla/rewards/Reward;->takeInner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/soomla/rewards/Reward;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/soomla/data/RewardStorage;->setRewardStatus(Ljava/lang/String;Z)V

    .line 130
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract takeInner()Z
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 73
    invoke-super {p0}, Lcom/soomla/SoomlaEntity;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 75
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "schedule"

    iget-object v3, p0, Lcom/soomla/rewards/Reward;->mSchedule:Lcom/soomla/Schedule;

    invoke-virtual {v3}, Lcom/soomla/Schedule;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "SOOMLA Reward"

    const-string v3, "An error occurred while generating JSON object."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
