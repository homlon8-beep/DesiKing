.class public Lcom/soomla/store/events/UnexpectedStoreErrorEvent;
.super Lcom/soomla/events/SoomlaEvent;
.source "UnexpectedStoreErrorEvent.java"


# instance fields
.field private mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "Unknown error"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-direct {p0, p2}, Lcom/soomla/events/SoomlaEvent;-><init>(Ljava/lang/Object;)V

    .line 47
    iput-object p1, p0, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;->mMessage:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/soomla/store/events/UnexpectedStoreErrorEvent;->mMessage:Ljava/lang/String;

    return-object v0
.end method
