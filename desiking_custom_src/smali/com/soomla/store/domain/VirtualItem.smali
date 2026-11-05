.class public abstract Lcom/soomla/store/domain/VirtualItem;
.super Lcom/soomla/SoomlaEntity;
.source "VirtualItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/soomla/SoomlaEntity",
        "<",
        "Lcom/soomla/store/domain/VirtualItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA VirtualItem"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;
    .param p2, "mDescription"    # Ljava/lang/String;
    .param p3, "mItemId"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/soomla/SoomlaEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/soomla/SoomlaEntity;-><init>(Lorg/json/JSONObject;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/soomla/store/domain/VirtualItem;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public give(I)I
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/soomla/store/domain/VirtualItem;->give(IZ)I

    move-result v0

    return v0
.end method

.method public abstract give(IZ)I
.end method

.method public resetBalance(I)I
    .locals 1
    .param p1, "balance"    # I

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/soomla/store/domain/VirtualItem;->resetBalance(IZ)I

    move-result v0

    return v0
.end method

.method public abstract resetBalance(IZ)I
.end method

.method public save()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/soomla/store/domain/VirtualItem;->save(Z)V

    return-void
.end method

.method public save(Z)V
    .locals 0
    .param p1, "saveToDB"    # Z

    .prologue
    .line 144
    invoke-static {p0, p1}, Lcom/soomla/store/data/StoreInfo;->save(Lcom/soomla/store/domain/VirtualItem;Z)V

    .line 145
    return-void
.end method

.method public take(I)I
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/soomla/store/domain/VirtualItem;->take(IZ)I

    move-result v0

    return v0
.end method

.method public abstract take(IZ)I
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/soomla/SoomlaEntity;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
