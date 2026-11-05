.class Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;
.super Ljava/lang/Object;
.source "GooglePlayIabService.java"

# interfaces
.implements Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/store/billing/google/GooglePlayIabService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnIabSetupFinishedListener"
.end annotation


# instance fields
.field private mIabInitListener:Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

.field final synthetic this$0:Lcom/soomla/store/billing/google/GooglePlayIabService;


# direct methods
.method public constructor <init>(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$IabInitListener;)V
    .locals 0
    .param p2, "iabListener"    # Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;->this$0:Lcom/soomla/store/billing/google/GooglePlayIabService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p2, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;->mIabInitListener:Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

    .line 343
    return-void
.end method


# virtual methods
.method public getIabInitListener()Lcom/soomla/store/billing/IabCallbacks$IabInitListener;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;->mIabInitListener:Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

    return-object v0
.end method

.method public onIabSetupFinished(Lcom/soomla/store/billing/IabResult;)V
    .locals 2
    .param p1, "result"    # Lcom/soomla/store/billing/IabResult;

    .prologue
    .line 348
    const-string v0, "SOOMLA GooglePlayIabService"

    const-string v1, "IAB helper Setup finished."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1}, Lcom/soomla/store/billing/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;->mIabInitListener:Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;->mIabInitListener:Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

    invoke-virtual {p1}, Lcom/soomla/store/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/soomla/store/billing/IabCallbacks$IabInitListener;->fail(Ljava/lang/String;)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;->mIabInitListener:Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabSetupFinishedListener;->mIabInitListener:Lcom/soomla/store/billing/IabCallbacks$IabInitListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/soomla/store/billing/IabCallbacks$IabInitListener;->success(Z)V

    goto :goto_0
.end method
