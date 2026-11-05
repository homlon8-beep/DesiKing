.class public final Lcom/vungle/publisher/ah;
.super Lcom/vungle/publisher/ri;
.source "vungle"


# instance fields
.field public final a:Lcom/vungle/publisher/hm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/hm",
            "<*>;"
        }
    .end annotation
.end field

.field public final b:Lcom/vungle/publisher/yu;

.field public final c:Lcom/vungle/publisher/p;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/p;Lcom/vungle/publisher/hm;Lcom/vungle/publisher/yu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/p;",
            "Lcom/vungle/publisher/hm",
            "<*>;",
            "Lcom/vungle/publisher/yu;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vungle/publisher/ri;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/vungle/publisher/ah;->a:Lcom/vungle/publisher/hm;

    .line 15
    iput-object p3, p0, Lcom/vungle/publisher/ah;->b:Lcom/vungle/publisher/yu;

    .line 16
    iput-object p1, p0, Lcom/vungle/publisher/ah;->c:Lcom/vungle/publisher/p;

    .line 17
    return-void
.end method
