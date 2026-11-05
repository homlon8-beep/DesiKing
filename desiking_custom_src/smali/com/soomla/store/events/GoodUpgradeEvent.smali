.class public Lcom/soomla/store/events/GoodUpgradeEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "GoodUpgradeEvent.java"


# instance fields
.field private mCurrentUpgradeItemId:Ljava/lang/String;

.field private mItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "upgradeVGItemId"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/soomla/store/events/GoodUpgradeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "upgradeVGItemId"    # Ljava/lang/String;
    .param p3, "sender"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p3}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 45
    iput-object p1, p0, Lcom/soomla/store/events/GoodUpgradeEvent;->mItemId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/soomla/store/events/GoodUpgradeEvent;->mCurrentUpgradeItemId:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getCurrentUpgrade()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/soomla/store/events/GoodUpgradeEvent;->mCurrentUpgradeItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/soomla/store/events/GoodUpgradeEvent;->mItemId:Ljava/lang/String;

    return-object v0
.end method
