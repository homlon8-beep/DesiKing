.class public abstract Lcom/vungle/publisher/ay;
.super Lcom/vungle/publisher/ri;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/vungle/publisher/aej;",
        ">",
        "Lcom/vungle/publisher/ri;"
    }
.end annotation


# instance fields
.field public final a:Lcom/vungle/publisher/aej;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public final b:Lcom/vungle/publisher/yu;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/aej;Lcom/vungle/publisher/yu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/vungle/publisher/yu;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vungle/publisher/ri;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/vungle/publisher/ay;->a:Lcom/vungle/publisher/aej;

    .line 13
    iput-object p2, p0, Lcom/vungle/publisher/ay;->b:Lcom/vungle/publisher/yu;

    .line 14
    return-void
.end method
