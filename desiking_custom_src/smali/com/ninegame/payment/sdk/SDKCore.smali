.class public Lcom/ninegame/payment/sdk/SDKCore;
.super Ljava/lang/Object;


# static fields
.field private static final IMAGES:Ljava/lang/String; = "images"

.field private static final PAY_PNG:Ljava/lang/String; = "pay.png"

.field private static final TAG:Ljava/lang/String; = "SDKCore"

.field private static mInstance:Lcom/ninegame/payment/sdk/SDKCore;

.field private static sIsLoadNative:Z


# instance fields
.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ninegame/payment/sdk/SDKCore;->mInstance:Lcom/ninegame/payment/sdk/SDKCore;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ninegame/payment/sdk/SDKCore;->sIsLoadNative:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "entry.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "images"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pay.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ninegame/payment/sdk/dex/DexLoader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/ninegame/payment/sdk/utils/StreamUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ninegame/payment/sdk/utils/StreamUtil;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/ninegame/payment/sdk/common/CommonConst;->CLIENT_PARAM_KEY_VE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/ninegame/payment/sdk/utils/CommonUtil;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/ninegame/payment/sdk/utils/StreamUtil;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/ninegame/payment/sdk/utils/StreamUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ninegame/payment/sdk/utils/StreamUtil;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8

    invoke-static {p0}, Lcom/ninegame/payment/sdk/utils/StreamUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ninegame/payment/sdk/utils/StreamUtil;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_0
    sget-boolean v2, Lcom/ninegame/payment/sdk/SDKCore;->sIsLoadNative:Z

    if-nez v2, :cond_1

    invoke-static {p0, v1, v0}, Lcom/ninegame/payment/sdk/utils/StreamUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ninegame/payment/sdk/SDKCore;->sIsLoadNative:Z

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/ninegame/payment/sdk/NativeApi;->Initialize(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    if-eqz v0, :cond_2

    const-string v0, "SDKCore"

    const-string v1, "\u521d\u59cb\u5316\u52a8\u6001\u5e93\u5931\u8d25!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static exitSDK(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a()Lcom/ninegame/payment/sdk/dex/DexLoader;

    move-result-object v0

    sget-object v1, Lcom/ninegame/payment/face/Commands;->ExitSdk:Lcom/ninegame/payment/face/Commands;

    invoke-virtual {v0, v1}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a(Lcom/ninegame/payment/face/Commands;)Lcom/ninegame/payment/face/IDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/ninegame/payment/face/Commands;->ExitSdk:Lcom/ninegame/payment/face/Commands;

    invoke-interface {v0, v1, v2, p0, v2}, Lcom/ninegame/payment/face/IDispatcher;->invoke(Lcom/ninegame/payment/face/Commands;Landroid/os/Bundle;Landroid/app/Activity;Lcom/ninegame/payment/sdk/SDKCallbackListener;)Landroid/os/Bundle;

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ninegame/payment/service/SDKService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/ninegame/payment/sdk/SDKCore;
    .locals 2

    const-class v1, Lcom/ninegame/payment/sdk/SDKCore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ninegame/payment/sdk/SDKCore;->mInstance:Lcom/ninegame/payment/sdk/SDKCore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ninegame/payment/sdk/SDKCore;

    invoke-direct {v0}, Lcom/ninegame/payment/sdk/SDKCore;-><init>()V

    sput-object v0, Lcom/ninegame/payment/sdk/SDKCore;->mInstance:Lcom/ninegame/payment/sdk/SDKCore;

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/SDKCore;->mInstance:Lcom/ninegame/payment/sdk/SDKCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getProductList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ninegame/payment/sdk/Product;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a()Lcom/ninegame/payment/sdk/dex/DexLoader;

    move-result-object v1

    sget-object v2, Lcom/ninegame/payment/face/Commands;->GetProductList:Lcom/ninegame/payment/face/Commands;

    invoke-virtual {v1, v2}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a(Lcom/ninegame/payment/face/Commands;)Lcom/ninegame/payment/face/IDispatcher;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/ninegame/payment/face/Commands;->GetProductList:Lcom/ninegame/payment/face/Commands;

    invoke-interface {v1, v2, v0, v0, v0}, Lcom/ninegame/payment/face/IDispatcher;->invoke(Lcom/ninegame/payment/face/Commands;Landroid/os/Bundle;Landroid/app/Activity;Lcom/ninegame/payment/sdk/SDKCallbackListener;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "productlist"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "productlist"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public static initSDK(Landroid/app/Activity;Landroid/content/Intent;Lcom/ninegame/payment/sdk/SDKCallbackListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ninegame/payment/sdk/SDKError;
        }
    .end annotation

    const/16 v6, 0x1000

    invoke-static {p0}, Lcom/ninegame/payment/sdk/SDKCore;->a(Landroid/content/Context;)V

    if-nez p2, :cond_0

    const-string v0, "SDKCore"

    const-string v1, "Init Fail For Listener Is Null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ninegame/payment/sdk/SDKError;

    const-string v1, "Init Fail For Listener Is Null"

    invoke-direct {v0, v1}, Lcom/ninegame/payment/sdk/SDKError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "SDKCore"

    const-string v1, "Init Fail For Context Is Null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ninegame/payment/sdk/SDKError;

    const-string v1, "Init Fail For Context Is Null"

    invoke-direct {v0, v1}, Lcom/ninegame/payment/sdk/SDKError;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/ninegame/payment/sdk/SDKCallbackListener;->onErrorResponse(Lcom/ninegame/payment/sdk/SDKError;)V

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Lcom/ninegame/payment/sdk/SDKError;

    const-string v1, "Intent not allow empty."

    invoke-direct {v0, v1, v6}, Lcom/ninegame/payment/sdk/SDKError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0}, Lcom/ninegame/payment/sdk/SDKCallbackListener;->onErrorResponse(Lcom/ninegame/payment/sdk/SDKError;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0}, Lcom/ninegame/payment/sdk/SDKCore;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    const-string v1, "app_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "SDKCore"

    const-string v1, "Init Fail For AppId Is Null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ninegame/payment/sdk/SDKError;

    const-string v1, "AppId not allow empty."

    invoke-direct {v0, v1, v6}, Lcom/ninegame/payment/sdk/SDKError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0}, Lcom/ninegame/payment/sdk/SDKCallbackListener;->onErrorResponse(Lcom/ninegame/payment/sdk/SDKError;)V

    goto :goto_0

    :cond_3
    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "m90HXFxcanvas9PMK1w4fCjRc="

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "m90sejqeV9game.comkxH8Yt1n9oQ=="

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "m90segame.comkxH8Yt0x9oQ=="

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "m90ko9game.comkxH8Yt0x9AB=="

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const-string v0, "SDKCore"

    const-string v1, "Security parameter is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ninegame/payment/sdk/SDKError;

    const-string v1, "Security parameter not allow empty."

    invoke-direct {v0, v1, v6}, Lcom/ninegame/payment/sdk/SDKError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0}, Lcom/ninegame/payment/sdk/SDKCallbackListener;->onErrorResponse(Lcom/ninegame/payment/sdk/SDKError;)V

    goto :goto_0

    :cond_5
    const-string v5, "private_key"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "public_key"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "debug_mode"

    sget-boolean v2, Lcom/ninegame/payment/sdk/SharedVars;->debugMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/ninegame/payment/sdk/SharedVars;->context:Landroid/content/Context;

    sput-object v4, Lcom/ninegame/payment/sdk/SharedVars;->keyStroe:Ljava/lang/String;

    sput-object v3, Lcom/ninegame/payment/sdk/SharedVars;->vipapaSeed:Ljava/lang/String;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ninegame/payment/sdk/SDKCore$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/ninegame/payment/sdk/SDKCore$1;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/ninegame/payment/sdk/SDKCallbackListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public static pay(Landroid/app/Activity;Landroid/content/Intent;Lcom/ninegame/payment/sdk/SDKCallbackListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v3, 0x1000

    if-nez p2, :cond_0

    new-instance v0, Lcom/ninegame/payment/sdk/SDKError;

    const-string v1, "callBack is null"

    const/16 v2, 0x1004

    invoke-direct {v0, v1, v2}, Lcom/ninegame/payment/sdk/SDKError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lcom/ninegame/payment/sdk/SDKError;

    const-string v1, "context is null"

    const/16 v2, 0x1005

    invoke-direct {v0, v1, v2}, Lcom/ninegame/payment/sdk/SDKError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0}, Lcom/ninegame/payment/sdk/SDKCallbackListener;->onErrorResponse(Lcom/ninegame/payment/sdk/SDKError;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ninegame/payment/sdk/SharedVars;->context:Landroid/content/Context;

    if-nez p1, :cond_2

    new-instance v0, Lcom/ninegame/payment/sdk/SDKError;

    const-string v1, "intent is null"

    const/16 v2, 0x1006

    invoke-direct {v0, v1, v2}, Lcom/ninegame/payment/sdk/SDKError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0}, Lcom/ninegame/payment/sdk/SDKCallbackListener;->onErrorResponse(Lcom/ninegame/payment/sdk/SDKError;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/ninegame/payment/sdk/SDKError;

    const-string v1, "params is null"

    const/16 v2, 0x1007

    invoke-direct {v0, v1, v2}, Lcom/ninegame/payment/sdk/SDKError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0}, Lcom/ninegame/payment/sdk/SDKCallbackListener;->onErrorResponse(Lcom/ninegame/payment/sdk/SDKError;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Lcom/ninegame/payment/sdk/SDKError;

    const-string v1, "appName is null"

    invoke-direct {v0, v1, v3}, Lcom/ninegame/payment/sdk/SDKError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0}, Lcom/ninegame/payment/sdk/SDKCallbackListener;->onErrorResponse(Lcom/ninegame/payment/sdk/SDKError;)V

    goto :goto_0

    :cond_4
    const-string v1, "app_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/ninegame/payment/sdk/SDKError;

    const-string v1, "appName is empty"

    invoke-direct {v0, v1, v3}, Lcom/ninegame/payment/sdk/SDKError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0}, Lcom/ninegame/payment/sdk/SDKCallbackListener;->onErrorResponse(Lcom/ninegame/payment/sdk/SDKError;)V

    goto :goto_0

    :cond_5
    const-string v2, "app_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "product_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "product_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "product_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v1, "back_url"

    const-string v2, "back_url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "attach_info"

    const-string v2, "attach_info"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "notify_url"

    const-string v2, "notify_url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cp_order_id"

    const-string v2, "cp_order_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "debug_mode"

    sget-boolean v2, Lcom/ninegame/payment/sdk/SharedVars;->debugMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a()Lcom/ninegame/payment/sdk/dex/DexLoader;

    move-result-object v1

    sget-object v2, Lcom/ninegame/payment/face/Commands;->Pay:Lcom/ninegame/payment/face/Commands;

    invoke-virtual {v1, v2}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a(Lcom/ninegame/payment/face/Commands;)Lcom/ninegame/payment/face/IDispatcher;

    move-result-object v1

    if-nez v1, :cond_7

    new-instance v0, Lcom/ninegame/payment/sdk/SDKError;

    const-string v1, "Unauthrize or authrize unsuccess,please authrize again"

    const/16 v2, 0x1001

    invoke-direct {v0, v1, v2}, Lcom/ninegame/payment/sdk/SDKError;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v0}, Lcom/ninegame/payment/sdk/SDKCallbackListener;->onErrorResponse(Lcom/ninegame/payment/sdk/SDKError;)V

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/ninegame/payment/face/Commands;->Pay:Lcom/ninegame/payment/face/Commands;

    invoke-interface {v1, v2, v0, p0, p2}, Lcom/ninegame/payment/face/IDispatcher;->invoke(Lcom/ninegame/payment/face/Commands;Landroid/os/Bundle;Landroid/app/Activity;Lcom/ninegame/payment/sdk/SDKCallbackListener;)Landroid/os/Bundle;

    goto/16 :goto_0
.end method

.method public static setDebugMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/ninegame/payment/sdk/SharedVars;->debugMode:Z

    return-void
.end method


# virtual methods
.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ninegame/payment/sdk/SDKCore;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method
