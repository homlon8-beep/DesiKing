.class public abstract Lcom/vungle/publisher/ku$b;
.super Lcom/vungle/publisher/dx$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/vungle/publisher/ku",
        "<TP;>;P:",
        "Lcom/vungle/publisher/ks",
        "<*TP;TE;>;>",
        "Lcom/vungle/publisher/dx$a",
        "<TP;TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/vungle/publisher/dx$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/Cursor;)Lcom/vungle/publisher/ko;
    .locals 2

    .prologue
    .line 51
    const-string v0, "event"

    const-class v1, Lcom/vungle/publisher/ku$a;

    invoke-static {p1, v0, v1}, Lcom/vungle/publisher/dh;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ko;

    return-object v0
.end method
