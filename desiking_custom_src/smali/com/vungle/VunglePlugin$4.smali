.class Lcom/vungle/VunglePlugin$4;
.super Ljava/lang/Object;
.source "VunglePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/VunglePlugin;->playAdEx(ZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/VunglePlugin;

.field final synthetic val$alerTitle:Ljava/lang/String;

.field final synthetic val$alertClose:Ljava/lang/String;

.field final synthetic val$alertContinue:Ljava/lang/String;

.field final synthetic val$alertText:Ljava/lang/String;

.field final synthetic val$incentivized:Z

.field final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/VunglePlugin;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/vungle/VunglePlugin$4;->this$0:Lcom/vungle/VunglePlugin;

    iput-boolean p2, p0, Lcom/vungle/VunglePlugin$4;->val$incentivized:Z

    iput-object p3, p0, Lcom/vungle/VunglePlugin$4;->val$user:Ljava/lang/String;

    iput-object p4, p0, Lcom/vungle/VunglePlugin$4;->val$alerTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/vungle/VunglePlugin$4;->val$alertText:Ljava/lang/String;

    iput-object p6, p0, Lcom/vungle/VunglePlugin$4;->val$alertClose:Ljava/lang/String;

    iput-object p7, p0, Lcom/vungle/VunglePlugin$4;->val$alertContinue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    new-instance v0, Lcom/vungle/publisher/AdConfig;

    invoke-direct {v0}, Lcom/vungle/publisher/AdConfig;-><init>()V

    .line 224
    iget-boolean v1, p0, Lcom/vungle/VunglePlugin$4;->val$incentivized:Z

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivized(Z)V

    .line 225
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setTransitionAnimationEnabled(Z)V

    .line 227
    iget-boolean v1, p0, Lcom/vungle/VunglePlugin$4;->val$incentivized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$user:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$user:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivizedUserId(Ljava/lang/String;)V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$alerTitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$alerTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$alerTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogTitle(Ljava/lang/String;)V

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$alertText:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$alertText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$alertText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogBodyText(Ljava/lang/String;)V

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$alertClose:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$alertClose:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 234
    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$alertClose:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogCloseButtonText(Ljava/lang/String;)V

    .line 235
    :cond_3
    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$alertContinue:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$alertContinue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 236
    iget-object v1, p0, Lcom/vungle/VunglePlugin$4;->val$alertContinue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogKeepWatchingButtonText(Ljava/lang/String;)V

    .line 238
    :cond_4
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/VunglePub;->playAd(Lcom/vungle/publisher/AdConfig;)V

    .line 239
    return-void
.end method
