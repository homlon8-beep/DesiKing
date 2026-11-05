.class Lcom/soomla/store/billing/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/billing/IabHelper;->restorePurchasesFailed(Lcom/soomla/store/billing/IabResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/billing/IabHelper;

.field final synthetic val$result:Lcom/soomla/store/billing/IabResult;


# direct methods
.method constructor <init>(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabResult;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/soomla/store/billing/IabHelper$2;->this$0:Lcom/soomla/store/billing/IabHelper;

    iput-object p2, p0, Lcom/soomla/store/billing/IabHelper$2;->val$result:Lcom/soomla/store/billing/IabResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lcom/soomla/store/billing/IabHelper$2;->this$0:Lcom/soomla/store/billing/IabHelper;

    invoke-static {v0}, Lcom/soomla/store/billing/IabHelper;->access$000(Lcom/soomla/store/billing/IabHelper;)Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/soomla/store/billing/IabHelper$2;->val$result:Lcom/soomla/store/billing/IabResult;

    invoke-interface {v0, v1, v2}, Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;->onRestorePurchasessFinished(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabInventory;)V

    .line 283
    iget-object v0, p0, Lcom/soomla/store/billing/IabHelper$2;->this$0:Lcom/soomla/store/billing/IabHelper;

    invoke-static {v0, v2}, Lcom/soomla/store/billing/IabHelper;->access$002(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;)Lcom/soomla/store/billing/IabHelper$RestorePurchasessFinishedListener;

    .line 284
    return-void
.end method
