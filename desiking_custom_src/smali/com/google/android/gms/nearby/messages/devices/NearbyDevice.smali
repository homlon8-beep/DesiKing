.class public Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final apT:[Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

.field private static final apU:[Ljava/lang/String;

.field public static final apV:Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;


# instance fields
.field final apW:Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final apX:Ljava/lang/String;

.field final apY:[Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final apZ:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final mVersionCode:I

.field final zzae:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/nearby/messages/devices/zza;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/devices/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    new-array v0, v1, [Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    sput-object v0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apT:[Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apU:[Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    const-string v1, ""

    sget-object v2, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apT:[Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    sget-object v3, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apU:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;-><init>(Ljava/lang/String;[Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apV:Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;[Ljava/lang/String;)V
    .locals 2
    .param p2    # Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->mVersionCode:I

    if-nez p4, :cond_0

    const-string p4, ""

    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apX:Ljava/lang/String;

    if-nez p5, :cond_1

    sget-object p5, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apT:[Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    :cond_1
    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apY:[Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    if-nez p6, :cond_2

    sget-object p6, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apU:[Ljava/lang/String;

    :cond_2
    iput-object p6, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apZ:[Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apY:[Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    array-length v0, v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;->aqd:Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apW:Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apZ:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->zzae:Ljava/lang/String;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apY:[Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apZ:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;[Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;[Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;-><init>(ILcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/nearby/messages/devices/NearbyDeviceId;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apX:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apX:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apX:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apX:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "NearbyDevice{handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/devices/zza;->zza(Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbxr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/devices/NearbyDevice;->apX:Ljava/lang/String;

    return-object v0
.end method
