.class public final enum Lcom/vungle/publisher/fr$b;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/fr$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/fr$b;

.field public static final enum b:Lcom/vungle/publisher/fr$b;

.field public static final enum c:Lcom/vungle/publisher/fr$b;

.field public static final enum d:Lcom/vungle/publisher/fr$b;

.field public static final enum e:Lcom/vungle/publisher/fr$b;

.field public static final enum f:Lcom/vungle/publisher/fr$b;

.field private static final synthetic g:[Lcom/vungle/publisher/fr$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/vungle/publisher/fr$b;

    const-string v1, "localVideo"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/fr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/fr$b;->a:Lcom/vungle/publisher/fr$b;

    .line 24
    new-instance v0, Lcom/vungle/publisher/fr$b;

    const-string v1, "postRoll"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/fr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/fr$b;->b:Lcom/vungle/publisher/fr$b;

    .line 26
    new-instance v0, Lcom/vungle/publisher/fr$b;

    const-string v1, "preRoll"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/fr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/fr$b;->c:Lcom/vungle/publisher/fr$b;

    .line 27
    new-instance v0, Lcom/vungle/publisher/fr$b;

    const-string v1, "streamingVideo"

    invoke-direct {v0, v1, v6}, Lcom/vungle/publisher/fr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/fr$b;->d:Lcom/vungle/publisher/fr$b;

    .line 28
    new-instance v0, Lcom/vungle/publisher/fr$b;

    const-string v1, "template"

    invoke-direct {v0, v1, v7}, Lcom/vungle/publisher/fr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/fr$b;->e:Lcom/vungle/publisher/fr$b;

    .line 29
    new-instance v0, Lcom/vungle/publisher/fr$b;

    const-string v1, "asset"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/fr$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/fr$b;->f:Lcom/vungle/publisher/fr$b;

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/vungle/publisher/fr$b;

    sget-object v1, Lcom/vungle/publisher/fr$b;->a:Lcom/vungle/publisher/fr$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/fr$b;->b:Lcom/vungle/publisher/fr$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/fr$b;->c:Lcom/vungle/publisher/fr$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vungle/publisher/fr$b;->d:Lcom/vungle/publisher/fr$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vungle/publisher/fr$b;->e:Lcom/vungle/publisher/fr$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vungle/publisher/fr$b;->f:Lcom/vungle/publisher/fr$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/fr$b;->g:[Lcom/vungle/publisher/fr$b;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/fr$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/vungle/publisher/fr$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fr$b;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/fr$b;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/vungle/publisher/fr$b;->g:[Lcom/vungle/publisher/fr$b;

    invoke-virtual {v0}, [Lcom/vungle/publisher/fr$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/fr$b;

    return-object v0
.end method
