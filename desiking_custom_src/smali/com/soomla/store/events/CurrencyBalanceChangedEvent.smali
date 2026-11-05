.class public Lcom/soomla/store/events/CurrencyBalanceChangedEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "CurrencyBalanceChangedEvent.java"


# instance fields
.field private mAmountAdded:I

.field private mBalance:I

.field private mItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "balance"    # I
    .param p3, "amountAdded"    # I

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 41
    iput-object p1, p0, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->mItemId:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->mBalance:I

    .line 43
    iput p3, p0, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->mAmountAdded:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "balance"    # I
    .param p3, "amountAdded"    # I
    .param p4, "sender"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-direct {p0, p4}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 48
    iput-object p1, p0, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->mItemId:Ljava/lang/String;

    .line 49
    iput p2, p0, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->mBalance:I

    .line 50
    iput p3, p0, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->mAmountAdded:I

    .line 51
    return-void
.end method


# virtual methods
.method public getAmountAdded()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->mAmountAdded:I

    return v0
.end method

.method public getBalance()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->mBalance:I

    return v0
.end method

.method public getCurrencyItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/soomla/store/events/CurrencyBalanceChangedEvent;->mItemId:Ljava/lang/String;

    return-object v0
.end method
