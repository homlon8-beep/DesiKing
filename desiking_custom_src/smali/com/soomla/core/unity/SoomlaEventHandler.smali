.class public Lcom/soomla/core/unity/SoomlaEventHandler;
.super Ljava/lang/Object;
.source "SoomlaEventHandler.java"


# static fields
.field private static mLocalEventHandler:Lcom/soomla/core/unity/SoomlaEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/soomla/AndroidBus;->register(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static initialize()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "SOOMLA Unity SoomlaEventHandler"

    const-string v1, "Initializing SoomlaEventHandler ..."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/soomla/core/unity/SoomlaEventHandler;

    invoke-direct {v0}, Lcom/soomla/core/unity/SoomlaEventHandler;-><init>()V

    sput-object v0, Lcom/soomla/core/unity/SoomlaEventHandler;->mLocalEventHandler:Lcom/soomla/core/unity/SoomlaEventHandler;

    .line 21
    return-void
.end method


# virtual methods
.method public onCustom(Lcom/soomla/events/CustomEvent;)V
    .locals 8
    .param p1, "customEvent"    # Lcom/soomla/events/CustomEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 52
    iget-object v5, p1, Lcom/soomla/events/CustomEvent;->Sender:Ljava/lang/Object;

    if-ne v5, p0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 56
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v5, "name"

    invoke-virtual {p1}, Lcom/soomla/events/CustomEvent;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v3, "extraJSON":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/soomla/events/CustomEvent;->getExtra()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/soomla/events/CustomEvent;->getExtra()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, "ex":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/soomla/events/CustomEvent;->getExtra()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    .end local v2    # "ex":Ljava/lang/String;
    .end local v3    # "extraJSON":Lorg/json/JSONObject;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "SOOMLA SoomlaEventHandler"

    const-string v6, "This is BAD! couldn\'t create JSON for onMarketItemsRefreshFinished event."

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "eventJSON":Lorg/json/JSONObject;
    .restart local v3    # "extraJSON":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v5, "extra"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v5, "CoreEvents"

    const-string v6, "onCustomEvent"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onRewardGiven(Lcom/soomla/events/RewardGivenEvent;)V
    .locals 5
    .param p1, "rewardGivenEvent"    # Lcom/soomla/events/RewardGivenEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 31
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "rewardId"

    iget-object v3, p1, Lcom/soomla/events/RewardGivenEvent;->RewardId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v2, "CoreEvents"

    const-string v3, "onRewardGiven"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "SOOMLA SoomlaEventHandler"

    const-string v3, "This is BAD! couldn\'t create JSON for onRewardGiven event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRewardTaken(Lcom/soomla/events/RewardTakenEvent;)V
    .locals 5
    .param p1, "rewardTakenEvent"    # Lcom/soomla/events/RewardTakenEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 42
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "rewardId"

    iget-object v3, p1, Lcom/soomla/events/RewardTakenEvent;->RewardId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v2, "CoreEvents"

    const-string v3, "onRewardTaken"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "SOOMLA SoomlaEventHandler"

    const-string v3, "This is BAD! couldn\'t create JSON for onRewardGiven event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
