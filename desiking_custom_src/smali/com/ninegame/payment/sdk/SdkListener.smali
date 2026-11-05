.class public Lcom/ninegame/payment/sdk/SdkListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ninegame/payment/face/listener/CallbackListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ninegame/payment/face/listener/CallbackListener",
        "<",
        "Landroid/os/Bundle;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/ninegame/payment/sdk/SdkListener;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ninegame/payment/sdk/SdkListener;->a:Lcom/ninegame/payment/sdk/SdkListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ninegame/payment/sdk/SdkListener;->b:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/ninegame/payment/sdk/SdkListener;
    .locals 1

    sget-object v0, Lcom/ninegame/payment/sdk/SdkListener;->a:Lcom/ninegame/payment/sdk/SdkListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ninegame/payment/sdk/SdkListener;

    invoke-direct {v0}, Lcom/ninegame/payment/sdk/SdkListener;-><init>()V

    sput-object v0, Lcom/ninegame/payment/sdk/SdkListener;->a:Lcom/ninegame/payment/sdk/SdkListener;

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/SdkListener;->a:Lcom/ninegame/payment/sdk/SdkListener;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    const-string v0, "intent"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ninegame/payment/sdk/SdkListener;->b:Landroid/content/Context;

    const-class v3, Lcom/ninegame/payment/sdk/SDKActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/ninegame/payment/sdk/SdkListener;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;)Lcom/ninegame/payment/sdk/SdkListener;
    .locals 1

    iput-object p1, p0, Lcom/ninegame/payment/sdk/SdkListener;->b:Landroid/content/Context;

    sget-object v0, Lcom/ninegame/payment/sdk/SdkListener;->a:Lcom/ninegame/payment/sdk/SdkListener;

    return-object v0
.end method

.method public synthetic callback(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/ninegame/payment/sdk/SdkListener;->a(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
