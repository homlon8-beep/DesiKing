.class Lcom/soomla/store/billing/IabHelper$7;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/billing/IabHelper;->setupSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/billing/IabHelper;

.field final synthetic val$listener:Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/soomla/store/billing/IabHelper$7;->this$0:Lcom/soomla/store/billing/IabHelper;

    iput-object p2, p0, Lcom/soomla/store/billing/IabHelper$7;->val$listener:Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/soomla/store/billing/IabHelper$7;->val$listener:Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;

    new-instance v1, Lcom/soomla/store/billing/IabResult;

    const/4 v2, 0x0

    const-string v3, "Setup successful."

    invoke-direct {v1, v2, v3}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/soomla/store/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/soomla/store/billing/IabResult;)V

    .line 409
    return-void
.end method
