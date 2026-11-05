.class public final enum Lcom/vungle/publisher/rr;
.super Ljava/lang/Enum;
.source "vungle"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/rr;",
        ">;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/vungle/publisher/rq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/rr;

.field private static final synthetic b:[Lcom/vungle/publisher/rr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/vungle/publisher/rr;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/vungle/publisher/rr;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/rr;->a:Lcom/vungle/publisher/rr;

    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/vungle/publisher/rr;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/rr;->a:Lcom/vungle/publisher/rr;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/rr;->b:[Lcom/vungle/publisher/rr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/vungle/publisher/rq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lcom/vungle/publisher/rr;->a:Lcom/vungle/publisher/rr;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/rr;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/vungle/publisher/rr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/rr;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/rr;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/vungle/publisher/rr;->b:[Lcom/vungle/publisher/rr;

    invoke-virtual {v0}, [Lcom/vungle/publisher/rr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/rr;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/vungle/publisher/rq;

    invoke-direct {v0}, Lcom/vungle/publisher/rq;-><init>()V

    return-object v0
.end method
