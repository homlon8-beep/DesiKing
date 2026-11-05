.class public Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIMEICode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->c:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getIMSICode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getMACAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->b:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getMCCAndMNC(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getNativePhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->e:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->getSimState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->f:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/log/util/DeviceInfoUtil;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimState(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
