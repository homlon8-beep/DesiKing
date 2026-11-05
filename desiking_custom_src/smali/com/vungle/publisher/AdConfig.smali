.class public Lcom/vungle/publisher/AdConfig;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/a;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final a:Lcom/vungle/publisher/s;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/vungle/publisher/s;

    invoke-direct {v0}, Lcom/vungle/publisher/s;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/AdConfig;->setTransitionAnimationEnabled(Z)V

    .line 29
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "extra"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "extra"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v1, v0, p2}, Lcom/vungle/publisher/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDelegateAdConfig()Lcom/vungle/publisher/s;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    return-object v0
.end method

.method public getExtra1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtra8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/vungle/publisher/AdConfig;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->getExtras()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogBodyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->getIncentivizedCancelDialogBodyText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogCloseButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->getIncentivizedCancelDialogCloseButtonText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogKeepWatchingButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->getIncentivizedCancelDialogKeepWatchingButtonText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedCancelDialogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->getIncentivizedCancelDialogTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncentivizedUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->getIncentivizedUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()Lcom/vungle/publisher/Orientation;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->getOrientation()Lcom/vungle/publisher/Orientation;

    move-result-object v0

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->getPlacement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBackButtonImmediatelyEnabled()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->isBackButtonImmediatelyEnabled()Z

    move-result v0

    return v0
.end method

.method public isImmersiveMode()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->isImmersiveMode()Z

    move-result v0

    return v0
.end method

.method public isIncentivized()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->isIncentivized()Z

    move-result v0

    return v0
.end method

.method public isSoundEnabled()Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->isSoundEnabled()Z

    move-result v0

    return v0
.end method

.method public isTransitionAnimationEnabled()Z
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->isTransitionAnimationEnabled()Z

    move-result v0

    return v0
.end method

.method public setBackButtonImmediatelyEnabled(Z)V
    .locals 1
    .param p1, "isBackButtonImmediatelyEnabled"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/s;->a(Z)V

    .line 65
    return-void
.end method

.method public setExtra1(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 83
    return-void
.end method

.method public setExtra2(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 101
    return-void
.end method

.method public setExtra3(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 119
    return-void
.end method

.method public setExtra4(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 137
    return-void
.end method

.method public setExtra5(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 155
    return-void
.end method

.method public setExtra6(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 173
    return-void
.end method

.method public setExtra7(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 191
    return-void
.end method

.method public setExtra8(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 208
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/vungle/publisher/AdConfig;->a(ILjava/lang/String;)V

    .line 209
    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 1
    .param p1, "isImmersiveMode"    # Z

    .prologue
    .line 263
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/s;->b(Z)V

    .line 264
    return-void
.end method

.method public setIncentivized(Z)V
    .locals 1
    .param p1, "isIncentivized"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/s;->c(Z)V

    .line 286
    return-void
.end method

.method public setIncentivizedCancelDialogBodyText(Ljava/lang/String;)V
    .locals 1
    .param p1, "bodyText"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/s;->b(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public setIncentivizedCancelDialogCloseButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "closeButtonText"    # Ljava/lang/String;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/s;->c(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public setIncentivizedCancelDialogKeepWatchingButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "keepWatchingButtonText"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/s;->d(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public setIncentivizedCancelDialogTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/s;->e(Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public setIncentivizedUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "incentivizedUserId"    # Ljava/lang/String;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/s;->f(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public setOrientation(Lcom/vungle/publisher/Orientation;)V
    .locals 1
    .param p1, "orientation"    # Lcom/vungle/publisher/Orientation;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/s;->a(Lcom/vungle/publisher/Orientation;)V

    .line 432
    return-void
.end method

.method public setPlacement(Ljava/lang/String;)V
    .locals 1
    .param p1, "placement"    # Ljava/lang/String;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/s;->g(Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public setSoundEnabled(Z)V
    .locals 1
    .param p1, "isSoundEnabled"    # Z

    .prologue
    .line 485
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/s;->d(Z)V

    .line 486
    return-void
.end method

.method public setTransitionAnimationEnabled(Z)V
    .locals 1
    .param p1, "isTransitionAnimationEnabled"    # Z

    .prologue
    .line 510
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/s;->e(Z)V

    .line 511
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/vungle/publisher/AdConfig;->a:Lcom/vungle/publisher/s;

    invoke-virtual {v0}, Lcom/vungle/publisher/s;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
