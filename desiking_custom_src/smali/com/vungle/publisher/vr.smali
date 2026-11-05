.class public final enum Lcom/vungle/publisher/vr;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/vr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/vr;

.field public static final enum b:Lcom/vungle/publisher/vr;

.field private static final synthetic c:[Lcom/vungle/publisher/vr;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/vungle/publisher/vr;

    const-string v1, "mobile"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/vr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/vr;->a:Lcom/vungle/publisher/vr;

    .line 5
    new-instance v0, Lcom/vungle/publisher/vr;

    const-string v1, "wifi"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/vr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/vr;->b:Lcom/vungle/publisher/vr;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vungle/publisher/vr;

    sget-object v1, Lcom/vungle/publisher/vr;->a:Lcom/vungle/publisher/vr;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/vr;->b:Lcom/vungle/publisher/vr;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vungle/publisher/vr;->c:[Lcom/vungle/publisher/vr;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/vr;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/vungle/publisher/vr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/vr;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/vr;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/vungle/publisher/vr;->c:[Lcom/vungle/publisher/vr;

    invoke-virtual {v0}, [Lcom/vungle/publisher/vr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/vr;

    return-object v0
.end method
