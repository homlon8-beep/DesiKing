.class public Lcom/soomla/store/billing/IabSkuDetails;
.super Ljava/lang/Object;
.source "IabSkuDetails.java"


# instance fields
.field private mCurrencyCode:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mItemType:Ljava/lang/String;

.field private mJson:Ljava/lang/String;

.field private mPrice:Ljava/lang/String;

.field private mPriceMicros:J

.field private mSku:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "jsonSkuDetails"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/soomla/store/billing/IabSkuDetails;->mItemType:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/soomla/store/billing/IabSkuDetails;->mJson:Ljava/lang/String;

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/soomla/store/billing/IabSkuDetails;->mJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "o":Lorg/json/JSONObject;
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabSkuDetails;->mSku:Ljava/lang/String;

    .line 52
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabSkuDetails;->mType:Ljava/lang/String;

    .line 53
    const-string v1, "price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabSkuDetails;->mPrice:Ljava/lang/String;

    .line 54
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabSkuDetails;->mTitle:Ljava/lang/String;

    .line 55
    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabSkuDetails;->mDescription:Ljava/lang/String;

    .line 56
    const-string v1, "price_amount_micros"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/soomla/store/billing/IabSkuDetails;->mPriceMicros:J

    .line 57
    const-string v1, "price_currency_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabSkuDetails;->mCurrencyCode:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "price"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "priceMicros"    # J
    .param p8, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/soomla/store/billing/IabSkuDetails;->mItemType:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/soomla/store/billing/IabSkuDetails;->mSku:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/soomla/store/billing/IabSkuDetails;->mPrice:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/soomla/store/billing/IabSkuDetails;->mTitle:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/soomla/store/billing/IabSkuDetails;->mDescription:Ljava/lang/String;

    .line 43
    iput-wide p6, p0, Lcom/soomla/store/billing/IabSkuDetails;->mPriceMicros:J

    .line 44
    iput-object p8, p0, Lcom/soomla/store/billing/IabSkuDetails;->mCurrencyCode:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/soomla/store/billing/IabSkuDetails;->mCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/soomla/store/billing/IabSkuDetails;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/soomla/store/billing/IabSkuDetails;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/soomla/store/billing/IabSkuDetails;->mJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/soomla/store/billing/IabSkuDetails;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceMicros()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/soomla/store/billing/IabSkuDetails;->mPriceMicros:J

    return-wide v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/soomla/store/billing/IabSkuDetails;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/soomla/store/billing/IabSkuDetails;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/soomla/store/billing/IabSkuDetails;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IabSkuDetails:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/soomla/store/billing/IabSkuDetails;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
