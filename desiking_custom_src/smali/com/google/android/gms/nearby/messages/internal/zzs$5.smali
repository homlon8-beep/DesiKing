.class Lcom/google/android/gms/nearby/messages/internal/zzs$5;
.super Lcom/google/android/gms/nearby/messages/internal/zzs$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzs;->subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aoP:Lcom/google/android/gms/internal/zzqn;

.field final synthetic aqH:Lcom/google/android/gms/nearby/messages/internal/zzs;

.field final synthetic aqK:Lcom/google/android/gms/nearby/messages/MessageListener;

.field final synthetic aqL:Lcom/google/android/gms/nearby/messages/SubscribeOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzs;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzs$5;->aqH:Lcom/google/android/gms/nearby/messages/internal/zzs;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/internal/zzs$5;->aoP:Lcom/google/android/gms/internal/zzqn;

    iput-object p4, p0, Lcom/google/android/gms/nearby/messages/internal/zzs$5;->aqK:Lcom/google/android/gms/nearby/messages/MessageListener;

    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzs$5;->aqL:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzs$5;->zza(Lcom/google/android/gms/nearby/messages/internal/zzr;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/nearby/messages/internal/zzr;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzs$5;->aoP:Lcom/google/android/gms/internal/zzqn;

    iget-object v3, p0, Lcom/google/android/gms/nearby/messages/internal/zzs$5;->aqK:Lcom/google/android/gms/nearby/messages/MessageListener;

    iget-object v4, p0, Lcom/google/android/gms/nearby/messages/internal/zzs$5;->aqL:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/internal/zzr;->zza(Lcom/google/android/gms/internal/zzpm$zzb;Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/nearby/messages/MessageListener;Lcom/google/android/gms/nearby/messages/SubscribeOptions;[B)V

    return-void
.end method
