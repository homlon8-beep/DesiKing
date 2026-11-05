.class public Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "MarketItemsRefreshFinishedEvent.java"


# instance fields
.field mMarketItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/domain/MarketItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/domain/MarketItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "marketItems":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/MarketItem;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .param p2, "sender"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/domain/MarketItem;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "marketItems":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/domain/MarketItem;>;"
    invoke-direct {p0, p2}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 41
    iput-object p1, p0, Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;->mMarketItems:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public getMarketItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/domain/MarketItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/soomla/store/events/MarketItemsRefreshFinishedEvent;->mMarketItems:Ljava/util/List;

    return-object v0
.end method
