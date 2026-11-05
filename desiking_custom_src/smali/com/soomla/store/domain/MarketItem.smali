.class public Lcom/soomla/store/domain/MarketItem;
.super Ljava/lang/Object;
.source "MarketItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA MarketItem"


# instance fields
.field private mMarketCurrencyCode:Ljava/lang/String;

.field private mMarketDescription:Ljava/lang/String;

.field private mMarketPriceAndCurrency:Ljava/lang/String;

.field private mMarketPriceMicros:J

.field private mMarketTitle:Ljava/lang/String;

.field private mPrice:D

.field private mProductId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0
    .param p1, "mProductId"    # Ljava/lang/String;
    .param p2, "mPrice"    # D

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/soomla/store/domain/MarketItem;->mProductId:Ljava/lang/String;

    .line 40
    iput-wide p2, p0, Lcom/soomla/store/domain/MarketItem;->mPrice:D

    .line 41
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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "androidId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "androidId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mProductId:Ljava/lang/String;

    .line 57
    :goto_0
    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/soomla/store/domain/MarketItem;->mPrice:D

    .line 59
    const-string v0, "marketPrice"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceAndCurrency:Ljava/lang/String;

    .line 60
    const-string v0, "marketTitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketTitle:Ljava/lang/String;

    .line 61
    const-string v0, "marketDesc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketDescription:Ljava/lang/String;

    .line 62
    const-string v0, "marketCurrencyCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketCurrencyCode:Ljava/lang/String;

    .line 63
    const-string v0, "marketPriceMicros"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceMicros:J

    .line 64
    return-void

    .line 55
    :cond_0
    const-string v0, "productId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mProductId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getMarketCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketPrice()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/soomla/store/domain/MarketItem;->getMarketPriceAndCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarketPriceAndCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceAndCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketPriceMicros()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceMicros:J

    return-wide v0
.end method

.method public getMarketTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mMarketTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/soomla/store/domain/MarketItem;->mPrice:D

    return-wide v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/soomla/store/domain/MarketItem;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method public setMarketInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "marketPriceAndCurrency"    # Ljava/lang/String;
    .param p2, "marketTitle"    # Ljava/lang/String;
    .param p3, "marketDescription"    # Ljava/lang/String;
    .param p4, "marketCurrencyCode"    # Ljava/lang/String;
    .param p5, "marketPriceMicros"    # J

    .prologue
    .line 94
    iput-object p1, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceAndCurrency:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/soomla/store/domain/MarketItem;->mMarketTitle:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/soomla/store/domain/MarketItem;->mMarketDescription:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/soomla/store/domain/MarketItem;->mMarketCurrencyCode:Ljava/lang/String;

    .line 98
    iput-wide p5, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceMicros:J

    .line 99
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 72
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "className"

    invoke-static {p0}, Lcom/soomla/SoomlaUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v2, "androidId"

    iget-object v3, p0, Lcom/soomla/store/domain/MarketItem;->mProductId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v2, "price"

    iget-wide v4, p0, Lcom/soomla/store/domain/MarketItem;->mPrice:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v2, "marketPrice"

    iget-object v3, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceAndCurrency:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v2, "marketTitle"

    iget-object v3, p0, Lcom/soomla/store/domain/MarketItem;->mMarketTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v2, "marketDesc"

    iget-object v3, p0, Lcom/soomla/store/domain/MarketItem;->mMarketDescription:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v2, "marketCurrencyCode"

    iget-object v3, p0, Lcom/soomla/store/domain/MarketItem;->mMarketCurrencyCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v2, "marketPriceMicros"

    iget-wide v4, p0, Lcom/soomla/store/domain/MarketItem;->mMarketPriceMicros:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "SOOMLA MarketItem"

    const-string v3, "An error occurred while generating JSON object."

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
