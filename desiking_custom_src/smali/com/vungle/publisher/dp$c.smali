.class public final enum Lcom/vungle/publisher/dp$c;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/dp$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/dp$c;

.field public static final enum b:Lcom/vungle/publisher/dp$c;

.field public static final enum c:Lcom/vungle/publisher/dp$c;

.field public static final enum d:Lcom/vungle/publisher/dp$c;

.field public static final enum e:Lcom/vungle/publisher/dp$c;

.field public static final enum f:Lcom/vungle/publisher/dp$c;

.field public static final enum g:Lcom/vungle/publisher/dp$c;

.field private static final synthetic h:[Lcom/vungle/publisher/dp$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/vungle/publisher/dp$c;

    const-string v1, "aware"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/dp$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/dp$c;->a:Lcom/vungle/publisher/dp$c;

    .line 63
    new-instance v0, Lcom/vungle/publisher/dp$c;

    const-string v1, "failed"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/dp$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/dp$c;->b:Lcom/vungle/publisher/dp$c;

    .line 64
    new-instance v0, Lcom/vungle/publisher/dp$c;

    const-string v1, "invalid"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/dp$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/dp$c;->c:Lcom/vungle/publisher/dp$c;

    .line 65
    new-instance v0, Lcom/vungle/publisher/dp$c;

    const-string v1, "preparing"

    invoke-direct {v0, v1, v6}, Lcom/vungle/publisher/dp$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/dp$c;->d:Lcom/vungle/publisher/dp$c;

    .line 66
    new-instance v0, Lcom/vungle/publisher/dp$c;

    const-string v1, "ready"

    invoke-direct {v0, v1, v7}, Lcom/vungle/publisher/dp$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/dp$c;->e:Lcom/vungle/publisher/dp$c;

    .line 67
    new-instance v0, Lcom/vungle/publisher/dp$c;

    const-string v1, "viewed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/dp$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/dp$c;->f:Lcom/vungle/publisher/dp$c;

    .line 68
    new-instance v0, Lcom/vungle/publisher/dp$c;

    const-string v1, "deleting"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/dp$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/dp$c;->g:Lcom/vungle/publisher/dp$c;

    .line 61
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/vungle/publisher/dp$c;

    sget-object v1, Lcom/vungle/publisher/dp$c;->a:Lcom/vungle/publisher/dp$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/dp$c;->b:Lcom/vungle/publisher/dp$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/dp$c;->c:Lcom/vungle/publisher/dp$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vungle/publisher/dp$c;->d:Lcom/vungle/publisher/dp$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vungle/publisher/dp$c;->e:Lcom/vungle/publisher/dp$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vungle/publisher/dp$c;->f:Lcom/vungle/publisher/dp$c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vungle/publisher/dp$c;->g:Lcom/vungle/publisher/dp$c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/dp$c;->h:[Lcom/vungle/publisher/dp$c;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/dp$c;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/vungle/publisher/dp$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dp$c;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/dp$c;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/vungle/publisher/dp$c;->h:[Lcom/vungle/publisher/dp$c;

    invoke-virtual {v0}, [Lcom/vungle/publisher/dp$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/dp$c;

    return-object v0
.end method
