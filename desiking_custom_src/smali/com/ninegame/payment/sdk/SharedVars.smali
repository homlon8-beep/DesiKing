.class public Lcom/ninegame/payment/sdk/SharedVars;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "SharedVars"

.field public static context:Landroid/content/Context;

.field public static debugMode:Z

.field public static globalHandler:Landroid/os/Handler;

.field public static keyStroe:Ljava/lang/String;

.field public static vipapaSeed:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ninegame/payment/sdk/SharedVars;->globalHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/ninegame/payment/sdk/SharedVars;->context:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ninegame/payment/sdk/SharedVars;->debugMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
