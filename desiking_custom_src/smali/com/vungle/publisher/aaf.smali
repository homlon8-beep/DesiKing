.class public final Lcom/vungle/publisher/aaf;
.super Lcom/vungle/publisher/ze;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aaf$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field e:Z


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/ze;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/publisher/xf$c;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vungle/publisher/xf$c;->c:Lcom/vungle/publisher/xf$c;

    return-object v0
.end method

.method protected final b()Lcom/vungle/publisher/xf$b;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/vungle/publisher/xf$b;->a:Lcom/vungle/publisher/xf$b;

    return-object v0
.end method
