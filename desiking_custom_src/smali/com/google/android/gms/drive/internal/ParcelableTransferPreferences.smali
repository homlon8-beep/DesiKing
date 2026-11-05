.class public Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final GA:I

.field final GB:I

.field final Ho:Z

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzbk;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzbk;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;->GA:I

    iput p3, p0, Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;->GB:I

    iput-boolean p4, p0, Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;->Ho:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzbk;->zza(Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;Landroid/os/Parcel;I)V

    return-void
.end method
