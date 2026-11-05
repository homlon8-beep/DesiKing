.class public Lcom/soomla/store/billing/IabPurchase;
.super Ljava/lang/Object;
.source "IabPurchase.java"


# instance fields
.field private mDeveloperPayload:Ljava/lang/String;

.field private mItemType:Ljava/lang/String;

.field private mOrderId:Ljava/lang/String;

.field private mOriginalJson:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPurchaseState:I

.field private mPurchaseTime:J

.field private mSignature:Ljava/lang/String;

.field private mSku:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "jsonPurchaseInfo"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/soomla/store/billing/IabPurchase;->mItemType:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/soomla/store/billing/IabPurchase;->mOriginalJson:Ljava/lang/String;

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "o":Lorg/json/JSONObject;
    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mOrderId:Ljava/lang/String;

    .line 56
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mPackageName:Ljava/lang/String;

    .line 57
    const-string v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mSku:Ljava/lang/String;

    .line 58
    const-string v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/soomla/store/billing/IabPurchase;->mPurchaseTime:J

    .line 59
    const-string v1, "purchaseState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/soomla/store/billing/IabPurchase;->mPurchaseState:I

    .line 60
    const-string v1, "developerPayload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 61
    const-string v1, "token"

    const-string v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mToken:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/soomla/store/billing/IabPurchase;->mSignature:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "purchaseToken"    # Ljava/lang/String;
    .param p4, "orderId"    # Ljava/lang/String;
    .param p5, "purchaseState"    # I

    .prologue
    .line 39
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/soomla/store/billing/IabPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "purchaseToken"    # Ljava/lang/String;
    .param p4, "orderId"    # Ljava/lang/String;
    .param p5, "purchaseState"    # I
    .param p6, "userId"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/soomla/store/billing/IabPurchase;->mItemType:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/soomla/store/billing/IabPurchase;->mSku:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/soomla/store/billing/IabPurchase;->mToken:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/soomla/store/billing/IabPurchase;->mOrderId:Ljava/lang/String;

    .line 47
    iput p5, p0, Lcom/soomla/store/billing/IabPurchase;->mPurchaseState:I

    .line 48
    iput-object p6, p0, Lcom/soomla/store/billing/IabPurchase;->mUserId:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/soomla/store/billing/IabPurchase;->mPurchaseState:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/soomla/store/billing/IabPurchase;->mPurchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/soomla/store/billing/IabPurchase;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setDeveloperPayload(Ljava/lang/String;)V
    .locals 0
    .param p1, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/soomla/store/billing/IabPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseInfo(type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/soomla/store/billing/IabPurchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
