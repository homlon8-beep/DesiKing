.class Lcom/soomla/store/billing/google/GoogleIabHelper$1;
.super Ljava/lang/Object;
.source "GoogleIabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/billing/google/GoogleIabHelper;->startSetupInner()V
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
    .line 94
    iput-object p1, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$1;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 103
    invoke-static {}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Billing service connected."

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$1;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$102(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 105
    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Checking for in-app billing 3 support."

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$1;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-static {v3}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$100(Lcom/soomla/store/billing/google/GoogleIabHelper;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v3

    const/4 v4, 0x3

    const-string v5, "inapp"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, "response":I
    if-eqz v2, :cond_0

    .line 112
    iget-object v3, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$1;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    new-instance v4, Lcom/soomla/store/billing/IabResult;

    const-string v5, "Error checking for billing v3 support."

    invoke-direct {v4, v2, v5}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-static {v3, v4}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$200(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/soomla/store/billing/IabResult;)V

    .line 123
    .end local v2    # "response":I
    :goto_0
    return-void

    .line 115
    .restart local v2    # "response":I
    :cond_0
    invoke-static {}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In-app billing version 3 supported for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$1;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    invoke-static {v3}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$300(Lcom/soomla/store/billing/google/GoogleIabHelper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    .end local v2    # "response":I
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$1;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    new-instance v4, Lcom/soomla/store/billing/IabResult;

    const/16 v5, -0x3e9

    const-string v6, "RemoteException while setting up in-app billing."

    invoke-direct {v4, v5, v6}, Lcom/soomla/store/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-static {v3, v4}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$400(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/soomla/store/billing/IabResult;)V

    .line 121
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 97
    invoke-static {}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Billing service disconnected."

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/soomla/store/billing/google/GoogleIabHelper$1;->this$0:Lcom/soomla/store/billing/google/GoogleIabHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/soomla/store/billing/google/GoogleIabHelper;->access$102(Lcom/soomla/store/billing/google/GoogleIabHelper;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 99
    return-void
.end method
