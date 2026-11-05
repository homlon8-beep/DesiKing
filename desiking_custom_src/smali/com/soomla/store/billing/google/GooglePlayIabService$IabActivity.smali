.class public Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;
.super Landroid/app/Activity;
.source "GooglePlayIabService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/store/billing/google/GooglePlayIabService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IabActivity"
.end annotation


# instance fields
.field firstTime:Z

.field private mInProgressDestroy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->mInProgressDestroy:Z

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->firstTime:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 434
    const-string v0, "SOOMLA GooglePlayIabService"

    const-string v1, "onActivityResult 1"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v0

    invoke-static {v0}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$300(Lcom/soomla/store/billing/google/GooglePlayIabService;)Lcom/soomla/store/billing/google/GoogleIabHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/soomla/store/billing/google/GoogleIabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    const-string v0, "SOOMLA GooglePlayIabService"

    const-string v1, "onActivityResult 2"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 439
    :cond_0
    const-string v0, "SOOMLA GooglePlayIabService"

    const-string v1, "onActivityResult 3"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->finish()V

    .line 441
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 405
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 407
    invoke-virtual {p0}, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 408
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "ID#sku"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, "productId":Ljava/lang/String;
    const-string v6, "ID#extraData"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, "payload":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabPurchaseFinishedListener;

    invoke-direct {v3}, Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabPurchaseFinishedListener;-><init>()V

    .line 413
    .local v3, "onIabPurchaseFinishedListener":Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabPurchaseFinishedListener;
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v6

    invoke-static {v6}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$300(Lcom/soomla/store/billing/google/GooglePlayIabService;)Lcom/soomla/store/billing/google/GoogleIabHelper;

    move-result-object v6

    invoke-virtual {v6, p0, v5, v3, v4}, Lcom/soomla/store/billing/google/GoogleIabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Lcom/soomla/store/billing/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$102(Lcom/soomla/store/billing/google/GooglePlayIabService;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 430
    .end local v3    # "onIabPurchaseFinishedListener":Lcom/soomla/store/billing/google/GooglePlayIabService$OnIabPurchaseFinishedListener;
    :cond_0
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/IllegalStateException;
    iput-boolean v8, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->mInProgressDestroy:Z

    .line 417
    invoke-virtual {p0}, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->finish()V

    goto :goto_0

    .line 418
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "SOOMLA GooglePlayIabService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->finish()V

    .line 422
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error purchasing item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "msg":Ljava/lang/String;
    const-string v6, "SOOMLA GooglePlayIabService"

    invoke-static {v6, v2}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$102(Lcom/soomla/store/billing/google/GooglePlayIabService;Z)Z

    .line 425
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v6

    invoke-static {v6}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$200(Lcom/soomla/store/billing/google/GooglePlayIabService;)Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 426
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v6

    invoke-static {v6}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$200(Lcom/soomla/store/billing/google/GooglePlayIabService;)Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;->fail(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$202(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;)Lcom/soomla/store/billing/IabCallbacks$OnPurchaseListener;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 480
    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "onDestroy 1"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-boolean v1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->mInProgressDestroy:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v1

    invoke-static {v1}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$100(Lcom/soomla/store/billing/google/GooglePlayIabService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "onDestroy 2"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-static {}, Lcom/soomla/store/billing/google/GooglePlayIabService;->getInstance()Lcom/soomla/store/billing/google/GooglePlayIabService;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/soomla/store/billing/google/GooglePlayIabService;->access$102(Lcom/soomla/store/billing/google/GooglePlayIabService;Z)Z

    .line 485
    const-string v0, "IabActivity is destroyed during purchase."

    .line 486
    .local v0, "err":Ljava/lang/String;
    const-string v1, "SOOMLA GooglePlayIabService"

    invoke-static {v1, v0}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/16 v1, 0x2711

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 497
    .end local v0    # "err":Ljava/lang/String;
    :cond_0
    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "onDestroy 4"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 499
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 445
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 446
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 451
    const-string v0, "SOOMLA GooglePlayIabService"

    const-string v1, "onResume 1"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->firstTime:Z

    .line 454
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 463
    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "onStart 1"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 466
    iget-boolean v1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->firstTime:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 467
    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "onStart 2"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/16 v1, 0x2711

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 470
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    .local v0, "tabIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 472
    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "onStart 3"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0, v0}, Lcom/soomla/store/billing/google/GooglePlayIabService$IabActivity;->startActivity(Landroid/content/Intent;)V

    .line 475
    .end local v0    # "tabIntent":Landroid/content/Intent;
    :cond_0
    const-string v1, "SOOMLA GooglePlayIabService"

    const-string v2, "onStart 4"

    invoke-static {v1, v2}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 458
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 459
    return-void
.end method
