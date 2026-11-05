.class public final Lcom/vungle/publisher/afq$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/afq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/qs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/qz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/vungle/publisher/afq;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/vungle/publisher/afq;

    invoke-direct {v0}, Lcom/vungle/publisher/afq;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/vungle/publisher/afq$a;->a:Lcom/vungle/publisher/qs;

    invoke-interface {v1}, Lcom/vungle/publisher/qs;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/afq;->a:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/vungle/publisher/afq$a;->a:Lcom/vungle/publisher/qs;

    invoke-interface {v1}, Lcom/vungle/publisher/qs;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/afq;->b:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/vungle/publisher/afq$a;->a:Lcom/vungle/publisher/qs;

    invoke-interface {v1}, Lcom/vungle/publisher/qs;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/afq;->c:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/vungle/publisher/afq$a;->b:Lcom/vungle/publisher/qz;

    invoke-interface {v1}, Lcom/vungle/publisher/qz;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/afq;->d:Ljava/lang/String;

    .line 64
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/afq;->e:Ljava/lang/Long;

    .line 65
    return-object v0
.end method
