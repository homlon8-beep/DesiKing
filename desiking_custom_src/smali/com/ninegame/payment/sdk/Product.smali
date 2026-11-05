.class public Lcom/ninegame/payment/sdk/Product;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COIN_TYPE:I = 0x2

.field public static final TOOL_TYPE:I = 0x1

.field private static final serialVersionUID:J = 0xdfeaa15b994c016L


# instance fields
.field private currencyId:Ljava/lang/String;

.field private extInfo:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private rate:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrencyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ninegame/payment/sdk/Product;->currencyId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ninegame/payment/sdk/Product;->extInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ninegame/payment/sdk/Product;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ninegame/payment/sdk/Product;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ninegame/payment/sdk/Product;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ninegame/payment/sdk/Product;->rate:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/ninegame/payment/sdk/Product;->type:I

    return v0
.end method

.method public setCurrencyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ninegame/payment/sdk/Product;->currencyId:Ljava/lang/String;

    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ninegame/payment/sdk/Product;->extInfo:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ninegame/payment/sdk/Product;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ninegame/payment/sdk/Product;->name:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ninegame/payment/sdk/Product;->price:Ljava/lang/String;

    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ninegame/payment/sdk/Product;->rate:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/ninegame/payment/sdk/Product;->type:I

    return-void
.end method
