.class public Lcom/soomla/events/RewardGivenEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "RewardGivenEvent.java"


# instance fields
.field public final RewardId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "rewardId"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/soomla/events/RewardGivenEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "rewardId"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0, p2}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lcom/soomla/events/RewardGivenEvent;->RewardId:Ljava/lang/String;

    .line 40
    return-void
.end method
