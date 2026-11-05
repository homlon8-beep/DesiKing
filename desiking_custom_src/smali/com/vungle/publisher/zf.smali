.class public abstract Lcom/vungle/publisher/zf;
.super Lcom/vungle/publisher/ze;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/zf$a;,
        Lcom/vungle/publisher/zf$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Lcom/vungle/publisher/adj;",
        "T:",
        "Lcom/vungle/publisher/dw",
        "<****>;>",
        "Lcom/vungle/publisher/ze;"
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/dp;

.field f:Ljava/lang/Integer;

.field g:Lcom/vungle/publisher/adj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vungle/publisher/ze;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/publisher/xf$c;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/vungle/publisher/xf$c;->b:Lcom/vungle/publisher/xf$c;

    return-object v0
.end method

.method protected final b()Lcom/vungle/publisher/xf$b;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/vungle/publisher/xf$b;->c:Lcom/vungle/publisher/xf$b;

    return-object v0
.end method
