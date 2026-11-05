.class Lcom/soomla/store/SoomlaStore$5;
.super Ljava/lang/Object;
.source "SoomlaStore.java"

# interfaces
.implements Lcom/soomla/store/billing/IabCallbacks$IabInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/SoomlaStore;->buyWithMarket(Lcom/soomla/store/domain/MarketItem;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/SoomlaStore;

.field final synthetic val$marketItem:Lcom/soomla/store/domain/MarketItem;

.field final synthetic val$payload:Ljava/lang/String;

.field final synthetic val$pvi:Lcom/soomla/store/domain/PurchasableVirtualItem;


# direct methods
.method constructor <init>(Lcom/soomla/store/SoomlaStore;Lcom/soomla/store/domain/PurchasableVirtualItem;Lcom/soomla/store/domain/MarketItem;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/soomla/store/SoomlaStore$5;->this$0:Lcom/soomla/store/SoomlaStore;

    iput-object p2, p0, Lcom/soomla/store/SoomlaStore$5;->val$pvi:Lcom/soomla/store/domain/PurchasableVirtualItem;

    iput-object p3, p0, Lcom/soomla/store/SoomlaStore$5;->val$marketItem:Lcom/soomla/store/domain/MarketItem;

    iput-object p4, p0, Lcom/soomla/store/SoomlaStore$5;->val$payload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/soomla/store/SoomlaStore$5;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v0, p1}, Lcom/soomla/store/SoomlaStore;->access$400(Lcom/soomla/store/SoomlaStore;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public success(Z)V
    .locals 5
    .param p1, "alreadyInBg"    # Z

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 362
    iget-object v2, p0, Lcom/soomla/store/SoomlaStore$5;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v2}, Lcom/soomla/store/SoomlaStore;->access$000(Lcom/soomla/store/SoomlaStore;)V

    .line 365
    :cond_0
    new-instance v1, Lcom/soomla/store/SoomlaStore$5$1;

    invoke-direct {v1, p0}, Lcom/soomla/store/SoomlaStore$5$1;-><init>(Lcom/soomla/store/SoomlaStore$5;)V

    .line 412
    .local v1, "purchaseListener":Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v2

    new-instance v3, Lcom/soomla/store/events/MarketPurchaseStartedEvent;

    iget-object v4, p0, Lcom/soomla/store/SoomlaStore$5;->val$pvi:Lcom/soomla/store/domain/PurchasableVirtualItem;

    invoke-direct {v3, v4}, Lcom/soomla/store/events/MarketPurchaseStartedEvent;-><init>(Lcom/soomla/store/domain/PurchasableVirtualItem;)V

    invoke-virtual {v2, v3}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 415
    :try_start_0
    iget-object v2, p0, Lcom/soomla/store/SoomlaStore$5;->this$0:Lcom/soomla/store/SoomlaStore;

    invoke-static {v2}, Lcom/soomla/store/SoomlaStore;->access$300(Lcom/soomla/store/SoomlaStore;)Lcom/soomla/store/billing/IIabService;

    move-result-object v2

    iget-object v3, p0, Lcom/soomla/store/SoomlaStore$5;->val$marketItem:Lcom/soomla/store/domain/MarketItem;

    invoke-virtual {v3}, Lcom/soomla/store/domain/MarketItem;->getProductId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/soomla/store/SoomlaStore$5;->val$payload:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v4}, Lcom/soomla/store/billing/IIabService;->launchPurchaseFlow(Ljava/lang/String;Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "SOOMLA SoomlaStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t proceed with launchPurchaseFlow. error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t proceed with launchPurchaseFlow. error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method
