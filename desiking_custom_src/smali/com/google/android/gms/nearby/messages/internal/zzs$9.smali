.class Lcom/google/android/gms/nearby/messages/internal/zzs$9;
.super Lcom/google/android/gms/nearby/messages/internal/zzs$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzs;->getPermissionStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aqH:Lcom/google/android/gms/nearby/messages/internal/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzs;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzs$9;->aqH:Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-direct {p0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzs$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzr;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzs$9;->zza(Lcom/google/android/gms/nearby/messages/internal/zzr;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/internal/zzr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/nearby/messages/internal/zzr;->zzt(Lcom/google/android/gms/internal/zzpm$zzb;)V

    return-void
.end method
