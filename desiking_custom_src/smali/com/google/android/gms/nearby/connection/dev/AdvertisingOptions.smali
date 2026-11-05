.class public final Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aoo:Lcom/google/android/gms/nearby/connection/dev/Strategy;

.field private final aop:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/connection/dev/zza;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/connection/dev/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/connection/dev/Strategy;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->aoo:Lcom/google/android/gms/nearby/connection/dev/Strategy;

    iput-object p3, p0, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->aop:Ljava/lang/String;

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
    instance-of v2, p1, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;

    iget v2, p0, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->versionCode:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->aoo:Lcom/google/android/gms/nearby/connection/dev/Strategy;

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->aoo:Lcom/google/android/gms/nearby/connection/dev/Strategy;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->aop:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->aop:Ljava/lang/String;

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

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->aoo:Lcom/google/android/gms/nearby/connection/dev/Strategy;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->aop:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/connection/dev/zza;->zza(Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbwn()Lcom/google/android/gms/nearby/connection/dev/Strategy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->aoo:Lcom/google/android/gms/nearby/connection/dev/Strategy;

    return-object v0
.end method

.method public zzbwo()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/dev/AdvertisingOptions;->aop:Ljava/lang/String;

    return-object v0
.end method
