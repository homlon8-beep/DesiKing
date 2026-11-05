.class public final Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aoT:Lcom/google/android/gms/nearby/internal/connection/dev/zzn;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final aoU:Lcom/google/android/gms/nearby/internal/connection/dev/zzk;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final aoV:Ljava/lang/String;

.field private final aoW:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final aph:Lcom/google/android/gms/nearby/internal/connection/dev/zzi;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/internal/connection/dev/zzaa;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/internal/connection/dev/zzaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/nearby/internal/connection/dev/zzn$zza;->zzjx(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/internal/connection/dev/zzn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoT:Lcom/google/android/gms/nearby/internal/connection/dev/zzn;

    invoke-static {p3}, Lcom/google/android/gms/nearby/internal/connection/dev/zzk$zza;->zzju(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/internal/connection/dev/zzk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoU:Lcom/google/android/gms/nearby/internal/connection/dev/zzk;

    invoke-static {p4}, Lcom/google/android/gms/nearby/internal/connection/dev/zzi$zza;->zzjs(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/internal/connection/dev/zzi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aph:Lcom/google/android/gms/nearby/internal/connection/dev/zzi;

    iput-object p5, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->name:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoV:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoW:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;

    iget v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->versionCode:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoT:Lcom/google/android/gms/nearby/internal/connection/dev/zzn;

    iget-object v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoT:Lcom/google/android/gms/nearby/internal/connection/dev/zzn;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoU:Lcom/google/android/gms/nearby/internal/connection/dev/zzk;

    iget-object v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoU:Lcom/google/android/gms/nearby/internal/connection/dev/zzk;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aph:Lcom/google/android/gms/nearby/internal/connection/dev/zzi;

    iget-object v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aph:Lcom/google/android/gms/nearby/internal/connection/dev/zzi;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoV:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoV:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoW:[B

    iget-object v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoW:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoT:Lcom/google/android/gms/nearby/internal/connection/dev/zzn;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoU:Lcom/google/android/gms/nearby/internal/connection/dev/zzk;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aph:Lcom/google/android/gms/nearby/internal/connection/dev/zzi;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoV:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoW:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/internal/connection/dev/zzaa;->zza(Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbwu()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoT:Lcom/google/android/gms/nearby/internal/connection/dev/zzn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoT:Lcom/google/android/gms/nearby/internal/connection/dev/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/internal/connection/dev/zzn;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public zzbwv()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoU:Lcom/google/android/gms/nearby/internal/connection/dev/zzk;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoU:Lcom/google/android/gms/nearby/internal/connection/dev/zzk;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/internal/connection/dev/zzk;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public zzbww()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoV:Ljava/lang/String;

    return-object v0
.end method

.method public zzbwx()[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aoW:[B

    return-object v0
.end method

.method public zzbxd()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aph:Lcom/google/android/gms/nearby/internal/connection/dev/zzi;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendConnectionRequestParams;->aph:Lcom/google/android/gms/nearby/internal/connection/dev/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/internal/connection/dev/zzi;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
