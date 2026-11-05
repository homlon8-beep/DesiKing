.class Lcom/ninegame/payment/sdk/log/a;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x4

.field static final e:I = 0x8

.field static final f:I = 0x10

.field static final g:I = 0x20

.field static final h:I = 0x40

.field static final i:I = 0x80

.field static final j:I = 0xff

.field static final k:I = 0xa

.field static final l:I = 0xb

.field static final m:I = 0xc

.field static final n:I = 0xd

.field private static final q:I = 0xb8

.field private static r:Lcom/ninegame/payment/sdk/log/a;


# instance fields
.field private o:I

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ninegame/payment/sdk/log/a;->r:Lcom/ninegame/payment/sdk/log/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/ninegame/payment/sdk/log/a;->o:I

    const/16 v0, 0x70

    iput v0, p0, Lcom/ninegame/payment/sdk/log/a;->p:I

    return-void
.end method

.method static declared-synchronized a()Lcom/ninegame/payment/sdk/log/a;
    .locals 2

    const-class v1, Lcom/ninegame/payment/sdk/log/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ninegame/payment/sdk/log/a;->r:Lcom/ninegame/payment/sdk/log/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ninegame/payment/sdk/log/a;

    invoke-direct {v0}, Lcom/ninegame/payment/sdk/log/a;-><init>()V

    sput-object v0, Lcom/ninegame/payment/sdk/log/a;->r:Lcom/ninegame/payment/sdk/log/a;

    sget-object v0, Lcom/ninegame/payment/sdk/log/a;->r:Lcom/ninegame/payment/sdk/log/a;

    invoke-virtual {v0}, Lcom/ninegame/payment/sdk/log/a;->b()V

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/log/a;->r:Lcom/ninegame/payment/sdk/log/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(I)Z
    .locals 1

    invoke-static {}, Lcom/ninegame/payment/sdk/log/a;->a()Lcom/ninegame/payment/sdk/log/a;

    move-result-object v0

    iget v0, v0, Lcom/ninegame/payment/sdk/log/a;->o:I

    and-int/2addr v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(I)Z
    .locals 1

    invoke-static {}, Lcom/ninegame/payment/sdk/log/a;->a()Lcom/ninegame/payment/sdk/log/a;

    move-result-object v0

    iget v0, v0, Lcom/ninegame/payment/sdk/log/a;->p:I

    and-int/2addr v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c()Z
    .locals 2

    invoke-static {}, Lcom/ninegame/payment/sdk/log/a;->a()Lcom/ninegame/payment/sdk/log/a;

    move-result-object v0

    iget v0, v0, Lcom/ninegame/payment/sdk/log/a;->o:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(I)Z
    .locals 1

    and-int/lit16 v0, p0, 0xb8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/ninegame/payment/sdk/log/a;->b(I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method b()V
    .locals 1

    sget-boolean v0, Lcom/ninegame/payment/sdk/log/AppContext;->debugMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    iput v0, p0, Lcom/ninegame/payment/sdk/log/a;->o:I

    const/16 v0, 0x70

    iput v0, p0, Lcom/ninegame/payment/sdk/log/a;->p:I

    return-void

    :cond_0
    const/16 v0, 0x30

    goto :goto_0
.end method
