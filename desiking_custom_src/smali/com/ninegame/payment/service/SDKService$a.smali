.class public Lcom/ninegame/payment/service/SDKService$a;
.super Landroid/os/Binder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ninegame/payment/service/SDKService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ninegame/payment/service/SDKService;


# direct methods
.method public constructor <init>(Lcom/ninegame/payment/service/SDKService;)V
    .locals 0

    iput-object p1, p0, Lcom/ninegame/payment/service/SDKService$a;->a:Lcom/ninegame/payment/service/SDKService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/ninegame/payment/service/SDKService;
    .locals 1

    iget-object v0, p0, Lcom/ninegame/payment/service/SDKService$a;->a:Lcom/ninegame/payment/service/SDKService;

    return-object v0
.end method
