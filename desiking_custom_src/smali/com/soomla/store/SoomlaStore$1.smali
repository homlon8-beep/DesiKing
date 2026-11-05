.class Lcom/soomla/store/SoomlaStore$1;
.super Ljava/lang/Object;
.source "SoomlaStore.java"

# interfaces
.implements Lcom/soomla/store/billing/IabCallbacks$IabInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/SoomlaStore;->startIabServiceInBg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/SoomlaStore;


# direct methods
.method constructor <init>(Lcom/soomla/store/SoomlaStore;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/soomla/store/SoomlaStore$1;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v0, "SOOMLA SoomlaStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t start billing service in background. error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public success(Z)V
    .locals 2
    .param p1, "alreadyInBg"    # Z

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore$1;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v0}, Lcom/soomla/store/SoomlaStore;->access$000(Lcom/soomla/store/SoomlaStore;)V

    .line 108
    const-string v0, "SOOMLA SoomlaStore"

    const-string v1, "Successfully started billing service in background."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_0
    const-string v0, "SOOMLA SoomlaStore"

    const-string v1, "Couldn\'t start billing service in background. Was already started."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
