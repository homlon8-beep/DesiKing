.class Lcom/google/android/gms/nearby/messages/internal/zzs$7;
.super Lcom/google/android/gms/nearby/messages/internal/zzs$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzs;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aoP:Lcom/google/android/gms/internal/zzqn;

.field final synthetic aqH:Lcom/google/android/gms/nearby/messages/internal/zzs;

.field final synthetic aqK:Lcom/google/android/gms/nearby/messages/MessageListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzs;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/nearby/messages/MessageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzs$7;->aqH:Lcom/google/android/gms/nearby/messages/internal/zzs;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzs$7;->aoP:Lcom/google/android/gms/internal/zzqn;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzs$7;->aqK:Lcom/google/android/gms/nearby/messages/MessageListener;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzs$7;->zza(Lcom/google/android/gms/nearby/messages/internal/zzr;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/internal/zzr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzs$7;->aoP:Lcom/google/android/gms/internal/zzqn;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzs$7;->aqK:Lcom/google/android/gms/nearby/messages/MessageListener;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/nearby/messages/internal/zzr;->zza(Lcom/google/android/gms/internal/zzpm$zzb;Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/nearby/messages/MessageListener;)V

    return-void
.end method
