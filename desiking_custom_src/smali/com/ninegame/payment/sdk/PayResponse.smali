.class public Lcom/ninegame/payment/sdk/PayResponse;
.super Ljava/lang/Object;


# static fields
.field public static final APP_ID:Ljava/lang/String; = "APP_ID"

.field public static final ATTACH_INFO:Ljava/lang/String; = "ATTACH_INFO"

.field public static final COIN_RATE:Ljava/lang/String; = "COIN_RATE"

.field public static final CP_ORDER_ID:Ljava/lang/String; = "CP_ORDER_ID"

.field public static final CURRENCY_ID:Ljava/lang/String; = "CURRENCY_ID"

.field public static final ERROR_CODE_AUTHRIZE_ERROR:I = 0x3ea

.field public static final ERROR_CODE_PARAMS_INVALID:I = 0x3e8

.field public static final ERROR_CODE_PRODUCT_ID_INVALID:I = 0x3eb

.field public static final ERROR_CODE_UNAUTHRIZE:I = 0x3e9

.field public static final EXT_INFO:Ljava/lang/String; = "EXT_INFO"

.field public static final IMEI:Ljava/lang/String; = "IMEI"

.field public static final ORDER_FINISH_TIME:Ljava/lang/String; = "ORDER_FINISH_TIME"

.field public static final ORDER_STATUS:Ljava/lang/String; = "ORDER_STATUS"

.field public static final PAY_EMPTY_DATA:Ljava/lang/String; = "{}"

.field public static final PAY_MONEY:Ljava/lang/String; = "PAY_MONEY"

.field public static final PAY_STATUS_ERROR:Ljava/lang/String; = "error"

.field public static final PAY_STATUS_SUCCESS:Ljava/lang/String; = "ok"

.field public static final PAY_TYPE:Ljava/lang/String; = "PAY_TYPE"

.field public static final PRO_ID:Ljava/lang/String; = "PRO_ID"

.field public static final PRO_NAME:Ljava/lang/String; = "PRO_NAME"

.field public static final PRO_TYPE:Ljava/lang/String; = "PRO_TYPE"

.field public static final TRADE_ID:Ljava/lang/String; = "TRADE_ID"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatResponseData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "errorMsg"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
