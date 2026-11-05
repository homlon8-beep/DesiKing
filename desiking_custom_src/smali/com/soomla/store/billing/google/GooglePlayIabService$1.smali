.class Lcom/soomla/store/billing/google/GooglePlayIabService$1;
.super Ljava/lang/Object;
.source "GooglePlayIabService.java"

# interfaces
.implements Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/billing/google/GooglePlayIabService;->consumeAsync(Lcom/soomla/store/billing/IabPurchase;Lcom/soomla/store/billing/IabCallbacks$OnConsumeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/billing/google/GooglePlayIabService;

.field final synthetic val$consumeListener:Lcom/soomla/store/billing/IabCallbacks$OnConsumeListener;


# direct methods
.method constructor <init>(Lcom/soomla/store/billing/google/GooglePlayIabService;Lcom/soomla/store/billing/IabCallbacks$OnConsumeListener;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$1;->this$0:Lcom/soomla/store/billing/google/GooglePlayIabService;

    iput-object p2, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$1;->val$consumeListener:Lcom/soomla/store/billing/IabCallbacks$OnConsumeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/soomla/store/billing/IabPurchase;Lcom/soomla/store/billing/IabResult;)V
    .locals 2
    .param p1, "purchase"    # Lcom/soomla/store/billing/IabPurchase;
    .param p2, "result"    # Lcom/soomla/store/billing/IabResult;

    .prologue
    .line 115
    invoke-virtual {p2}, Lcom/soomla/store/billing/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$1;->val$consumeListener:Lcom/soomla/store/billing/IabCallbacks$OnConsumeListener;

    invoke-interface {v0, p1}, Lcom/soomla/store/billing/IabCallbacks$OnConsumeListener;->success(Lcom/soomla/store/billing/IabPurchase;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/soomla/store/billing/google/GooglePlayIabService$1;->val$consumeListener:Lcom/soomla/store/billing/IabCallbacks$OnConsumeListener;

    invoke-virtual {p2}, Lcom/soomla/store/billing/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/soomla/store/billing/IabCallbacks$OnConsumeListener;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method
