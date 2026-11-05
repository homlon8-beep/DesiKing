.class public Lcom/google/android/gms/drive/internal/ControlProgressRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/ControlProgressRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Ds:Lcom/google/android/gms/drive/DriveId;

.field final Fj:I

.field final Fk:I

.field final Fl:Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/ControlProgressRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/ControlProgressRequest;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/drive/internal/ControlProgressRequest;->Fj:I

    iput p3, p0, Lcom/google/android/gms/drive/internal/ControlProgressRequest;->Fk:I

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/ControlProgressRequest;->Ds:Lcom/google/android/gms/drive/DriveId;

    iput-object p5, p0, Lcom/google/android/gms/drive/internal/ControlProgressRequest;->Fl:Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzj;->zza(Lcom/google/android/gms/drive/internal/ControlProgressRequest;Landroid/os/Parcel;I)V

    return-void
.end method
