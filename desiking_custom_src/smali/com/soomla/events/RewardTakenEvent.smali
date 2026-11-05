.class public Lcom/soomla/events/RewardTakenEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "RewardTakenEvent.java"


# instance fields
.field public final RewardId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "rewardId"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/soomla/events/RewardTakenEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "rewardId"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/Object;

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/soomla/events/RewardTakenEvent;->RewardId:Ljava/lang/String;

    .line 41
    return-void
.end method
