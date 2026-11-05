.class public final enum Lcom/vungle/publisher/p;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/p;

.field public static final enum b:Lcom/vungle/publisher/p;

.field public static final enum c:Lcom/vungle/publisher/p;

.field public static final enum d:Lcom/vungle/publisher/p;

.field private static final synthetic e:[Lcom/vungle/publisher/p;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/vungle/publisher/p;

    const-string v1, "vungle_local"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/p;->a:Lcom/vungle/publisher/p;

    .line 14
    new-instance v0, Lcom/vungle/publisher/p;

    const-string v1, "vungle_streaming"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/p;->b:Lcom/vungle/publisher/p;

    .line 15
    new-instance v0, Lcom/vungle/publisher/p;

    const-string v1, "vungle_mraid"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/p;->c:Lcom/vungle/publisher/p;

    .line 16
    new-instance v0, Lcom/vungle/publisher/p;

    const-string v1, "third_party_mraid"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/p;->d:Lcom/vungle/publisher/p;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vungle/publisher/p;

    sget-object v1, Lcom/vungle/publisher/p;->a:Lcom/vungle/publisher/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/p;->b:Lcom/vungle/publisher/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/p;->c:Lcom/vungle/publisher/p;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/p;->d:Lcom/vungle/publisher/p;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vungle/publisher/p;->e:[Lcom/vungle/publisher/p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/p;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/vungle/publisher/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/p;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/p;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/vungle/publisher/p;->e:[Lcom/vungle/publisher/p;

    invoke-virtual {v0}, [Lcom/vungle/publisher/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/p;

    return-object v0
.end method
