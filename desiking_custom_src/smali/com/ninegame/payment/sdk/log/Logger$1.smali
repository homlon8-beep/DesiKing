.class final Lcom/ninegame/payment/sdk/log/Logger$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ninegame/payment/sdk/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->a:I

    iput-object p2, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->a:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ninegame/payment/sdk/log/InternalLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ninegame/payment/sdk/log/InternalLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ninegame/payment/sdk/log/InternalLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ninegame/payment/sdk/log/InternalLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ninegame/payment/sdk/log/InternalLogger;->im(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/ninegame/payment/sdk/log/Logger$1;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ninegame/payment/sdk/log/InternalLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x21 -> :sswitch_5
        0x22 -> :sswitch_4
    .end sparse-switch
.end method
