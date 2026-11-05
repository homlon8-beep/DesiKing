.class final Lcom/vungle/publisher/aes$b$a;
.super Lcom/vungle/publisher/adb;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aes$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/adb",
        "<",
        "Lcom/vungle/publisher/aes$b;",
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
    .line 141
    invoke-direct {p0}, Lcom/vungle/publisher/adb;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    new-array v0, p1, [Lcom/vungle/publisher/aes$b;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/vungle/publisher/aes$b;

    invoke-direct {v0}, Lcom/vungle/publisher/aes$b;-><init>()V

    return-object v0
.end method
