.class public final enum Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ninegame/payment/sdk/log/util/SdCardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INTERNAL:Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;

.field public static final enum SDCARD:Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;

.field private static final synthetic a:[Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;->INTERNAL:Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;

    new-instance v0, Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;

    const-string v1, "SDCARD"

    invoke-direct {v0, v1, v3}, Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;->SDCARD:Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;

    sget-object v1, Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;->INTERNAL:Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;->SDCARD:Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;->a:[Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;
    .locals 1

    const-class v0, Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;

    return-object v0
.end method

.method public static values()[Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;
    .locals 1

    sget-object v0, Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;->a:[Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;

    invoke-virtual {v0}, [Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ninegame/payment/sdk/log/util/SdCardUtil$StorageLocation;

    return-object v0
.end method
