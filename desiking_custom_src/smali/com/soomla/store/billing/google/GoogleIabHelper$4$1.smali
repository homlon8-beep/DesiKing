.class Lcom/soomla/store/billing/google/GoogleIabHelper$4$1;
.super Ljava/lang/Object;
.source "GoogleIabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/billing/google/GoogleIabHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/soomla/store/billing/google/GoogleIabHelper$4;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/soomla/store/billing/google/GoogleIabHelper$4;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4$1;->this$1:Lcom/soomla/store/billing/google/GoogleIabHelper$4;

    iput-object p2, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4$1;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 489
    iget-object v0, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4$1;->this$1:Lcom/soomla/store/billing/google/GoogleIabHelper$4;

    iget-object v2, v0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->val$singleListener:Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;

    iget-object v0, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4$1;->this$1:Lcom/soomla/store/billing/google/GoogleIabHelper$4;

    iget-object v0, v0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->val$purchases:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/billing/IabPurchase;

    iget-object v1, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4$1;->val$results:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/soomla/store/billing/IabResult;

    invoke-interface {v2, v0, v1}, Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lcom/soomla/store/billing/IabPurchase;Lcom/soomla/store/billing/IabResult;)V

    .line 490
    return-void
.end method
