.class public abstract Lcom/soomla/store/billing/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;,
        Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;,
        Lcom/soomla/store/billing/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAsyncInProgress:Z

.field private mAsyncOperation:Ljava/lang/String;

.field private mFetchSkusDetailsFinishedListener:Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;

.field protected mLastOperationSKU:Ljava/lang/String;

.field private mPurchaseListener:Lcom/soomla/store/billing/IabHelper$OnIabPurchaseFinishedListener;

.field private mRestorePurchasessFinishedListener:Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;

.field private mRvsProductionMode:Z

.field private mSetupDone:Z

.field private mSetupFinishedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 493
    const-string v0, "SOOMLA PurchaseObserver"

    sput-object v0, Lcom/soomla/store/billing/IabHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-boolean v0, p0, Lcom/soomla/store/billing/IabHelper;->mRvsProductionMode:Z

    .line 499
    iput-boolean v0, p0, Lcom/soomla/store/billing/IabHelper;->mSetupDone:Z

    .line 501
    iput-boolean v0, p0, Lcom/soomla/store/billing/IabHelper;->mSetupStarted:Z

    .line 504
    iput-boolean v0, p0, Lcom/soomla/store/billing/IabHelper;->mAsyncInProgress:Z

    .line 507
    const-string v0, ""

    iput-object v0, p0, Lcom/soomla/store/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/soomla/store/billing/IabHelper;)Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/soomla/store/billing/IabHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/soomla/store/billing/IabHelper;->mRestorePurchasessFinishedListener:Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;)Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/billing/IabHelper;
    .param p1, "x1"    # Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/soomla/store/billing/IabHelper;->mRestorePurchasessFinishedListener:Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/soomla/store/billing/IabHelper;)Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/soomla/store/billing/IabHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/soomla/store/billing/IabHelper;->mFetchSkusDetailsFinishedListener:Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;)Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/billing/IabHelper;
    .param p1, "x1"    # Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/soomla/store/billing/IabHelper;->mFetchSkusDetailsFinishedListener:Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/soomla/store/billing/IabHelper;)Lcom/soomla/store/billing/IabHelper$OnIabPurchaseFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/soomla/store/billing/IabHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/soomla/store/billing/IabHelper;->mPurchaseListener:Lcom/soomla/store/billing/IabHelper$OnIabPurchaseFinishedListener;

    return-object v0
.end method


# virtual methods
.method protected checkSetupDoneAndThrow(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/soomla/store/billing/IabHelper;->isSetupDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    sget-object v0, Lcom/soomla/store/billing/IabHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state for operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): IAB helper is not set up."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    return-void
.end method

.method protected dispose()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/soomla/store/billing/IabHelper;->mSetupDone:Z

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/soomla/store/billing/IabHelper;->mSetupFinishedListeners:Ljava/util/List;

    .line 238
    return-void
.end method

.method public fetchSkusDetailsAsync(Ljava/util/List;Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "fetchSkusDetails"

    invoke-virtual {p0, v0}, Lcom/soomla/store/billing/IabHelper;->checkSetupDoneAndThrow(Ljava/lang/String;)V

    .line 128
    const-string v0, "fetch skus details"

    invoke-virtual {p0, v0}, Lcom/soomla/store/billing/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 130
    iput-object p2, p0, Lcom/soomla/store/billing/IabHelper;->mFetchSkusDetailsFinishedListener:Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;

    .line 131
    invoke-virtual {p0, p1}, Lcom/soomla/store/billing/IabHelper;->fetchSkusDetailsAsyncInner(Ljava/util/List;)V

    .line 132
    return-void
.end method

.method protected abstract fetchSkusDetailsAsyncInner(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected fetchSkusDetailsFailed(Lcom/soomla/store/billing/IabResult;)V
    .locals 2
    .param p1, "result"    # Lcom/soomla/store/billing/IabResult;

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/soomla/store/billing/IabHelper;->flagEndAsync()V

    .line 324
    iget-object v1, p0, Lcom/soomla/store/billing/IabHelper;->mFetchSkusDetailsFinishedListener:Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;

    if-eqz v1, :cond_0

    .line 325
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 326
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/soomla/store/billing/IabHelper$4;

    invoke-direct {v1, p0, p1}, Lcom/soomla/store/billing/IabHelper$4;-><init>(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method protected fetchSkusDetailsSuccess(Lcom/soomla/store/billing/IabInventory;)V
    .locals 2
    .param p1, "inventory"    # Lcom/soomla/store/billing/IabInventory;

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/soomla/store/billing/IabHelper;->flagEndAsync()V

    .line 300
    iget-object v1, p0, Lcom/soomla/store/billing/IabHelper;->mFetchSkusDetailsFinishedListener:Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;

    if-eqz v1, :cond_0

    .line 301
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 302
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/soomla/store/billing/IabHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/soomla/store/billing/IabHelper$3;-><init>(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabInventory;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method protected declared-synchronized flagEndAsync()V
    .locals 3

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/soomla/store/billing/IabHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ending async operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/soomla/store/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v0, ""

    iput-object v0, p0, Lcom/soomla/store/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/soomla/store/billing/IabHelper;->mAsyncInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    monitor-exit p0

    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized flagStartAsync(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/soomla/store/billing/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/soomla/store/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 462
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/soomla/store/billing/IabHelper;->mAsyncInProgress:Z

    .line 463
    iput-object p1, p0, Lcom/soomla/store/billing/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 464
    sget-object v0, Lcom/soomla/store/billing/IabHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting async operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    monitor-exit p0

    return-void
.end method

.method public isAsyncInProgress()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/soomla/store/billing/IabHelper;->mAsyncInProgress:Z

    return v0
.end method

.method public isSetupDone()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/soomla/store/billing/IabHelper;->mSetupDone:Z

    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Lcom/soomla/store/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/soomla/store/billing/IabHelper$OnIabPurchaseFinishedListener;
    .param p4, "extraData"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/soomla/store/billing/IabHelper;->checkSetupDoneAndThrow(Ljava/lang/String;)V

    .line 97
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lcom/soomla/store/billing/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 99
    iput-object p3, p0, Lcom/soomla/store/billing/IabHelper;->mPurchaseListener:Lcom/soomla/store/billing/IabHelper$OnIabPurchaseFinishedListener;

    .line 100
    iput-object p2, p0, Lcom/soomla/store/billing/IabHelper;->mLastOperationSKU:Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1, p2, p4}, Lcom/soomla/store/billing/IabHelper;->launchPurchaseFlowInner(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected abstract launchPurchaseFlowInner(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected purchaseFailed(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V
    .locals 2
    .param p1, "result"    # Lcom/soomla/store/billing/IabResult;
    .param p2, "purchase"    # Lcom/soomla/store/billing/IabPurchase;

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/soomla/store/billing/IabHelper;->flagEndAsync()V

    .line 350
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 351
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/soomla/store/billing/IabHelper;->mPurchaseListener:Lcom/soomla/store/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v1, :cond_0

    .line 352
    new-instance v1, Lcom/soomla/store/billing/IabHelper$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/soomla/store/billing/IabHelper$5;-><init>(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    :cond_0
    return-void
.end method

.method protected purchaseSucceeded(Lcom/soomla/store/billing/IabPurchase;)V
    .locals 2
    .param p1, "purchase"    # Lcom/soomla/store/billing/IabPurchase;

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/soomla/store/billing/IabHelper;->flagEndAsync()V

    .line 375
    iget-object v1, p0, Lcom/soomla/store/billing/IabHelper;->mPurchaseListener:Lcom/soomla/store/billing/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v1, :cond_0

    .line 376
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 377
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/soomla/store/billing/IabHelper$6;

    invoke-direct {v1, p0, p1}, Lcom/soomla/store/billing/IabHelper$6;-><init>(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabPurchase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public restorePurchasesAsync(Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;

    .prologue
    .line 112
    const-string v0, "restorePurchases"

    invoke-virtual {p0, v0}, Lcom/soomla/store/billing/IabHelper;->checkSetupDoneAndThrow(Ljava/lang/String;)V

    .line 113
    const-string v0, "restore purchases"

    invoke-virtual {p0, v0}, Lcom/soomla/store/billing/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/soomla/store/billing/IabHelper;->mRestorePurchasessFinishedListener:Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;

    .line 116
    invoke-virtual {p0}, Lcom/soomla/store/billing/IabHelper;->restorePurchasesAsyncInner()V

    .line 117
    return-void
.end method

.method protected abstract restorePurchasesAsyncInner()V
.end method

.method protected restorePurchasesFailed(Lcom/soomla/store/billing/IabResult;)V
    .locals 2
    .param p1, "result"    # Lcom/soomla/store/billing/IabResult;

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/soomla/store/billing/IabHelper;->flagEndAsync()V

    .line 277
    iget-object v1, p0, Lcom/soomla/store/billing/IabHelper;->mRestorePurchasessFinishedListener:Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;

    if-eqz v1, :cond_0

    .line 278
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 279
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/soomla/store/billing/IabHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/soomla/store/billing/IabHelper$2;-><init>(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method protected restorePurchasesSuccess(Lcom/soomla/store/billing/IabInventory;)V
    .locals 2
    .param p1, "inventory"    # Lcom/soomla/store/billing/IabInventory;

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/soomla/store/billing/IabHelper;->flagEndAsync()V

    .line 254
    iget-object v1, p0, Lcom/soomla/store/billing/IabHelper;->mRestorePurchasessFinishedListener:Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;

    if-eqz v1, :cond_0

    .line 255
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 256
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/soomla/store/billing/IabHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/soomla/store/billing/IabHelper$1;-><init>(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabInventory;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method protected setRvsProductionMode(Z)V
    .locals 0
    .param p1, "rvsProductionMode"    # Z

    .prologue
    .line 484
    iput-boolean p1, p0, Lcom/soomla/store/billing/IabHelper;->mRvsProductionMode:Z

    .line 485
    return-void
.end method

.method protected setupFailed(Lcom/soomla/store/billing/IabResult;)V
    .locals 4
    .param p1, "result"    # Lcom/soomla/store/billing/IabResult;

    .prologue
    .line 422
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/soomla/store/billing/IabHelper;->mSetupDone:Z

    .line 423
    iget-object v3, p0, Lcom/soomla/store/billing/IabHelper;->mSetupFinishedListeners:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 424
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 425
    .local v0, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/soomla/store/billing/IabHelper;->mSetupFinishedListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;

    .line 426
    .local v2, "listener":Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;
    new-instance v3, Lcom/soomla/store/billing/IabHelper$8;

    invoke-direct {v3, p0, v2, p1}, Lcom/soomla/store/billing/IabHelper$8;-><init>(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;Lcom/soomla/store/billing/IabResult;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 436
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;
    :cond_0
    return-void
.end method

.method protected setupSuccess()V
    .locals 4

    .prologue
    .line 399
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/soomla/store/billing/IabHelper;->mSetupDone:Z

    .line 400
    iget-object v3, p0, Lcom/soomla/store/billing/IabHelper;->mSetupFinishedListeners:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 401
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 402
    .local v0, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/soomla/store/billing/IabHelper;->mSetupFinishedListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;

    .line 403
    .local v2, "listener":Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;
    new-instance v3, Lcom/soomla/store/billing/IabHelper$7;

    invoke-direct {v3, p0, v2}, Lcom/soomla/store/billing/IabHelper$7;-><init>(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 413
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;
    :cond_0
    return-void
.end method

.method public declared-synchronized startSetup(Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/soomla/store/billing/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lcom/soomla/store/billing/IabHelper;->TAG:Ljava/lang/String;

    const-string v1, "The purchasing observer is already started. Just running the post listener."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    new-instance v0, Lcom/soomla/store/billing/IabResult;

    const/4 v1, 0x0

    const-string v2, "Setup successful."

    invoke-direct {v0, v1, v2}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/soomla/store/billing/IabResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 64
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/soomla/store/billing/IabHelper;->mSetupFinishedListeners:Ljava/util/List;

    if-nez v0, :cond_2

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soomla/store/billing/IabHelper;->mSetupFinishedListeners:Ljava/util/List;

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/soomla/store/billing/IabHelper;->mSetupFinishedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-boolean v0, p0, Lcom/soomla/store/billing/IabHelper;->mSetupStarted:Z

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/soomla/store/billing/IabHelper;->mSetupStarted:Z

    .line 73
    sget-object v0, Lcom/soomla/store/billing/IabHelper;->TAG:Ljava/lang/String;

    const-string v1, "Starting in-app billing setup."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/soomla/store/billing/IabHelper;->startSetupInner()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract startSetupInner()V
.end method
