.class Lcom/soomla/store/billing/IabHelper$8;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/billing/IabHelper;->setupFailed(Lcom/soomla/store/billing/IabResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/billing/IabHelper;

.field final synthetic val$listener:Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;

.field final synthetic val$result:Lcom/soomla/store/billing/IabResult;


# direct methods
.method constructor <init>(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;Lcom/soomla/store/billing/IabResult;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/soomla/store/billing/IabHelper$8;->this$0:Lcom/soomla/store/billing/IabHelper;

    iput-object p2, p0, Lcom/soomla/store/billing/IabHelper$8;->val$listener:Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;

    iput-object p3, p0, Lcom/soomla/store/billing/IabHelper$8;->val$result:Lcom/soomla/store/billing/IabResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/soomla/store/billing/IabHelper$8;->val$listener:Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;

    iget-object v1, p0, Lcom/soomla/store/billing/IabHelper$8;->val$result:Lcom/soomla/store/billing/IabResult;

    invoke-interface {v0, v1}, Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/soomla/store/billing/IabResult;)V

    .line 432
    return-void
.end method
