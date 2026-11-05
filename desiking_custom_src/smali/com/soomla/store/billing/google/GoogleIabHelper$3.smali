.class Lcom/soomla/store/billing/google/GoogleIabHelper$3;
.super Ljava/lang/Object;
.source "GoogleIabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/billing/google/GoogleIabHelper;->fetchSkusDetailsAsyncInner(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

.field final synthetic val$skus:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/soomla/store/billing/google/GoogleIabHelper;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$3;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    iput-object p2, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$3;->val$skus:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 387
    const/4 v1, 0x0

    .line 389
    .local v1, "inv":Lcom/soomla/store/billing/IabInventory;
    :try_start_0
    iget-object v3, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$3;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    iget-object v4, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$3;->val$skus:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$800(Lcom/soomla/store/billing/google/GoogleIabHelper;Ljava/util/List;)Lcom/soomla/store/billing/IabInventory;
    :try_end_0
    .catch Lcom/soomla/store/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 397
    iget-object v3, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$3;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-static {v3, v1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$1000(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/soomla/store/billing/IabInventory;)V

    .line 398
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "ex":Lcom/soomla/store/billing/IabException;
    invoke-virtual {v0}, Lcom/soomla/store/billing/IabException;->getResult()Lcom/soomla/store/billing/IabResult;

    move-result-object v2

    .line 393
    .local v2, "result":Lcom/soomla/store/billing/IabResult;
    iget-object v3, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$3;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-static {v3, v2}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$900(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/soomla/store/billing/IabResult;)V

    goto :goto_0
.end method
