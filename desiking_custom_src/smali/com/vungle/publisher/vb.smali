.class public final Lcom/vungle/publisher/vb;
.super Lcom/vungle/publisher/va;
.source "vungle"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ko;)V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/publisher/vb;-><init>(Lcom/vungle/publisher/ko;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/vungle/publisher/ko;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/vungle/publisher/va;-><init>(Lcom/vungle/publisher/ko;)V

    .line 14
    iput-object p2, p0, Lcom/vungle/publisher/vb;->b:Ljava/lang/String;

    .line 15
    return-void
.end method
