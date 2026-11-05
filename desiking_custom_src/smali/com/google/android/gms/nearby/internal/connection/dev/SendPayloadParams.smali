.class public final Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aoT:Lcom/google/android/gms/nearby/internal/connection/dev/zzn;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final api:[Ljava/lang/String;

.field private final apj:Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final apk:Z

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/internal/connection/dev/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/internal/connection/dev/zzab;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;[Ljava/lang/String;Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;Z)V
    .locals 1
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/nearby/internal/connection/dev/zzn$zza;->zzjx(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/internal/connection/dev/zzn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->aoT:Lcom/google/android/gms/nearby/internal/connection/dev/zzn;

    iput-object p3, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->api:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->apj:Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;

    iput-boolean p5, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->apk:Z

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
    instance-of v2, p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;

    iget v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->versionCode:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->aoT:Lcom/google/android/gms/nearby/internal/connection/dev/zzn;

    iget-object v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->aoT:Lcom/google/android/gms/nearby/internal/connection/dev/zzn;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->api:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->api:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->apj:Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;

    iget-object v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->apj:Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->apk:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->apk:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

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

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->aoT:Lcom/google/android/gms/nearby/internal/connection/dev/zzn;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->api:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->apj:Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->apk:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/internal/connection/dev/zzab;->zza(Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbwu()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->aoT:Lcom/google/android/gms/nearby/internal/connection/dev/zzn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->aoT:Lcom/google/android/gms/nearby/internal/connection/dev/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/nearby/internal/connection/dev/zzn;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public zzbxe()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->api:[Ljava/lang/String;

    return-object v0
.end method

.method public zzbxf()Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->apj:Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;

    return-object v0
.end method

.method public zzbxg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/SendPayloadParams;->apk:Z

    return v0
.end method
