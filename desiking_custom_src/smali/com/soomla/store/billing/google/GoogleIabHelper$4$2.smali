.class Lcom/soomla/store/billing/google/GoogleIabHelper$4$2;
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
    .line 494
    iput-object p1, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4$2;->this$1:Lcom/soomla/store/billing/google/GoogleIabHelper$4;

    iput-object p2, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4$2;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4$2;->this$1:Lcom/soomla/store/billing/google/GoogleIabHelper$4;

    iget-object v0, v0, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->val$multiListener:Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;

    iget-object v1, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4$2;->this$1:Lcom/soomla/store/billing/google/GoogleIabHelper$4;

    iget-object v1, v1, Lcom/soomla/store/billing/google/GoogleIabHelper$4;->val$purchases:Ljava/util/List;

    iget-object v2, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$4$2;->val$results:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;->onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V

    .line 497
    return-void
.end method
