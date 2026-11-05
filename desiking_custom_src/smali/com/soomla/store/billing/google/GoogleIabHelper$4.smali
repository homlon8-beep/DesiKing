.class Lcom/soomla/store/billing/google/GoogleIabHelper$4;
.super Ljava/lang/Object;
.source "GoogleIabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/billing/google/GoogleIabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/soomla/store/billing/google/GoogleIabHelper;Ljava/util/List;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    iput-object p2, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->val$singleListener:Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->val$multiListener:Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 473
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/store/billing/IabResult;>;"
    iget-object v4, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->val$purchases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/soomla/store/billing/IabPurchase;

    .line 476
    .local v2, "purchase":Lcom/soomla/store/billing/IabPurchase;
    :try_start_0
    iget-object v4, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-virtual {v4, v2}, Lcom/soomla/store/billing/google/GoogleIabHelper;->consume(Lcom/soomla/store/billing/IabPurchase;)V

    .line 477
    new-instance v4, Lcom/soomla/store/billing/IabResult;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successful consume of sku "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/soomla/store/billing/IabPurchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/soomla/store/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "ex":Lcom/soomla/store/billing/IabException;
    invoke-virtual {v0}, Lcom/soomla/store/billing/IabException;->getResult()Lcom/soomla/store/billing/IabResult;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    .end local v0    # "ex":Lcom/soomla/store/billing/IabException;
    .end local v2    # "purchase":Lcom/soomla/store/billing/IabPurchase;
    :cond_0
    iget-object v4, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-static {v4}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$1100(Lcom/soomla/store/billing/google/GoogleIabHelper;)V

    .line 486
    iget-object v4, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->val$singleListener:Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;

    if-eqz v4, :cond_1

    .line 487
    iget-object v4, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/soomla/store/billing/google/GoogleIabHelper$4$1;

    invoke-direct {v5, p0, v3}, Lcom/soomla/store/billing/google/GoogleIabHelper$4$1;-><init>(Lcom/soomla/store/billing/google/GoogleIabHelper$4;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 493
    :cond_1
    iget-object v4, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->val$multiListener:Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;

    if-eqz v4, :cond_2

    .line 494
    iget-object v4, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/soomla/store/billing/google/GoogleIabHelper$4$2;

    invoke-direct {v5, p0, v3}, Lcom/soomla/store/billing/google/GoogleIabHelper$4$2;-><init>(Lcom/soomla/store/billing/google/GoogleIabHelper$4;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 500
    :cond_2
    return-void
.end method
