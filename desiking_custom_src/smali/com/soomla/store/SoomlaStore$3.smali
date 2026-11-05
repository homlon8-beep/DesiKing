.class Lcom/soomla/store/SoomlaStore$3;
.super Ljava/lang/Object;
.source "SoomlaStore.java"

# interfaces
.implements Lcom/soomla/store/billing/IabCallbacks$IabInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/SoomlaStore;->restoreTransactions(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/SoomlaStore;

.field final synthetic val$followedByRefreshItemsDetails:Z


# direct methods
.method constructor <init>(Lcom/soomla/store/SoomlaStore;Z)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/soomla/store/SoomlaStore$3;->this$0:Lcom/soomla/store/SoomlaStore;

    iput-boolean p2, p0, Lcom/soomla/store/SoomlaStore$3;->val$followedByRefreshItemsDetails:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore$3;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v0, p1}, Lcom/soomla/store/SoomlaStore;->access$400(Lcom/soomla/store/SoomlaStore;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public success(Z)V
    .locals 5
    .param p1, "alreadyInBg"    # Z

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/soomla/store/SoomlaStore$3;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v2}, Lcom/soomla/store/SoomlaStore;->access$000(Lcom/soomla/store/SoomlaStore;)V

    .line 178
    :cond_0
    const-string v2, "SOOMLA SoomlaStore"

    const-string v3, "Setup successful, restoring purchases"

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v1, Lcom/soomla/store/SoomlaStore$3$1;

    invoke-direct {v1, p0}, Lcom/soomla/store/SoomlaStore$3$1;-><init>(Lcom/soomla/store/SoomlaStore$3;)V

    .line 209
    .local v1, "restorePurchasesListener":Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/RestoreTransactionsStartedEvent;

    invoke-direct {v3}, Lcom/soomla/store/events/RestoreTransactionsStartedEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/soomla/store/SoomlaStore$3;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v2}, Lcom/soomla/store/SoomlaStore;->access$300(Lcom/soomla/store/SoomlaStore;)Lcom/soomla/store/billing/IIabService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/soomla/store/billing/IIabService;->restorePurchasesAsync(Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "SOOMLA SoomlaStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t proceed with restorePurchases. error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t proceed with restorePurchases. error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method
