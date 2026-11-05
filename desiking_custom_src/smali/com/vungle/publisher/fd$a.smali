.class public abstract Lcom/vungle/publisher/fd$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/dp;",
        "R:",
        "Lcom/vungle/publisher/aej;",
        "F:",
        "Lcom/vungle/publisher/dp$a",
        "<TA;TR;>;C:",
        "Lcom/vungle/publisher/fd",
        "<TA;TR;TF;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/vungle/publisher/fd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public final a(Lcom/vungle/publisher/dp$a;)Lcom/vungle/publisher/fd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TC;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/vungle/publisher/fd$a;->a()Lcom/vungle/publisher/fd;

    move-result-object v0

    .line 125
    iput-object p1, v0, Lcom/vungle/publisher/fd;->d:Lcom/vungle/publisher/dp$a;

    .line 126
    return-object v0
.end method
