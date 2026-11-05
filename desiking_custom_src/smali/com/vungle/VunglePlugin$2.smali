.class Lcom/vungle/VunglePlugin$2;
.super Ljava/lang/Object;
.source "VunglePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/VunglePlugin;->init(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/VunglePlugin;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$pluginVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/VunglePlugin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/vungle/VunglePlugin$2;->this$0:Lcom/vungle/VunglePlugin;

    iput-object p2, p0, Lcom/vungle/VunglePlugin$2;->val$pluginVersion:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/VunglePlugin$2;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 106
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/vungle/publisher/env/WrapperFramework;->unity:Lcom/vungle/publisher/env/WrapperFramework;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/inject/Injector;->setWrapperFramework(Lcom/vungle/publisher/env/WrapperFramework;)V

    .line 108
    iget-object v1, p0, Lcom/vungle/VunglePlugin$2;->val$pluginVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/inject/Injector;->setWrapperFrameworkVersion(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/VunglePlugin$2;->this$0:Lcom/vungle/VunglePlugin;

    invoke-static {v1}, Lcom/vungle/VunglePlugin;->access$000(Lcom/vungle/VunglePlugin;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/VunglePlugin$2;->val$appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;)Z

    .line 113
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/vungle/publisher/EventListener;

    const/4 v2, 0x0

    new-instance v3, Lcom/vungle/VunglePlugin$2$1;

    invoke-direct {v3, p0}, Lcom/vungle/VunglePlugin$2$1;-><init>(Lcom/vungle/VunglePlugin$2;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->setEventListeners([Lcom/vungle/publisher/EventListener;)V

    .line 148
    return-void
.end method
