.class Lcom/vungle/VunglePlugin$3;
.super Ljava/lang/Object;
.source "VunglePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/VunglePlugin;->playAd(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/VunglePlugin;

.field final synthetic val$incentivized:Z

.field final synthetic val$user:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/VunglePlugin;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/vungle/VunglePlugin$3;->this$0:Lcom/vungle/VunglePlugin;

    iput-boolean p2, p0, Lcom/vungle/VunglePlugin$3;->val$incentivized:Z

    iput-object p3, p0, Lcom/vungle/VunglePlugin$3;->val$user:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lcom/vungle/publisher/AdConfig;

    invoke-direct {v0}, Lcom/vungle/publisher/AdConfig;-><init>()V

    .line 203
    iget-boolean v1, p0, Lcom/vungle/VunglePlugin$3;->val$incentivized:Z

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivized(Z)V

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setTransitionAnimationEnabled(Z)V

    .line 206
    iget-boolean v1, p0, Lcom/vungle/VunglePlugin$3;->val$incentivized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vungle/VunglePlugin$3;->val$user:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vungle/VunglePlugin$3;->val$user:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/vungle/VunglePlugin$3;->val$user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivizedUserId(Ljava/lang/String;)V

    .line 209
    :cond_0
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/VunglePub;->playAd(Lcom/vungle/publisher/AdConfig;)V

    .line 210
    return-void
.end method
