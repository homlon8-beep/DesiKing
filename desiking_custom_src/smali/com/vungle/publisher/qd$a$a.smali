.class public final Lcom/vungle/publisher/qd$a$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/qd$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/qd$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/qd;)Lcom/vungle/publisher/qd$a;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vungle/publisher/qd$a$a;->a:Lcom/vungle/publisher/qd$a;

    iput-object p1, v0, Lcom/vungle/publisher/qd$a;->a:Lcom/vungle/publisher/oj;

    .line 203
    iget-object v0, p0, Lcom/vungle/publisher/qd$a$a;->a:Lcom/vungle/publisher/qd$a;

    return-object v0
.end method
