.class public final enum Lcom/ninegame/payment/sdk/log/StorageMedia;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ninegame/payment/sdk/log/StorageMedia;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DATABASE:Lcom/ninegame/payment/sdk/log/StorageMedia;

.field public static final enum FILE:Lcom/ninegame/payment/sdk/log/StorageMedia;

.field private static final synthetic a:[Lcom/ninegame/payment/sdk/log/StorageMedia;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ninegame/payment/sdk/log/StorageMedia;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v2}, Lcom/ninegame/payment/sdk/log/StorageMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ninegame/payment/sdk/log/StorageMedia;->FILE:Lcom/ninegame/payment/sdk/log/StorageMedia;

    new-instance v0, Lcom/ninegame/payment/sdk/log/StorageMedia;

    const-string v1, "DATABASE"

    invoke-direct {v0, v1, v3}, Lcom/ninegame/payment/sdk/log/StorageMedia;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ninegame/payment/sdk/log/StorageMedia;->DATABASE:Lcom/ninegame/payment/sdk/log/StorageMedia;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ninegame/payment/sdk/log/StorageMedia;

    sget-object v1, Lcom/ninegame/payment/sdk/log/StorageMedia;->FILE:Lcom/ninegame/payment/sdk/log/StorageMedia;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ninegame/payment/sdk/log/StorageMedia;->DATABASE:Lcom/ninegame/payment/sdk/log/StorageMedia;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ninegame/payment/sdk/log/StorageMedia;->a:[Lcom/ninegame/payment/sdk/log/StorageMedia;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ninegame/payment/sdk/log/StorageMedia;
    .locals 1

    const-class v0, Lcom/ninegame/payment/sdk/log/StorageMedia;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ninegame/payment/sdk/log/StorageMedia;

    return-object v0
.end method

.method public static values()[Lcom/ninegame/payment/sdk/log/StorageMedia;
    .locals 1

    sget-object v0, Lcom/ninegame/payment/sdk/log/StorageMedia;->a:[Lcom/ninegame/payment/sdk/log/StorageMedia;

    invoke-virtual {v0}, [Lcom/ninegame/payment/sdk/log/StorageMedia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ninegame/payment/sdk/log/StorageMedia;

    return-object v0
.end method
