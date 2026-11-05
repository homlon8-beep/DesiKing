.class public final enum Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;
.super Ljava/lang/Enum;
.source "EquippableVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/store/domain/virtualGoods/EquippableVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EquippingModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

.field public static final enum CATEGORY:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

.field public static final enum GLOBAL:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

.field public static final enum LOCAL:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;


# instance fields
.field private final mEm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    new-instance v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    const-string v1, "LOCAL"

    const-string v2, "local"

    invoke-direct {v0, v1, v3, v2}, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->LOCAL:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    new-instance v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    const-string v1, "CATEGORY"

    const-string v2, "category"

    invoke-direct {v0, v1, v4, v2}, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->CATEGORY:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    new-instance v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    const-string v1, "GLOBAL"

    const-string v2, "global"

    invoke-direct {v0, v1, v5, v2}, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->GLOBAL:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    .line 227
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    sget-object v1, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->LOCAL:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->CATEGORY:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->GLOBAL:Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->$VALUES:[Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "em"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 231
    iput-object p3, p0, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->mEm:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;
    .locals 3
    .param p0, "em"    # Ljava/lang/String;

    .prologue
    .line 241
    const-class v2, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    .line 242
    .local v0, "element":Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;
    invoke-virtual {v0}, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    .end local v0    # "element":Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 227
    const-class v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    return-object v0
.end method

.method public static values()[Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->$VALUES:[Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    invoke-virtual {v0}, [Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/soomla/store/domain/virtualGoods/EquippableVG$EquippingModel;->mEm:Ljava/lang/String;

    return-object v0
.end method
