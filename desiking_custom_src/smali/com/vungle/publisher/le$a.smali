.class public final Lcom/vungle/publisher/le$a;
.super Lcom/vungle/publisher/fd$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/le;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/fd$a",
        "<",
        "Lcom/vungle/publisher/ky;",
        "Lcom/vungle/publisher/afk;",
        "Lcom/vungle/publisher/ky$a;",
        "Lcom/vungle/publisher/le;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/le;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vungle/publisher/fd$a;-><init>()V

    return-void
.end method


# virtual methods
.method final bridge synthetic a()Lcom/vungle/publisher/fd;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/vungle/publisher/le$a;->a:Lcom/vungle/publisher/le;

    return-object v0
.end method
