.class public Lcom/soomla/store/billing/google/GooglePlayIabService;
.super Ljava/lang/Object;
.source "GooglePlayIabService.java"

# interfaces
.implements Lcom/soomla/store/billing/IIabService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;,
        Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabPurchaseFinishedListener;,
        Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;,
        Lcom/soomla/store/billing/google/GooglePlayIabService$FetchSkusDetailsFinishedListener;,
        Lcom/soomla/store/billing/google/GooglePlayIabService$RestorePurchasesFinishedListener;
    }
.end annotation


# static fields
.field public static AllowAndroidTestPurchases:Z = false

.field private static final EXTRA_DATA:Ljava/lang/String; = "ID#extraData"

.field public static final PUBLICKEY_KEY:Ljava/lang/String; = "PO#SU#SO#GU"

.field private static final SKU:Ljava/lang/String; = "ID#sku"

.field private static final TAG:Ljava/lang/String; = "SOOMLA GooglePlayIabService"


# instance fields
.field private keepIabServiceOpen:Z

.field private mHelper:Lcom/soomla/store/billing/google/GoogleIabHelper;

.field private mSavedOnPurchaseListener:Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

.field private mWaitingServiceResponse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 526
    const/4 v0, 0x0

    sput-boolean v0, Lcom/soomla/store/billing/google/GooglePlayIabService;->AllowAndroidTestPurchases:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput-boolean v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->keepIabServiceOpen:Z

    .line 512
    iput-boolean v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mWaitingServiceResponse:Z

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mSavedOnPurchaseListener:Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    return-void
.end method

.method static synthetic access$000(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GooglePlayIabService;
    .param p1, "x1"    # Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/soomla/store/billing/google/GooglePlayIabService;->stopIabHelper(Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/soomla/store/billing/google/GooglePlayIabService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GooglePlayIabService;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mWaitingServiceResponse:Z

    return v0
.end method

.method static synthetic access$102(Lcom/soomla/store/billing/google/GooglePlayIabService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GooglePlayIabService;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mWaitingServiceResponse:Z

    return p1
.end method

.method static synthetic access$200(Lcom/soomla/store/billing/google/GooglePlayIabService;)Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;
    .locals 1
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GooglePlayIabService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mSavedOnPurchaseListener:Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;)Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;
    .locals 0
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GooglePlayIabService;
    .param p1, "x1"    # Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mSavedOnPurchaseListener:Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/soomla/store/billing/google/GooglePlayIabService;)Lcom/soomla/store/billing/google/GoogleIabHelper;
    .locals 1
    .param p0, "x0"    # Lcom/soomla/store/billing/google/GooglePlayIabService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mHelper:Lcom/soomla/store/billing/google/GoogleIabHelper;

    return-object v0
.end method

.method public static getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;
    .locals 1

    .prologue
    .line 504
    invoke-static {}, Lcom/soomla/store/SoomlaStore;->getInstance()Lcom/soomla/store/SoomlaStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/soomla/store/SoomlaStore;->getInAppBillingService()Lcom/soomla/store/billing/IIabService;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/billing/google/GooglePlayIabService;

    return-object v0
.end method

.method private declared-synchronized startIabHelper(Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;)V
    .locals 2
    .param p1, "onIabSetupFinishedListener"    # Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/soomla/store/billing/google/GooglePlayIabService;->isIabServiceInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const-string v0, "SOOMLA GooglePlayIabService"

    const-string v1, "The helper is started. Just running the post start function."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;->getIabInitListener()Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;->getIabInitListener()Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/soomla/store/billing/IabCallbacks$IabInitListener;->success(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 206
    :cond_1
    :try_start_1
    const-string v0, "SOOMLA GooglePlayIabService"

    const-string v1, "Creating IAB helper."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-direct {v0}, Lcom/soomla/store/billing/google/GoogleIabHelper;-><init>()V

    iput-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mHelper:Lcom/soomla/store/billing/google/GoogleIabHelper;

    .line 209
    const-string v0, "SOOMLA GooglePlayIabService"

    const-string v1, "IAB helper Starting setup."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mHelper:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-virtual {v0, p1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->startSetup(Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopIabHelper(Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V
    .locals 3
    .param p1, "iabInitListener"    # Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->keepIabServiceOpen:Z

    if-eqz v1, :cond_2

    .line 218
    const-string v0, "Not stopping Google Service b/c the user run \'startIabServiceInBg\'. Keeping it open."

    .line 219
    .local v0, "msg":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 220
    invoke-interface {p1, v0}, Lcom/soomla/store/billing/IabCallbacks$IabInitListener;->fail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 222
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v1, "SOOMLA GooglePlayIabService"

    invoke-static {v1, v0}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    .end local v0    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 227
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mHelper:Lcom/soomla/store/billing/google/GoogleIabHelper;

    if-nez v1, :cond_4

    .line 228
    const-string v0, "Tried to stop Google Service when it was null."

    .line 229
    .restart local v0    # "msg":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 230
    invoke-interface {p1, v0}, Lcom/soomla/store/billing/IabCallbacks$IabInitListener;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_3
    const-string v1, "SOOMLA GooglePlayIabService"

    invoke-static {v1, v0}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mHelper:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-virtual {v1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->isAsyncInProgress()Z

    move-result v1

    if-nez v1, :cond_5

    .line 239
    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "Stopping Google Service"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mHelper:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-virtual {v1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->dispose()V

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mHelper:Lcom/soomla/store/billing/google/GoogleIabHelper;

    .line 242
    if-eqz p1, :cond_0

    .line 243
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/soomla/store/billing/IabCallbacks$IabInitListener;->success(Z)V

    goto :goto_0

    .line 248
    :cond_5
    const-string v0, "Cannot stop Google Service during async process. Will be stopped when async operation is finished."

    .line 249
    .restart local v0    # "msg":Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 250
    invoke-interface {p1, v0}, Lcom/soomla/store/billing/IabCallbacks$IabInitListener;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_6
    const-string v1, "SOOMLA GooglePlayIabService"

    invoke-static {v1, v0}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public consume(Lcom/soomla/store/billing/IabPurchase;)V
    .locals 1
    .param p1, "purchase"    # Lcom/soomla/store/billing/IabPurchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/soomla/store/billing/IabException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mHelper:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-virtual {v0, p1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->consume(Lcom/soomla/store/billing/IabPurchase;)V

    .line 105
    return-void
.end method

.method public consumeAsync(Lcom/soomla/store/billing/IabPurchase;Lcom/soomla/store/billing/IabCallbacks$OnConsumeListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/soomla/store/billing/IabPurchase;
    .param p2, "consumeListener"    # Lcom/soomla/store/billing/IabCallbacks$OnConsumeListener;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mHelper:Lcom/soomla/store/billing/google/GoogleIabHelper;

    new-instance v1, Lcom/soomla/store/billing/google/GooglePlayIabService$1;

    invoke-direct {v1, p0, p2}, Lcom/soomla/store/billing/google/GooglePlayIabService$1;-><init>(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$OnConsumeListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->consumeAsync(Lcom/soomla/store/billing/IabPurchase;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;)V

    .line 124
    return-void
.end method

.method public fetchSkusDetailsAsync(Ljava/util/List;Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;)V
    .locals 2
    .param p2, "fetchSkusDetailsListener"    # Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;
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

    .prologue
    .line 88
    .local p1, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mHelper:Lcom/soomla/store/billing/google/GoogleIabHelper;

    new-instance v1, Lcom/soomla/store/billing/google/GooglePlayIabService$FetchSkusDetailsFinishedListener;

    invoke-direct {v1, p0, p2}, Lcom/soomla/store/billing/google/GooglePlayIabService$FetchSkusDetailsFinishedListener;-><init>(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->fetchSkusDetailsAsync(Ljava/util/List;Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;)V

    .line 89
    return-void
.end method

.method public initializeBillingService(Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V
    .locals 1
    .param p1, "iabListener"    # Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

    .prologue
    .line 54
    new-instance v0, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;

    invoke-direct {v0, p0, p1}, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;-><init>(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V

    invoke-direct {p0, v0}, Lcom/soomla/store/billing/google/GooglePlayIabService;->startIabHelper(Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;)V

    .line 55
    return-void
.end method

.method public isIabServiceInitialized()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mHelper:Lcom/soomla/store/billing/google/GoogleIabHelper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchPurchaseFlow(Ljava/lang/String;Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;Ljava/lang/String;)V
    .locals 9
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "purchaseListener"    # Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;
    .param p3, "extraData"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "store.prefs"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 157
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "PO#SU#SO#GU"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "publicKey":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "[YOUR PUBLIC KEY FROM THE MARKET]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    :cond_0
    const-string v6, "SOOMLA GooglePlayIabService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "You didn\'t provide a public key! You can\'t make purchases. the key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 165
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "ID#sku"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v6, "ID#extraData"

    invoke-virtual {v2, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iput-object p2, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mSavedOnPurchaseListener:Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    .line 170
    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_2

    .line 171
    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 172
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 184
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 174
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(launchPurchaseFlow) Error purchasing item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "msg":Ljava/lang/String;
    const-string v6, "SOOMLA GooglePlayIabService"

    invoke-static {v6, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-interface {p2, v3}, Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restorePurchasesAsync(Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;)V
    .locals 2
    .param p1, "restorePurchasesListener"    # Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->mHelper:Lcom/soomla/store/billing/google/GoogleIabHelper;

    new-instance v1, Lcom/soomla/store/billing/google/GooglePlayIabService$RestorePurchasesFinishedListener;

    invoke-direct {v1, p0, p1}, Lcom/soomla/store/billing/google/GooglePlayIabService$RestorePurchasesFinishedListener;-><init>(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$OnRestorePurchasesListener;)V

    invoke-virtual {v0, v1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->restorePurchasesAsync(Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;)V

    .line 81
    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 6
    .param p1, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "store.prefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 136
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    const-string v3, "PO#SU#SO#GU"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void

    .line 140
    :cond_1
    const-string v3, "PO#SU#SO#GU"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 141
    const-string v1, "publicKey is null or empty. Can\'t initialize store!!"

    .line 142
    .local v1, "err":Ljava/lang/String;
    const-string v3, "SOOMLA GooglePlayIabService"

    invoke-static {v3, v1}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startIabServiceInBg(Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V
    .locals 1
    .param p1, "iabListener"    # Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->keepIabServiceOpen:Z

    .line 63
    new-instance v0, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;

    invoke-direct {v0, p0, p1}, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;-><init>(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V

    invoke-direct {p0, v0}, Lcom/soomla/store/billing/google/GooglePlayIabService;->startIabHelper(Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;)V

    .line 64
    return-void
.end method

.method public stopIabServiceInBg(Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V
    .locals 1
    .param p1, "iabListener"    # Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService;->keepIabServiceOpen:Z

    .line 72
    invoke-direct {p0, p1}, Lcom/soomla/store/billing/google/GooglePlayIabService;->stopIabHelper(Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V

    .line 73
    return-void
.end method
