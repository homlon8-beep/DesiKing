.class public final enum Lcom/vungle/publisher/kr$a;
.super Ljava/lang/Enum;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ko;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/kr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/kr$a;",
        ">;",
        "Lcom/vungle/publisher/ko;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/kr$a;

.field public static final enum b:Lcom/vungle/publisher/kr$a;

.field public static final enum c:Lcom/vungle/publisher/kr$a;

.field public static final enum d:Lcom/vungle/publisher/kr$a;

.field public static final enum e:Lcom/vungle/publisher/kr$a;

.field public static final enum f:Lcom/vungle/publisher/kr$a;

.field public static final enum g:Lcom/vungle/publisher/kr$a;

.field public static final enum h:Lcom/vungle/publisher/kr$a;

.field public static final enum i:Lcom/vungle/publisher/kr$a;

.field public static final enum j:Lcom/vungle/publisher/kr$a;

.field public static final enum k:Lcom/vungle/publisher/kr$a;

.field public static final enum l:Lcom/vungle/publisher/kr$a;

.field public static final enum m:Lcom/vungle/publisher/kr$a;

.field public static final enum n:Lcom/vungle/publisher/kr$a;

.field public static final enum o:Lcom/vungle/publisher/kr$a;

.field private static final synthetic r:[Lcom/vungle/publisher/kr$a;


# instance fields
.field public final p:F

.field private final q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "error"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->a:Lcom/vungle/publisher/kr$a;

    .line 20
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "mute"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->b:Lcom/vungle/publisher/kr$a;

    .line 21
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "play_percentage_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v6, v2}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->c:Lcom/vungle/publisher/kr$a;

    .line 22
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "play_percentage_25"

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v7, v2}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->d:Lcom/vungle/publisher/kr$a;

    .line 23
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "play_percentage_50"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v8, v2}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->e:Lcom/vungle/publisher/kr$a;

    .line 24
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "play_percentage_75"

    const/4 v2, 0x5

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->f:Lcom/vungle/publisher/kr$a;

    .line 25
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "play_percentage_80"

    const/4 v2, 0x6

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->g:Lcom/vungle/publisher/kr$a;

    .line 26
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "play_percentage_100"

    const/4 v2, 0x7

    const v3, 0x3f7d70a4    # 0.99f

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->h:Lcom/vungle/publisher/kr$a;

    .line 27
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "postroll_click"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->i:Lcom/vungle/publisher/kr$a;

    .line 28
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "postroll_view"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->j:Lcom/vungle/publisher/kr$a;

    .line 29
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "unmute"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->k:Lcom/vungle/publisher/kr$a;

    .line 30
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "video_click"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v4}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->l:Lcom/vungle/publisher/kr$a;

    .line 31
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "video_close"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->m:Lcom/vungle/publisher/kr$a;

    .line 32
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "video_pause"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->n:Lcom/vungle/publisher/kr$a;

    .line 33
    new-instance v0, Lcom/vungle/publisher/kr$a;

    const-string v1, "video_resume"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/kr$a;->o:Lcom/vungle/publisher/kr$a;

    .line 18
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/vungle/publisher/kr$a;

    sget-object v1, Lcom/vungle/publisher/kr$a;->a:Lcom/vungle/publisher/kr$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/kr$a;->b:Lcom/vungle/publisher/kr$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vungle/publisher/kr$a;->c:Lcom/vungle/publisher/kr$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vungle/publisher/kr$a;->d:Lcom/vungle/publisher/kr$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/vungle/publisher/kr$a;->e:Lcom/vungle/publisher/kr$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/vungle/publisher/kr$a;->f:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vungle/publisher/kr$a;->g:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vungle/publisher/kr$a;->h:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vungle/publisher/kr$a;->i:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vungle/publisher/kr$a;->j:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vungle/publisher/kr$a;->k:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vungle/publisher/kr$a;->l:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/vungle/publisher/kr$a;->m:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/vungle/publisher/kr$a;->n:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/vungle/publisher/kr$a;->o:Lcom/vungle/publisher/kr$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/kr$a;->r:[Lcom/vungle/publisher/kr$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;IFZ)V

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZBB)V"
        }
    .end annotation

    .prologue
    .line 47
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;IFZ)V

    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vungle/publisher/kr$a;-><init>(Ljava/lang/String;IFZ)V

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/vungle/publisher/kr$a;->p:F

    .line 52
    iput-boolean p4, p0, Lcom/vungle/publisher/kr$a;->q:Z

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/kr$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/vungle/publisher/kr$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/kr$a;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/kr$a;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/vungle/publisher/kr$a;->r:[Lcom/vungle/publisher/kr$a;

    invoke-virtual {v0}, [Lcom/vungle/publisher/kr$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/kr$a;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/vungle/publisher/kr$a;->q:Z

    return v0
.end method
