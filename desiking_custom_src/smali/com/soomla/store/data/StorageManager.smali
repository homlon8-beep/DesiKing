.class public Lcom/soomla/store/data/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA StorageManager"

.field private static mVirtualCurrencyStorage:Lcom/soomla/store/data/VirtualCurrencyStorage;

.field private static mVirtualGoodsStorage:Lcom/soomla/store/data/VirtualGoodsStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/soomla/store/data/VirtualGoodsStorage;

    invoke-direct {v0}, Lcom/soomla/store/data/VirtualGoodsStorage;-><init>()V

    sput-object v0, Lcom/soomla/store/data/StorageManager;->mVirtualGoodsStorage:Lcom/soomla/store/data/VirtualGoodsStorage;

    .line 66
    new-instance v0, Lcom/soomla/store/data/VirtualCurrencyStorage;

    invoke-direct {v0}, Lcom/soomla/store/data/VirtualCurrencyStorage;-><init>()V

    sput-object v0, Lcom/soomla/store/data/StorageManager;->mVirtualCurrencyStorage:Lcom/soomla/store/data/VirtualCurrencyStorage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVirtualCurrencyStorage()Lcom/soomla/store/data/VirtualCurrencyStorage;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/soomla/store/data/StorageManager;->mVirtualCurrencyStorage:Lcom/soomla/store/data/VirtualCurrencyStorage;

    return-object v0
.end method

.method public static getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/soomla/store/data/StorageManager;->mVirtualGoodsStorage:Lcom/soomla/store/data/VirtualGoodsStorage;

    return-object v0
.end method

.method public static getVirtualItemStorage(Lcom/soomla/store/domain/VirtualItem;)Lcom/soomla/store/data/VirtualItemStorage;
    .locals 2
    .param p0, "item"    # Lcom/soomla/store/domain/VirtualItem;

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "storage":Lcom/soomla/store/data/VirtualItemStorage;
    instance-of v1, p0, Lcom/soomla/store/domain/virtualGoods/VirtualGood;

    if-eqz v1, :cond_1

    .line 50
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualGoodsStorage()Lcom/soomla/store/data/VirtualGoodsStorage;

    move-result-object v0

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    instance-of v1, p0, Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;

    if-eqz v1, :cond_0

    .line 52
    invoke-static {}, Lcom/soomla/store/data/StorageManager;->getVirtualCurrencyStorage()Lcom/soomla/store/data/VirtualCurrencyStorage;

    move-result-object v0

    goto :goto_0
.end method
