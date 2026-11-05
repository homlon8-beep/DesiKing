.class public Lcom/soomla/rewards/VirtualItemReward;
.super Lcom/soomla/rewards/Reward;
.source "VirtualItemReward.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA VirtualItemReward"


# instance fields
.field private mAmount:I

.field private mAssociatedItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "rewardId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "amount"    # I
    .param p4, "associatedItemId"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/soomla/rewards/Reward;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput p3, p0, Lcom/soomla/rewards/VirtualItemReward;->mAmount:I

    .line 48
    iput-object p4, p0, Lcom/soomla/rewards/VirtualItemReward;->mAssociatedItemId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/soomla/rewards/Reward;-><init>(Lorg/json/JSONObject;)V

    .line 60
    const-string v0, "associatedItemId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/rewards/VirtualItemReward;->mAssociatedItemId:Ljava/lang/String;

    .line 61
    const-string v0, "amount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/soomla/rewards/VirtualItemReward;->mAmount:I

    .line 62
    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/soomla/rewards/VirtualItemReward;->mAmount:I

    return v0
.end method

.method public getAssociatedItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/soomla/rewards/VirtualItemReward;->mAssociatedItemId:Ljava/lang/String;

    return-object v0
.end method

.method public giveInner()Z
    .locals 4

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/soomla/rewards/VirtualItemReward;->mAssociatedItemId:Ljava/lang/String;

    iget v2, p0, Lcom/soomla/rewards/VirtualItemReward;->mAmount:I

    invoke-static {v1, v2}, Lcom/soomla/store/StoreInventory;->giveVirtualItem(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v1, "SOOMLA VirtualItemReward"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(give) Couldn\'t find associated itemId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/soomla/rewards/VirtualItemReward;->mAssociatedItemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected takeInner()Z
    .locals 4

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/soomla/rewards/VirtualItemReward;->mAssociatedItemId:Ljava/lang/String;

    iget v2, p0, Lcom/soomla/rewards/VirtualItemReward;->mAmount:I

    invoke-static {v1, v2}, Lcom/soomla/store/StoreInventory;->takeVirtualItem(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/soomla/store/exceptions/VirtualItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lcom/soomla/store/exceptions/VirtualItemNotFoundException;
    const-string v1, "SOOMLA VirtualItemReward"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(take) Couldn\'t find associated itemId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/soomla/rewards/VirtualItemReward;->mAssociatedItemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 70
    invoke-super {p0}, Lcom/soomla/rewards/Reward;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 72
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "associatedItemId"

    iget-object v3, p0, Lcom/soomla/rewards/VirtualItemReward;->mAssociatedItemId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v2, "amount"

    iget v3, p0, Lcom/soomla/rewards/VirtualItemReward;->mAmount:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "SOOMLA VirtualItemReward"

    const-string v3, "An error occurred while generating JSON object."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
