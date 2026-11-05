.class public final Lcom/vungle/publisher/xr;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/xr$a;
    }
.end annotation


# instance fields
.field public a:Lcom/vungle/publisher/xf;

.field b:Lcom/vungle/publisher/xm;

.field public c:Lcom/vungle/publisher/yu;

.field public d:Lcom/vungle/publisher/cz$b;

.field e:Lcom/vungle/publisher/xv;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vungle/publisher/xr;->c:Lcom/vungle/publisher/yu;

    iget-wide v2, v0, Lcom/vungle/publisher/yu;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vungle/publisher/yu;->a:J

    :cond_0
    iget v1, v0, Lcom/vungle/publisher/yu;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vungle/publisher/yu;->b:I

    iget v1, v0, Lcom/vungle/publisher/yu;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vungle/publisher/yu;->c:I

    .line 62
    iget-object v0, p0, Lcom/vungle/publisher/xr;->b:Lcom/vungle/publisher/xm;

    iget-object v1, p0, Lcom/vungle/publisher/xr;->e:Lcom/vungle/publisher/xv;

    iget-object v2, p0, Lcom/vungle/publisher/xr;->a:Lcom/vungle/publisher/xf;

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/xv;->a(Lcom/vungle/publisher/xf;)Lcom/vungle/publisher/xl;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/xm;->c(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V

    .line 65
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/publisher/xr;->a:Lcom/vungle/publisher/xf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/xr;->c:Lcom/vungle/publisher/yu;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
