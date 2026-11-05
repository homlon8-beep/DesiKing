.class Lcom/vungle/VunglePlugin$2$1;
.super Ljava/lang/Object;
.source "VunglePlugin.java"

# interfaces
.implements Lcom/vungle/publisher/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/VunglePlugin$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vungle/VunglePlugin$2;


# direct methods
.method constructor <init>(Lcom/vungle/VunglePlugin$2;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/vungle/VunglePlugin$2$1;->this$1:Lcom/vungle/VunglePlugin$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdEnd(ZZ)V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/vungle/VunglePlugin$2$1;->this$1:Lcom/vungle/VunglePlugin$2;

    iget-object v1, v0, Lcom/vungle/VunglePlugin$2;->this$0:Lcom/vungle/VunglePlugin;

    const-string v2, "OnAdEnd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/vungle/VunglePlugin;->access$100(Lcom/vungle/VunglePlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    .line 137
    :cond_0
    const-string v0, "0"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public onAdPlayableChanged(Z)V
    .locals 3

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/vungle/VunglePlugin$2$1;->this$1:Lcom/vungle/VunglePlugin$2;

    iget-object v0, v0, Lcom/vungle/VunglePlugin$2;->this$0:Lcom/vungle/VunglePlugin;

    const-string v1, "OnCachedAdAvailable"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/vungle/VunglePlugin;->access$100(Lcom/vungle/VunglePlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/vungle/VunglePlugin$2$1;->this$1:Lcom/vungle/VunglePlugin$2;

    iget-object v1, v0, Lcom/vungle/VunglePlugin$2;->this$0:Lcom/vungle/VunglePlugin;

    const-string v2, "OnAdPlayable"

    if-eqz p1, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/vungle/VunglePlugin;->access$100(Lcom/vungle/VunglePlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 145
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public onAdStart()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vungle/VunglePlugin$2$1;->this$1:Lcom/vungle/VunglePlugin$2;

    iget-object v0, v0, Lcom/vungle/VunglePlugin$2;->this$0:Lcom/vungle/VunglePlugin;

    const-string v1, "OnAdStart"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/vungle/VunglePlugin;->access$100(Lcom/vungle/VunglePlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public onAdUnavailable(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 131
    const-string v0, "Vungle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdUnavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public onVideoView(ZII)V
    .locals 5

    .prologue
    .line 124
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%b-%d-%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/vungle/VunglePlugin$2$1;->this$1:Lcom/vungle/VunglePlugin$2;

    iget-object v1, v1, Lcom/vungle/VunglePlugin$2;->this$0:Lcom/vungle/VunglePlugin;

    const-string v2, "OnVideoView"

    invoke-static {v1, v2, v0}, Lcom/vungle/VunglePlugin;->access$100(Lcom/vungle/VunglePlugin;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method
