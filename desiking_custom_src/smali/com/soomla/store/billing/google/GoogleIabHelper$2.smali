.class Lcom/soomla/store/billing/google/GoogleIabHelper$2;
.super Ljava/lang/Object;
.source "GoogleIabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/billing/google/GoogleIabHelper;->restorePurchasesAsyncInner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;


# direct methods
.method constructor <init>(Lcom/soomla/store/billing/google/GoogleIabHelper;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$2;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 365
    const/4 v1, 0x0

    .line 367
    .local v1, "inv":Lcom/soomla/store/billing/IabInventory;
    :try_start_0
    iget-object v3, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$2;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-static {v3}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$500(Lcom/soomla/store/billing/google/GoogleIabHelper;)Lcom/soomla/store/billing/IabInventory;
    :try_end_0
    .catch Lcom/soomla/store/billing/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 375
    iget-object v3, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$2;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-static {v3, v1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$700(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/soomla/store/billing/IabInventory;)V

    .line 376
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "ex":Lcom/soomla/store/billing/IabException;
    invoke-virtual {v0}, Lcom/soomla/store/billing/IabException;->getResult()Lcom/soomla/store/billing/IabResult;

    move-result-object v2

    .line 371
    .local v2, "result":Lcom/soomla/store/billing/IabResult;
    iget-object v3, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$2;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-static {v3, v2}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$600(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/soomla/store/billing/IabResult;)V

    goto :goto_0
.end method
