.class Lcom/soomla/store/billing/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/billing/IabHelper;->fetchSkusDetailsSuccess(Lcom/soomla/store/billing/IabInventory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/billing/IabHelper;

.field final synthetic val$inventory:Lcom/soomla/store/billing/IabInventory;


# direct methods
.method constructor <init>(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabInventory;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/soomla/store/billing/IabHelper$3;->this$0:Lcom/soomla/store/billing/IabHelper;

    iput-object p2, p0, Lcom/soomla/store/billing/IabHelper$3;->val$inventory:Lcom/soomla/store/billing/IabInventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 304
    new-instance v0, Lcom/soomla/store/billing/IabResult;

    const/4 v1, 0x0

    const-string v2, "IabInventory fetch details successful."

    invoke-direct {v0, v1, v2}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    .line 305
    .local v0, "result":Lcom/soomla/store/billing/IabResult;
    iget-object v1, p0, Lcom/soomla/store/billing/IabHelper$3;->this$0:Lcom/soomla/store/billing/IabHelper;

    invoke-static {v1}, Lcom/soomla/store/billing/IabHelper;->access$100(Lcom/soomla/store/billing/IabHelper;)Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/soomla/store/billing/IabHelper$3;->val$inventory:Lcom/soomla/store/billing/IabInventory;

    invoke-interface {v1, v0, v2}, Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;->onFetchSkusDetailsFinished(Lcom/soomla/store/billing/IabResult;Lcom/soomla/store/billing/IabInventory;)V

    .line 307
    iget-object v1, p0, Lcom/soomla/store/billing/IabHelper$3;->this$0:Lcom/soomla/store/billing/IabHelper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/soomla/store/billing/IabHelper;->access$102(Lcom/soomla/store/billing/IabHelper;Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;)Lcom/soomla/store/billing/IabHelper$FetchSkusDetailsFinishedListener;

    .line 308
    return-void
.end method
