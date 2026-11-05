.class public final Lcom/google/android/gms/nearby/connection/dev/Strategy;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/nearby/connection/dev/Strategy;",
            ">;"
        }
    .end annotation
.end field

.field public static final aoq:Lcom/google/android/gms/nearby/connection/dev/Strategy;

.field public static final aor:Lcom/google/android/gms/nearby/connection/dev/Strategy;


# instance fields
.field private final aos:I

.field private final aot:I

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    new-instance v0, Lcom/google/android/gms/nearby/connection/dev/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/connection/dev/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/connection/dev/Strategy;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/nearby/connection/dev/Strategy;

    invoke-direct {v0, v2, v2}, Lcom/google/android/gms/nearby/connection/dev/Strategy;-><init>(II)V

    sput-object v0, Lcom/google/android/gms/nearby/connection/dev/Strategy;->aoq:Lcom/google/android/gms/nearby/connection/dev/Strategy;

    new-instance v0, Lcom/google/android/gms/nearby/connection/dev/Strategy;

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/nearby/connection/dev/Strategy;-><init>(II)V

    sput-object v0, Lcom/google/android/gms/nearby/connection/dev/Strategy;->aor:Lcom/google/android/gms/nearby/connection/dev/Strategy;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/nearby/connection/dev/Strategy;-><init>(III)V

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/connection/dev/Strategy;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/nearby/connection/dev/Strategy;->aos:I

    iput p3, p0, Lcom/google/android/gms/nearby/connection/dev/Strategy;->aot:I

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
    instance-of v2, p1, Lcom/google/android/gms/nearby/connection/dev/Strategy;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/nearby/connection/dev/Strategy;

    iget v2, p0, Lcom/google/android/gms/nearby/connection/dev/Strategy;->aos:I

    iget v3, p1, Lcom/google/android/gms/nearby/connection/dev/Strategy;->aos:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/android/gms/nearby/connection/dev/Strategy;->aot:I

    iget v3, p1, Lcom/google/android/gms/nearby/connection/dev/Strategy;->aot:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method getConnectionType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/connection/dev/Strategy;->aot:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/nearby/connection/dev/Strategy;->aos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/nearby/connection/dev/Strategy;->aot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/nearby/connection/dev/Strategy;->aos:I

    iget v1, p0, Lcom/google/android/gms/nearby/connection/dev/Strategy;->aot:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Strategy{discoveryMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", connectionType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/connection/dev/zzf;->zza(Lcom/google/android/gms/nearby/connection/dev/Strategy;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzbwp()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/connection/dev/Strategy;->aos:I

    return v0
.end method
