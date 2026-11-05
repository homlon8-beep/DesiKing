.class public final Lcom/vungle/mediation/VungleExtrasBuilder;
.super Ljava/lang/Object;
.source "VungleExtrasBuilder.java"


# static fields
.field static final EXTRA_SOUND_ENABLED:Ljava/lang/String; = "soundEnabled"

.field static final EXTRA_USER_ID:Ljava/lang/String; = "userId"


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vungle/mediation/VungleExtrasBuilder;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method static adConfigWithNetworkExtras(Landroid/os/Bundle;)Lcom/vungle/publisher/AdConfig;
    .locals 3
    .param p0, "networkExtras"    # Landroid/os/Bundle;

    .prologue
    .line 29
    new-instance v0, Lcom/vungle/publisher/AdConfig;

    invoke-direct {v0}, Lcom/vungle/publisher/AdConfig;-><init>()V

    .line 30
    .local v0, "adConfig":Lcom/vungle/publisher/AdConfig;
    if-eqz p0, :cond_0

    .line 31
    const-string v1, "userId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivizedUserId(Ljava/lang/String;)V

    .line 32
    const-string v1, "soundEnabled"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/AdConfig;->setSoundEnabled(Z)V

    .line 34
    :cond_0
    return-object v0
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vungle/mediation/VungleExtrasBuilder;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public setSoundEnabled(Z)Lcom/vungle/mediation/VungleExtrasBuilder;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vungle/mediation/VungleExtrasBuilder;->bundle:Landroid/os/Bundle;

    const-string v1, "soundEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/vungle/mediation/VungleExtrasBuilder;
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/mediation/VungleExtrasBuilder;->bundle:Landroid/os/Bundle;

    const-string v1, "userId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-object p0
.end method
