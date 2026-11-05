.class public Lcom/ninegame/payment/sdk/log/LogWriter;
.super Ljava/lang/Object;


# static fields
.field public static final BUSINESS_LOG:I = 0x2

.field public static final SYSTEM_LOG:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeLog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/ninegame/payment/sdk/log/LogWriter$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/ninegame/payment/sdk/log/LogWriter$1;-><init>(Lcom/ninegame/payment/sdk/log/LogWriter;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ninegame/payment/sdk/log/util/BackgroundHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method
