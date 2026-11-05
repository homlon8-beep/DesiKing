.class public Lcom/ninegame/payment/sdk/Response;
.super Ljava/lang/Object;


# static fields
.field public static final LISTENER_TYPE_EXIT:I = 0x66

.field public static final LISTENER_TYPE_INIT:I = 0x64

.field public static final LISTENER_TYPE_PAY:I = 0x65

.field public static final OPERATE_FAIL_MSG:Ljava/lang/String; = "01"

.field public static final OPERATE_SUCCESS_MSG:Ljava/lang/String; = "00"


# instance fields
.field private data:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private status:I

.field private tradeId:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ninegame/payment/sdk/Response;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ninegame/payment/sdk/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/ninegame/payment/sdk/Response;->status:I

    return v0
.end method

.method public getTradeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ninegame/payment/sdk/Response;->tradeId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/ninegame/payment/sdk/Response;->type:I

    return v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ninegame/payment/sdk/Response;->data:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ninegame/payment/sdk/Response;->message:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/ninegame/payment/sdk/Response;->status:I

    return-void
.end method

.method public setTradeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ninegame/payment/sdk/Response;->tradeId:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/ninegame/payment/sdk/Response;->type:I

    return-void
.end method
