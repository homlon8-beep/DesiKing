.class public final Lcom/vungle/publisher/hz$a;
.super Lcom/vungle/publisher/fd$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/fd$a",
        "<",
        "Lcom/vungle/publisher/hy;",
        "Lcom/vungle/publisher/aez;",
        "Lcom/vungle/publisher/hy$a;",
        "Lcom/vungle/publisher/hz;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/hz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vungle/publisher/fd$a;-><init>()V

    return-void
.end method


# virtual methods
.method final bridge synthetic a()Lcom/vungle/publisher/fd;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/vungle/publisher/hz$a;->a:Lcom/vungle/publisher/hz;

    return-object v0
.end method
