.class public interface abstract Lcom/soomla/store/billing/IIabService;
.super Ljava/lang/Object;
.source "IIabService.java"


# virtual methods
.method public abstract consume(Lcom/soomla/store/billing/IabPurchase;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/billing/IabException;
        }
    .end annotation
.end method

.method public abstract consumeAsync(Lcom/soomla/store/billing/IabPurchase;Lcom/soomla/store/billing/IabCallbacks$OnConsumeListener;)V
.end method

.method public abstract fetchSkusDetailsAsync(Ljava/util/List;Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract initializeBillingService(Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V
.end method

.method public abstract isIabServiceInitialized()Z
.end method

.method public abstract launchPurchaseFlow(Ljava/lang/String;Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;Ljava/lang/String;)V
.end method

.method public abstract restorePurchasesAsync(Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;)V
.end method

.method public abstract startIabServiceInBg(Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V
.end method

.method public abstract stopIabServiceInBg(Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V
.end method
