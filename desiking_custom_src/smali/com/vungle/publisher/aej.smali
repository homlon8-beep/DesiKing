.class public abstract Lcom/vungle/publisher/aej;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aej$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field b:Ljava/lang/Integer;

.field public c:Ljava/lang/Long;

.field public d:Lcom/vungle/publisher/aft;

.field public e:Lcom/vungle/publisher/p;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field j:Lcom/vungle/publisher/ahf;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahf;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/vungle/publisher/aej;->j:Lcom/vungle/publisher/ahf;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/aej;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/Long;
    .locals 10

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v8, 0x3e8

    const-wide/16 v2, 0x0

    .line 76
    iget-object v4, p0, Lcom/vungle/publisher/aej;->b:Ljava/lang/Integer;

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/vungle/publisher/aej;->b:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    cmp-long v6, v8, v2

    if-ltz v6, :cond_1

    cmp-long v6, v0, v2

    if-gez v6, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputs must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v8, v2

    if-nez v6, :cond_5

    :cond_3
    move-wide v0, v2

    :cond_4
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_5
    div-long v2, v0, v4

    cmp-long v2, v8, v2

    if-gez v2, :cond_4

    mul-long v0, v4, v8

    goto :goto_1
.end method
