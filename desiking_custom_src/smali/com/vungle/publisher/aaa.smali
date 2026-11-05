.class public final Lcom/vungle/publisher/aaa;
.super Lcom/vungle/publisher/cx;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aaa$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Lcom/vungle/publisher/aaa$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/cx;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vungle/publisher/aaa;->b:Lcom/vungle/publisher/aaa$a;

    return-object v0
.end method

.method protected final b()Lcom/vungle/publisher/cz$b;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/vungle/publisher/cz$b;->j:Lcom/vungle/publisher/cz$b;

    return-object v0
.end method
