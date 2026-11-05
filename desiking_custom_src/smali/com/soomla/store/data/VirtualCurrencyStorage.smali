.class public Lcom/soomla/store/data/VirtualCurrencyStorage;
.super Lcom/soomla/store/data/VirtualItemStorage;
.source "VirtualCurrencyStorage.java"


# static fields
.field public static final DB_CURRENCY_KEY_PREFIX:Ljava/lang/String; = "currency."


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/soomla/store/data/VirtualItemStorage;-><init>()V

    .line 34
    const-string v0, "SOOMLA VirtualCurrencyStorage"

    iput-object v0, p0, Lcom/soomla/store/data/VirtualCurrencyStorage;->mTag:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private static keyCurrencyBalance(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "itemId"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currency."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".balance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected keyBalance(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p1}, Lcom/soomla/store/data/VirtualCurrencyStorage;->keyCurrencyBalance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected postBalanceChangeEvent(Ljava/lang/String;II)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "balance"    # I
    .param p3, "amountAdded"    # I

    .prologue
    .line 50
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 52
    return-void
.end method
