.class Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabPurchaseFinishedListener;
.super Ljava/lang/Object;
.source "GooglePlayIabService.java"

# interfaces
.implements Lcom/soomla/store/billing/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/store/billing/google/GooglePlayIabService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnIabPurchaseFinishedListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V
    .locals 4
    .param p1, "result"    # Lcom/soomla/store/billing/IabResult;
    .param p2, "purchase"    # Lcom/soomla/store/billing/IabPurchase;

    .prologue
    const/4 v3, 0x0

    .line 371
    const-string v0, "SOOMLA GooglePlayIabService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IabPurchase finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$102(Lcom/soomla/store/billing/google/GooglePlayIabService;Z)Z

    .line 375
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabResult;->getResponse()I

    move-result v0

    if-nez v0, :cond_0

    .line 377
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v0

    invoke-static {v0}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$200(Lcom/soomla/store/billing/google/GooglePlayIabService;)Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;->success(Lcom/soomla/store/billing/IabPurchase;)V

    .line 388
    :goto_0
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$202(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;)Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    .line 390
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$000(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V

    .line 391
    return-void

    .line 378
    :cond_0
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabResult;->getResponse()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 380
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v0

    invoke-static {v0}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$200(Lcom/soomla/store/billing/google/GooglePlayIabService;)Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;->cancelled(Lcom/soomla/store/billing/IabPurchase;)V

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabResult;->getResponse()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 383
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v0

    invoke-static {v0}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$200(Lcom/soomla/store/billing/google/GooglePlayIabService;)Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;->alreadyOwned(Lcom/soomla/store/billing/IabPurchase;)V

    goto :goto_0

    .line 386
    :cond_2
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v0

    invoke-static {v0}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$200(Lcom/soomla/store/billing/google/GooglePlayIabService;)Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/soomla/store/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method
