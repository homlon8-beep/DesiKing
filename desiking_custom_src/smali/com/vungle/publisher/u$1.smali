.class final Lcom/vungle/publisher/u$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vungle/publisher/u;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/vungle/publisher/u;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/vungle/publisher/s;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/u;-><init>([Lcom/vungle/publisher/s;)V

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/u;->a(Landroid/os/Parcel;)Lcom/vungle/publisher/u;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 117
    new-array v0, p1, [Lcom/vungle/publisher/u;

    return-object v0
.end method
