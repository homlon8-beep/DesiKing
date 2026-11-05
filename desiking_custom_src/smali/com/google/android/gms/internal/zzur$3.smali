.class Lcom/google/android/gms/internal/zzur$3;
.super Lcom/google/android/gms/internal/zzur$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzur;->startDiscovery(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/Connections$EndpointDiscoveryListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aoJ:Ljava/lang/String;

.field final synthetic aoM:J

.field final synthetic aoO:Lcom/google/android/gms/internal/zzur;

.field final synthetic aoP:Lcom/google/android/gms/internal/zzqn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLcom/google/android/gms/internal/zzqn;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzur$3;->aoO:Lcom/google/android/gms/internal/zzur;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzur$3;->aoJ:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzur$3;->aoM:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzur$3;->aoP:Lcom/google/android/gms/internal/zzqn;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/zzur$zzc;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzur$1;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzuq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzur$3;->zza(Lcom/google/android/gms/internal/zzuq;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzuq;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/gms/internal/zzur$3;->aoJ:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzur$3;->aoM:J

    iget-object v6, p0, Lcom/google/android/gms/internal/zzur$3;->aoP:Lcom/google/android/gms/internal/zzqn;

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzuq;->zza(Lcom/google/android/gms/internal/zzpm$zzb;Ljava/lang/String;JLcom/google/android/gms/internal/zzqn;)V

    return-void
.end method
