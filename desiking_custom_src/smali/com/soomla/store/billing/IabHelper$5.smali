.class Lcom/soomla/store/billing/IabHelper$5;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/billing/IabHelper;->purchaseFailed(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/billing/IabHelper;

.field final synthetic val$purchase:Lcom/soomla/store/billing/IabPurchase;

.field final synthetic val$result:Lcom/soomla/store/billing/IabResult;


# direct methods
.method constructor <init>(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/soomla/store/billing/IabHelper$5;->this$0:Lcom/soomla/store/billing/IabHelper;

    iput-object p2, p0, Lcom/soomla/store/billing/IabHelper$5;->val$result:Lcom/soomla/store/billing/IabResult;

    iput-object p3, p0, Lcom/soomla/store/billing/IabHelper$5;->val$purchase:Lcom/soomla/store/billing/IabPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/soomla/store/billing/IabHelper$5;->this$0:Lcom/soomla/store/billing/IabHelper;

    invoke-static {v0}, Lcom/soomla/store/billing/IabHelper;->access$200(Lcom/soomla/store/billing/IabHelper;)Lcom/soomla/store/billing/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/soomla/store/billing/IabHelper$5;->val$result:Lcom/soomla/store/billing/IabResult;

    iget-object v2, p0, Lcom/soomla/store/billing/IabHelper$5;->val$purchase:Lcom/soomla/store/billing/IabPurchase;

    invoke-interface {v0, v1, v2}, Lcom/soomla/store/billing/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabPurchase;)V

    .line 358
    return-void
.end method
