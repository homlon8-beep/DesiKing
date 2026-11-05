.class Lcom/soomla/store/billing/google/GooglePlayIabService$RestorePurchasesFinishedListener;
.super Ljava/lang/Object;
.source "GooglePlayIabService.java"

# interfaces
.implements Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/store/billing/google/GooglePlayIabService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestorePurchasesFinishedListener"
.end annotation


# instance fields
.field private mRestorePurchasesListener:Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;

.field final synthetic this$0:Lcom/soomla/store/billing/google/GooglePlayIabService;


# direct methods
.method public constructor <init>(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;)V
    .locals 0
    .param p2, "restorePurchasesListener"    # Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$RestorePurchasesFinishedListener;->this$0:Lcom/soomla/store/billing/google/GooglePlayIabService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p2, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$RestorePurchasesFinishedListener;->mRestorePurchasesListener:Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;

    .line 268
    return-void
.end method


# virtual methods
.method public onRestorePurchasessFinished(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabInventory;)V
    .locals 8
    .param p1, "result"    # Lcom/soomla/store/billing/IabResult;
    .param p2, "inventory"    # Lcom/soomla/store/billing/IabInventory;

    .prologue
    .line 272
    const-string v5, "SOOMLA GooglePlayIabService"

    const-string v6, "Restore Purchases succeeded"

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabResult;->getResponse()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$RestorePurchasesFinishedListener;->mRestorePurchasesListener:Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;

    if-eqz v5, :cond_2

    .line 275
    const-string v5, "inapp"

    invoke-virtual {p2, v5}, Lcom/soomla/store/billing/IabInventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 276
    .local v1, "itemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v3, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/billing/IabPurchase;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 278
    .local v4, "sku":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lcom/soomla/store/billing/IabInventory;->getPurchase(Ljava/lang/String;)Lcom/soomla/store/billing/IabPurchase;

    move-result-object v2

    .line 279
    .local v2, "purchase":Lcom/soomla/store/billing/IabPurchase;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v2    # "purchase":Lcom/soomla/store/billing/IabPurchase;
    .end local v4    # "sku":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$RestorePurchasesFinishedListener;->mRestorePurchasesListener:Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;

    invoke-interface {v5, v3}, Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;->success(Ljava/util/List;)V

    .line 288
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "itemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/billing/IabPurchase;>;"
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$RestorePurchasesFinishedListener;->this$0:Lcom/soomla/store/billing/google/GooglePlayIabService;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$000(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V

    .line 289
    return-void

    .line 284
    :cond_2
    const-string v5, "SOOMLA GooglePlayIabService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wither mRestorePurchasesListener==null OR Restore purchases error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/soomla/store/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v5, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$RestorePurchasesFinishedListener;->mRestorePurchasesListener:Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$RestorePurchasesFinishedListener;->mRestorePurchasesListener:Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;

    invoke-virtual {p1}, Lcom/soomla/store/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;->fail(Ljava/lang/String;)V

    goto :goto_1
.end method
