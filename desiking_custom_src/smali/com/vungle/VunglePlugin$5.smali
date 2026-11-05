.class Lcom/vungle/VunglePlugin$5;
.super Ljava/lang/Object;
.source "VunglePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/VunglePlugin;->playAdEx(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/VunglePlugin;

.field final synthetic val$opt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/VunglePlugin;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/vungle/VunglePlugin$5;->this$0:Lcom/vungle/VunglePlugin;

    iput-object p2, p0, Lcom/vungle/VunglePlugin$5;->val$opt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 250
    new-instance v3, Lcom/vungle/publisher/AdConfig;

    invoke-direct {v3}, Lcom/vungle/publisher/AdConfig;-><init>()V

    .line 252
    iget-object v0, p0, Lcom/vungle/VunglePlugin$5;->val$opt:Ljava/lang/String;

    invoke-static {v0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONObject;

    .line 254
    const-string v1, "incentivized"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_f

    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_f

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivized(Z)V

    .line 256
    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_11

    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_11

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/vungle/publisher/Orientation;->matchVideo:Lcom/vungle/publisher/Orientation;

    :goto_1
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setOrientation(Lcom/vungle/publisher/Orientation;)V

    .line 260
    const-string v1, "userTag"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 261
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 262
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivizedUserId(Ljava/lang/String;)V

    .line 263
    :cond_0
    const-string v1, "alertTitle"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 264
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 265
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogTitle(Ljava/lang/String;)V

    .line 266
    :cond_1
    const-string v1, "alertText"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 267
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 268
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogBodyText(Ljava/lang/String;)V

    .line 269
    :cond_2
    const-string v1, "closeText"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 270
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 271
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogCloseButtonText(Ljava/lang/String;)V

    .line 272
    :cond_3
    const-string v1, "continueText"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 274
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogKeepWatchingButtonText(Ljava/lang/String;)V

    .line 275
    :cond_4
    const-string v1, "placement"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 276
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 277
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setPlacement(Ljava/lang/String;)V

    .line 279
    :cond_5
    const-string v1, "immersive"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_12

    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_12

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_2
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setImmersiveMode(Z)V

    .line 281
    const-string v1, "animation"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_6

    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_6
    invoke-virtual {v3, v2}, Lcom/vungle/publisher/AdConfig;->setTransitionAnimationEnabled(Z)V

    .line 284
    const-string v1, "key1"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 285
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 286
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setExtra1(Ljava/lang/String;)V

    .line 287
    :cond_7
    const-string v1, "key2"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 288
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 289
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setExtra2(Ljava/lang/String;)V

    .line 290
    :cond_8
    const-string v1, "key3"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 291
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 292
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setExtra3(Ljava/lang/String;)V

    .line 293
    :cond_9
    const-string v1, "key4"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 294
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 295
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setExtra4(Ljava/lang/String;)V

    .line 296
    :cond_a
    const-string v1, "key5"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 297
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 298
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setExtra5(Ljava/lang/String;)V

    .line 299
    :cond_b
    const-string v1, "key6"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 301
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setExtra6(Ljava/lang/String;)V

    .line 302
    :cond_c
    const-string v1, "key7"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 303
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 304
    invoke-virtual {v3, v1}, Lcom/vungle/publisher/AdConfig;->setExtra7(Ljava/lang/String;)V

    .line 305
    :cond_d
    const-string v1, "key8"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 307
    invoke-virtual {v3, v0}, Lcom/vungle/publisher/AdConfig;->setExtra8(Ljava/lang/String;)V

    .line 309
    :cond_e
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/VunglePub;->playAd(Lcom/vungle/publisher/AdConfig;)V

    .line 310
    return-void

    :cond_f
    move v1, v2

    .line 255
    goto/16 :goto_0

    .line 257
    :cond_10
    sget-object v1, Lcom/vungle/publisher/Orientation;->autoRotate:Lcom/vungle/publisher/Orientation;

    goto/16 :goto_1

    :cond_11
    sget-object v1, Lcom/vungle/publisher/Orientation;->autoRotate:Lcom/vungle/publisher/Orientation;

    goto/16 :goto_1

    :cond_12
    move v1, v2

    .line 280
    goto/16 :goto_2
.end method
