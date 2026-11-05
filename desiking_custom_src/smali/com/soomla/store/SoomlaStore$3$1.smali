.class Lcom/soomla/store/SoomlaStore$3$1;
.super Ljava/lang/Object;
.source "SoomlaStore.java"

# interfaces
.implements Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/SoomlaStore$3;->success(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/soomla/store/SoomlaStore$3;


# direct methods
.method constructor <init>(Lcom/soomla/store/SoomlaStore$3;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/soomla/store/SoomlaStore$3$1;->this$1:Lcom/soomla/store/SoomlaStore$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore$3$1;->this$1:Lcom/soomla/store/SoomlaStore$3;

    iget-object v0, v0, Lcom/soomla/store/SoomlaStore$3;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v0, p1}, Lcom/soomla/store/SoomlaStore;->access$200(Lcom/soomla/store/SoomlaStore;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/billing/IabPurchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/billing/IabPurchase;>;"
    const-string v2, "SOOMLA SoomlaStore"

    const-string v3, "Transactions restored"

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/soomla/store/billing/IabPurchase;

    .line 188
    .local v1, "iabPurchase":Lcom/soomla/store/billing/IabPurchase;
    const-string v2, "SOOMLA SoomlaStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got owned item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/soomla/store/billing/IabPurchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/soomla/store/SoomlaStore$3$1;->this$1:Lcom/soomla/store/SoomlaStore$3;

    iget-object v2, v2, Lcom/soomla/store/SoomlaStore$3;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v2, v1}, Lcom/soomla/store/SoomlaStore;->access$100(Lcom/soomla/store/SoomlaStore;Lcom/soomla/store/billing/IabPurchase;)V

    goto :goto_0

    .line 194
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "iabPurchase":Lcom/soomla/store/billing/IabPurchase;
    :cond_0
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/soomla/store/events/RestoreTransactionsFinishedEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 197
    iget-object v2, p0, Lcom/soomla/store/SoomlaStore$3$1;->this$1:Lcom/soomla/store/SoomlaStore$3;

    iget-boolean v2, v2, Lcom/soomla/store/SoomlaStore$3;->val$followedByRefreshItemsDetails:Z

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/soomla/store/SoomlaStore$3$1;->this$1:Lcom/soomla/store/SoomlaStore$3;

    iget-object v2, v2, Lcom/soomla/store/SoomlaStore$3;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-virtual {v2}, Lcom/soomla/store/SoomlaStore;->refreshMarketItemsDetails()V

    .line 200
    :cond_1
    return-void
.end method
