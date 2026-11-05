.class public Lcom/soomla/unity/StoreEventHandler;
.super Ljava/lang/Object;
.source "StoreEventHandler.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mLocalEventHandler:Lcom/soomla/unity/StoreEventHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "SOOMLA Unity StoreEventHandler"

    sput-object v0, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/soomla/AndroidBus;->register(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public static getInstance()Lcom/soomla/unity/StoreEventHandler;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/soomla/unity/StoreEventHandler;->mLocalEventHandler:Lcom/soomla/unity/StoreEventHandler;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/soomla/unity/StoreEventHandler;

    invoke-direct {v0}, Lcom/soomla/unity/StoreEventHandler;-><init>()V

    sput-object v0, Lcom/soomla/unity/StoreEventHandler;->mLocalEventHandler:Lcom/soomla/unity/StoreEventHandler;

    .line 50
    :cond_0
    sget-object v0, Lcom/soomla/unity/StoreEventHandler;->mLocalEventHandler:Lcom/soomla/unity/StoreEventHandler;

    return-object v0
.end method

.method public static initialize()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "SOOMLA Unity StoreEventHandler"

    const-string v1, "Initializing StoreEventHandler ..."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/soomla/unity/StoreEventHandler;->getInstance()Lcom/soomla/unity/StoreEventHandler;

    .line 44
    return-void
.end method


# virtual methods
.method public onBillingNotSupported(Lcom/soomla/store/events/BillingNotSupportedEvent;)V
    .locals 3
    .param p1, "billingNotSupportedEvent"    # Lcom/soomla/store/events/BillingNotSupportedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p1, Lcom/soomla/store/events/BillingNotSupportedEvent;->Sender:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "StoreEvents"

    const-string v1, "onBillingNotSupported"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBillingSupported(Lcom/soomla/store/events/BillingSupportedEvent;)V
    .locals 3
    .param p1, "billingSupportedEvent"    # Lcom/soomla/store/events/BillingSupportedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p1, Lcom/soomla/store/events/BillingSupportedEvent;->Sender:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "StoreEvents"

    const-string v1, "onBillingSupported"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCurrencyBalanceChanged(Lcom/soomla/store/events/CurrencyBalanceChangedEvent;)V
    .locals 5
    .param p1, "currencyBalanceChangedEvent"    # Lcom/soomla/store/events/CurrencyBalanceChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 91
    iget-object v2, p1, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 95
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 96
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->getCurrencyItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v2, "balance"

    invoke-virtual {p1}, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->getBalance()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    const-string v2, "amountAdded"

    invoke-virtual {p1}, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->getAmountAdded()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string v2, "StoreEvents"

    const-string v3, "onCurrencyBalanceChanged"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onCurrencyBalanceChanged event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGoodBalanceChanged(Lcom/soomla/store/events/GoodBalanceChangedEvent;)V
    .locals 5
    .param p1, "goodBalanceChangedEvent"    # Lcom/soomla/store/events/GoodBalanceChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 108
    iget-object v2, p1, Lcom/soomla/store/events/GoodBalanceChangedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 112
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 113
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/GoodBalanceChangedEvent;->getGoodItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v2, "balance"

    invoke-virtual {p1}, Lcom/soomla/store/events/GoodBalanceChangedEvent;->getBalance()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    const-string v2, "amountAdded"

    invoke-virtual {p1}, Lcom/soomla/store/events/GoodBalanceChangedEvent;->getAmountAdded()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    const-string v2, "StoreEvents"

    const-string v3, "onGoodBalanceChanged"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onGoodBalanceChanged event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGoodEquipped(Lcom/soomla/store/events/GoodEquippedEvent;)V
    .locals 5
    .param p1, "goodEquippedEvent"    # Lcom/soomla/store/events/GoodEquippedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 125
    iget-object v2, p1, Lcom/soomla/store/events/GoodEquippedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/GoodEquippedEvent;->getGoodItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v2, "StoreEvents"

    const-string v3, "onGoodEquipped"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onGoodEquipped event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGoodUnequipped(Lcom/soomla/store/events/GoodUnEquippedEvent;)V
    .locals 5
    .param p1, "goodUnEquippedEvent"    # Lcom/soomla/store/events/GoodUnEquippedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 140
    iget-object v2, p1, Lcom/soomla/store/events/GoodUnEquippedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 144
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/GoodUnEquippedEvent;->getGoodItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v2, "StoreEvents"

    const-string v3, "onGoodUnequipped"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onGoodUnequipped event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGoodUpgrade(Lcom/soomla/store/events/GoodUpgradeEvent;)V
    .locals 5
    .param p1, "goodUpgradeEvent"    # Lcom/soomla/store/events/GoodUpgradeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 155
    iget-object v2, p1, Lcom/soomla/store/events/GoodUpgradeEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 159
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 160
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/GoodUpgradeEvent;->getGoodItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v2, "upgradeItemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/GoodUpgradeEvent;->getCurrentUpgrade()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v2, "StoreEvents"

    const-string v3, "onGoodUpgrade"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onGoodUpgrade event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIabServiceStarted(Lcom/soomla/store/events/IabServiceStartedEvent;)V
    .locals 3
    .param p1, "iabServiceStartedEvent"    # Lcom/soomla/store/events/IabServiceStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p1, Lcom/soomla/store/events/IabServiceStartedEvent;->Sender:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, "StoreEvents"

    const-string v1, "onIabServiceStarted"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIabServiceStopped(Lcom/soomla/store/events/IabServiceStoppedEvent;)V
    .locals 3
    .param p1, "iabServiceStoppedEvent"    # Lcom/soomla/store/events/IabServiceStoppedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p1, Lcom/soomla/store/events/IabServiceStoppedEvent;->Sender:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v0, "StoreEvents"

    const-string v1, "onIabServiceStopped"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemPurchaseStarted(Lcom/soomla/store/events/ItemPurchaseStartedEvent;)V
    .locals 5
    .param p1, "itemPurchaseStartedEvent"    # Lcom/soomla/store/events/ItemPurchaseStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 187
    iget-object v2, p1, Lcom/soomla/store/events/ItemPurchaseStartedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 191
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 192
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/ItemPurchaseStartedEvent;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v2, "StoreEvents"

    const-string v3, "onItemPurchaseStarted"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onItemPurchaseStarted event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemPurchased(Lcom/soomla/store/events/ItemPurchasedEvent;)V
    .locals 5
    .param p1, "itemPurchasedEvent"    # Lcom/soomla/store/events/ItemPurchasedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 171
    iget-object v2, p1, Lcom/soomla/store/events/ItemPurchasedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 175
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 176
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/ItemPurchasedEvent;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v2, "payload"

    invoke-virtual {p1}, Lcom/soomla/store/events/ItemPurchasedEvent;->getPayload()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v2, "StoreEvents"

    const-string v3, "onItemPurchased"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onItemPurchased event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMarketItemsRefreshFailed(Lcom/soomla/store/events/MarketItemsRefreshFailedEvent;)V
    .locals 5
    .param p1, "marketItemsRefreshFailedEvent"    # Lcom/soomla/store/events/MarketItemsRefreshFailedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 326
    iget-object v2, p1, Lcom/soomla/store/events/MarketItemsRefreshFailedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 331
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 332
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "errorMessage"

    iget-object v3, p1, Lcom/soomla/store/events/MarketItemsRefreshFailedEvent;->ErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string v2, "StoreEvents"

    const-string v3, "onMarketItemsRefreshFailed"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onMarketItemsRefreshFailed event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMarketItemsRefreshFinished(Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;)V
    .locals 8
    .param p1, "marketItemsRefreshFinishedEvent"    # Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 299
    iget-object v5, p1, Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;->Sender:Ljava/lang/Object;

    if-ne v5, p0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 303
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 305
    .local v1, "eventJSON":Lorg/json/JSONArray;
    invoke-virtual {p1}, Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;->getMarketItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/soomla/store/domain/MarketItem;

    .line 306
    .local v3, "mi":Lcom/soomla/store/domain/MarketItem;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 307
    .local v4, "micJSON":Lorg/json/JSONObject;
    const-string v5, "className"

    invoke-static {v3}, Lcom/soomla/SoomlaUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v5, "productId"

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem;->getProductId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v5, "marketPrice"

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem;->getMarketPriceAndCurrency()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v5, "marketTitle"

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem;->getMarketTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v5, "marketDesc"

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem;->getMarketDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v5, "marketCurrencyCode"

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem;->getMarketCurrencyCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v5, "marketPriceMicros"

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem;->getMarketPriceMicros()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 315
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 319
    .end local v1    # "eventJSON":Lorg/json/JSONArray;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mi":Lcom/soomla/store/domain/MarketItem;
    .end local v4    # "micJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "This is BAD! couldn\'t create JSON for onMarketItemsRefreshFinished event."

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "eventJSON":Lorg/json/JSONArray;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v5, "StoreEvents"

    const-string v6, "onMarketItemsRefreshFinished"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onMarketItemsRefreshStarted(Lcom/soomla/store/events/MarketItemsRefreshStartedEvent;)V
    .locals 3
    .param p1, "marketItemsRefreshStartedEvent"    # Lcom/soomla/store/events/MarketItemsRefreshStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 291
    iget-object v0, p1, Lcom/soomla/store/events/MarketItemsRefreshStartedEvent;->Sender:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    const-string v0, "StoreEvents"

    const-string v1, "onMarketItemsRefreshStarted"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMarketPurchase(Lcom/soomla/store/events/MarketPurchaseEvent;)V
    .locals 8
    .param p1, "playPurchaseEvent"    # Lcom/soomla/store/events/MarketPurchaseEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 217
    iget-object v5, p1, Lcom/soomla/store/events/MarketPurchaseEvent;->Sender:Ljava/lang/Object;

    if-ne v5, p0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 221
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 222
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v5, "itemId"

    iget-object v6, p1, Lcom/soomla/store/events/MarketPurchaseEvent;->PurchasableVirtualItem:Lcom/soomla/store/domain/PurchasableVirtualItem;

    invoke-virtual {v6}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v5, "payload"

    iget-object v6, p1, Lcom/soomla/store/events/MarketPurchaseEvent;->Payload:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 225
    .local v2, "extraJSON":Lorg/json/JSONObject;
    iget-object v5, p1, Lcom/soomla/store/events/MarketPurchaseEvent;->ExtraInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 226
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p1, Lcom/soomla/store/events/MarketPurchaseEvent;->ExtraInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 231
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    .end local v2    # "extraJSON":Lorg/json/JSONObject;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "This is BAD! couldn\'t create JSON for onMarketPurchase event."

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "eventJSON":Lorg/json/JSONObject;
    .restart local v2    # "extraJSON":Lorg/json/JSONObject;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v5, "extra"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v5, "StoreEvents"

    const-string v6, "onMarketPurchase"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onMarketPurchaseCancelled(Lcom/soomla/store/events/MarketPurchaseCancelledEvent;)V
    .locals 5
    .param p1, "playPurchaseCancelledEvent"    # Lcom/soomla/store/events/MarketPurchaseCancelledEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 202
    iget-object v2, p1, Lcom/soomla/store/events/MarketPurchaseCancelledEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 206
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 207
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/MarketPurchaseCancelledEvent;->getPurchasableVirtualItem()Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v2, "StoreEvents"

    const-string v3, "onMarketPurchaseCancelled"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onMarketPurchaseCancelled event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMarketPurchaseStarted(Lcom/soomla/store/events/MarketPurchaseStartedEvent;)V
    .locals 5
    .param p1, "playPurchaseStartedEvent"    # Lcom/soomla/store/events/MarketPurchaseStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 238
    iget-object v2, p1, Lcom/soomla/store/events/MarketPurchaseStartedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 242
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 243
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/MarketPurchaseStartedEvent;->getPurchasableVirtualItem()Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v2, "StoreEvents"

    const-string v3, "onMarketPurchaseStarted"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onMarketPurchaseStarted event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMarketRefund(Lcom/soomla/store/events/MarketRefundEvent;)V
    .locals 5
    .param p1, "playRefundEvent"    # Lcom/soomla/store/events/MarketRefundEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 253
    iget-object v2, p1, Lcom/soomla/store/events/MarketRefundEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 257
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 258
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "itemId"

    invoke-virtual {p1}, Lcom/soomla/store/events/MarketRefundEvent;->getPurchasableVirtualItem()Lcom/soomla/store/domain/PurchasableVirtualItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/soomla/store/domain/PurchasableVirtualItem;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string v2, "StoreEvents"

    const-string v3, "onMarketRefund"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onMarketRefund event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRestoreTransactionsFinished(Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;)V
    .locals 5
    .param p1, "restoreTransactionsFinishedEvent"    # Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 268
    iget-object v2, p1, Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;->Sender:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 272
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 273
    .local v1, "eventJSON":Lorg/json/JSONObject;
    const-string v2, "success"

    invoke-virtual {p1}, Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;->isSuccess()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 275
    const-string v2, "StoreEvents"

    const-string v3, "onRestoreTransactionsFinished"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "This is BAD! couldn\'t create JSON for onRestoreTransactionsFinished event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRestoreTransactionsStarted(Lcom/soomla/store/events/RestoreTransactionsStartedEvent;)V
    .locals 3
    .param p1, "restoreTransactionsStartedEvent"    # Lcom/soomla/store/events/RestoreTransactionsStartedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 283
    iget-object v0, p1, Lcom/soomla/store/events/RestoreTransactionsStartedEvent;->Sender:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    const-string v0, "StoreEvents"

    const-string v1, "onRestoreTransactionsStarted"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSoomlaStoreInitialized(Lcom/soomla/store/events/SoomlaStoreInitializedEvent;)V
    .locals 3
    .param p1, "soomlaStoreInitializedEvent"    # Lcom/soomla/store/events/SoomlaStoreInitializedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 342
    iget-object v0, p1, Lcom/soomla/store/events/SoomlaStoreInitializedEvent;->Sender:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 345
    :cond_0
    const-string v0, "StoreEvents"

    const-string v1, "onSoomlaStoreInitialized"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUnexpectedStoreError(Lcom/soomla/store/events/UnexpectedStoreErrorEvent;)V
    .locals 3
    .param p1, "unexpectedStoreErrorEvent"    # Lcom/soomla/store/events/UnexpectedStoreErrorEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 350
    iget-object v1, p1, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;->Sender:Ljava/lang/Object;

    if-ne v1, p0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-virtual {p1}, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "StoreEvents"

    const-string v2, "onUnexpectedErrorInStore"

    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-static {v1, v2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventCurrencyBalanceChanged(Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 371
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 373
    .local v3, "eventJSON":Lorg/json/JSONObject;
    const-string v4, "balance"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 374
    .local v1, "balance":I
    const-string v4, "amountAdded"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 376
    .local v0, "amountAdded":I
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v4

    new-instance v5, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;

    const-string v6, "itemId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1, v0, p0}, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v0    # "amountAdded":I
    .end local v1    # "balance":I
    .end local v3    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "(when pushing event) This is BAD! couldn\'t create JSON for onGoodBalanceChanged event."

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventGoodBalanceChanged(Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 384
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 386
    .local v3, "eventJSON":Lorg/json/JSONObject;
    const-string v4, "balance"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 387
    .local v1, "balance":I
    const-string v4, "amountAdded"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 388
    .local v0, "amountAdded":I
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v4

    new-instance v5, Lcom/soomla/store/events/GoodBalanceChangedEvent;

    const-string v6, "itemId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1, v0, p0}, Lcom/soomla/store/events/GoodBalanceChangedEvent;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v0    # "amountAdded":I
    .end local v1    # "balance":I
    .end local v3    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v2

    .line 390
    .local v2, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "(when pushing event) This is BAD! couldn\'t create JSON for onGoodBalanceChanged event."

    invoke-static {v4, v5}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventGoodEquipped(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 396
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 398
    .local v1, "eventJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/GoodEquippedEvent;

    const-string v4, "itemId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/soomla/store/events/GoodEquippedEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "(when pushing event) This is BAD! couldn\'t create JSON for onGoodEquipped event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventGoodUnequipped(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 406
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 408
    .local v1, "eventJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/GoodUnEquippedEvent;

    const-string v4, "itemId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/soomla/store/events/GoodUnEquippedEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "(when pushing event) This is BAD! couldn\'t create JSON for onGoodUnequipped event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventGoodUpgrade(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 416
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, "eventJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/GoodUpgradeEvent;

    const-string v4, "itemId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "upgradeItemId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p0}, Lcom/soomla/store/events/GoodUpgradeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "(when pushing event) This is BAD! couldn\'t create JSON for onGoodUpgrade event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventItemPurchaseStarted(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 436
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 438
    .local v1, "eventJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/ItemPurchaseStartedEvent;

    const-string v4, "itemId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/soomla/store/events/ItemPurchaseStartedEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "(when pushing event) This is BAD! couldn\'t create JSON for onItemPurchaseStarted event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventItemPurchased(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 426
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 428
    .local v1, "eventJSON":Lorg/json/JSONObject;
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/ItemPurchasedEvent;

    const-string v4, "itemId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "payload"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p0}, Lcom/soomla/store/events/ItemPurchasedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v1    # "eventJSON":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/soomla/unity/StoreEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "(when pushing event) This is BAD! couldn\'t create JSON for onItemPurchased event."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushEventSoomlaStoreInitialized(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 362
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/store/events/SoomlaStoreInitializedEvent;

    invoke-direct {v1, p0}, Lcom/soomla/store/events/SoomlaStoreInitializedEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 363
    return-void
.end method

.method public pushEventUnexpectedStoreError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;

    invoke-direct {v1, p1, p0}, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 367
    return-void
.end method
