.class public final Lcom/vungle/publisher/ga;
.super Lcom/vungle/publisher/fd;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ga$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/fd",
        "<",
        "Lcom/vungle/publisher/fu;",
        "Lcom/vungle/publisher/aew;",
        "Lcom/vungle/publisher/fu$a;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vungle/publisher/fd;-><init>()V

    return-void
.end method
