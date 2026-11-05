.class public final Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final apf:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final apg:Landroid/os/ParcelFileDescriptor;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final type:I

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/internal/connection/dev/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/internal/connection/dev/zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(II[BLandroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p3    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/ParcelFileDescriptor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->type:I

    iput-object p3, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->apf:[B

    iput-object p4, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->apg:Landroid/os/ParcelFileDescriptor;

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
    instance-of v2, p1, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;

    iget v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->versionCode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->apf:[B

    iget-object v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->apf:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->apg:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p1, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->apg:Landroid/os/ParcelFileDescriptor;

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

.method public getBytes()[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->apf:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->apf:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->apg:Landroid/os/ParcelFileDescriptor;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/internal/connection/dev/zzy;->zza(Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbxc()Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/internal/connection/dev/ParcelablePayload;->apg:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method
