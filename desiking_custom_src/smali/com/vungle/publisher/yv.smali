.class public final Lcom/vungle/publisher/yv;
.super Lcom/vungle/publisher/xf;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/yv$a;
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/dp;

.field f:Lcom/vungle/publisher/ko;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vungle/publisher/xf;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/publisher/xf$c;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/vungle/publisher/xf$c;->h:Lcom/vungle/publisher/xf$c;

    return-object v0
.end method

.method protected final b()Lcom/vungle/publisher/xf$b;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/vungle/publisher/xf$b;->a:Lcom/vungle/publisher/xf$b;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/publisher/xf$c;->h:Lcom/vungle/publisher/xf$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/xf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
