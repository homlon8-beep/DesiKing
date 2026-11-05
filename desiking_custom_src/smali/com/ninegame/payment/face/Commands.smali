.class public final enum Lcom/ninegame/payment/face/Commands;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ninegame/payment/face/Commands;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ninegame/payment/face/Commands;

.field public static final enum ActivityCallback:Lcom/ninegame/payment/face/Commands;

.field public static final enum ExitSdk:Lcom/ninegame/payment/face/Commands;

.field public static final enum GetProductList:Lcom/ninegame/payment/face/Commands;

.field public static final enum InitSdk:Lcom/ninegame/payment/face/Commands;

.field public static final enum Pay:Lcom/ninegame/payment/face/Commands;

.field public static final enum StartService:Lcom/ninegame/payment/face/Commands;

.field public static final enum StopService:Lcom/ninegame/payment/face/Commands;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ninegame/payment/face/Commands;

    const-string v1, "InitSdk"

    invoke-direct {v0, v1, v3}, Lcom/ninegame/payment/face/Commands;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ninegame/payment/face/Commands;->InitSdk:Lcom/ninegame/payment/face/Commands;

    new-instance v0, Lcom/ninegame/payment/face/Commands;

    const-string v1, "Pay"

    invoke-direct {v0, v1, v4}, Lcom/ninegame/payment/face/Commands;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ninegame/payment/face/Commands;->Pay:Lcom/ninegame/payment/face/Commands;

    new-instance v0, Lcom/ninegame/payment/face/Commands;

    const-string v1, "ExitSdk"

    invoke-direct {v0, v1, v5}, Lcom/ninegame/payment/face/Commands;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ninegame/payment/face/Commands;->ExitSdk:Lcom/ninegame/payment/face/Commands;

    new-instance v0, Lcom/ninegame/payment/face/Commands;

    const-string v1, "GetProductList"

    invoke-direct {v0, v1, v6}, Lcom/ninegame/payment/face/Commands;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ninegame/payment/face/Commands;->GetProductList:Lcom/ninegame/payment/face/Commands;

    new-instance v0, Lcom/ninegame/payment/face/Commands;

    const-string v1, "StartService"

    invoke-direct {v0, v1, v7}, Lcom/ninegame/payment/face/Commands;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ninegame/payment/face/Commands;->StartService:Lcom/ninegame/payment/face/Commands;

    new-instance v0, Lcom/ninegame/payment/face/Commands;

    const-string v1, "StopService"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ninegame/payment/face/Commands;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ninegame/payment/face/Commands;->StopService:Lcom/ninegame/payment/face/Commands;

    new-instance v0, Lcom/ninegame/payment/face/Commands;

    const-string v1, "ActivityCallback"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ninegame/payment/face/Commands;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ninegame/payment/face/Commands;->ActivityCallback:Lcom/ninegame/payment/face/Commands;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/ninegame/payment/face/Commands;

    sget-object v1, Lcom/ninegame/payment/face/Commands;->InitSdk:Lcom/ninegame/payment/face/Commands;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ninegame/payment/face/Commands;->Pay:Lcom/ninegame/payment/face/Commands;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ninegame/payment/face/Commands;->ExitSdk:Lcom/ninegame/payment/face/Commands;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ninegame/payment/face/Commands;->GetProductList:Lcom/ninegame/payment/face/Commands;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ninegame/payment/face/Commands;->StartService:Lcom/ninegame/payment/face/Commands;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ninegame/payment/face/Commands;->StopService:Lcom/ninegame/payment/face/Commands;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ninegame/payment/face/Commands;->ActivityCallback:Lcom/ninegame/payment/face/Commands;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ninegame/payment/face/Commands;->$VALUES:[Lcom/ninegame/payment/face/Commands;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getCommand(Ljava/lang/String;)Lcom/ninegame/payment/face/Commands;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/ninegame/payment/face/Commands;->valueOf(Ljava/lang/String;)Lcom/ninegame/payment/face/Commands;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ninegame/payment/face/Commands;
    .locals 1

    const-class v0, Lcom/ninegame/payment/face/Commands;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ninegame/payment/face/Commands;

    return-object v0
.end method

.method public static values()[Lcom/ninegame/payment/face/Commands;
    .locals 1

    sget-object v0, Lcom/ninegame/payment/face/Commands;->$VALUES:[Lcom/ninegame/payment/face/Commands;

    invoke-virtual {v0}, [Lcom/ninegame/payment/face/Commands;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ninegame/payment/face/Commands;

    return-object v0
.end method
