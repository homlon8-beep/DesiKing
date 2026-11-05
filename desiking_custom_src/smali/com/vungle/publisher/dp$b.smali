.class public final Lcom/vungle/publisher/dp$b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/fu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/ja$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/ky$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/hy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/p;)Lcom/vungle/publisher/fc;
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/vungle/publisher/dp$b$1;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/dp$b$1;-><init>(Lcom/vungle/publisher/dp$b;Lcom/vungle/publisher/p;)V

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/dp$b$1;->a(Lcom/vungle/publisher/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fc;

    return-object v0
.end method
