.class public final Lcom/ninegame/payment/sdk/common/CommonConst;
.super Ljava/lang/Object;


# static fields
.field public static CLIENT_PARAM_KEY_VE:Ljava/lang/String;

.field public static MVE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "sdk_2.0.0"

    sput-object v0, Lcom/ninegame/payment/sdk/common/CommonConst;->MVE:Ljava/lang/String;

    const-string v0, "2.0.0"

    sput-object v0, Lcom/ninegame/payment/sdk/common/CommonConst;->CLIENT_PARAM_KEY_VE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
