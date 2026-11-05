.class public Lcom/ninegame/payment/sdk/log/util/LogUploadUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postLogToRemoteServerByBatch(Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 1

    :try_start_0
    new-instance v0, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;

    invoke-direct {v0}, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/ninegame/payment/sdk/log/util/ApacheHttpUtils;->requestByHttpPost(Ljava/lang/String;Lorg/json/JSONArray;)Z
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
