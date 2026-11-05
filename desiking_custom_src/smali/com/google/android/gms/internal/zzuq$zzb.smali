.class Lcom/google/android/gms/internal/zzuq$zzb;
.super Lcom/google/android/gms/internal/zzup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzuq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final aou:Lcom/google/android/gms/internal/zzqn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqn",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqn",
            "<",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzup;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuq$zzb;->aou:Lcom/google/android/gms/internal/zzqn;

    return-void
.end method


# virtual methods
.method public onDisconnected(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuq$zzb;->aou:Lcom/google/android/gms/internal/zzqn;

    new-instance v1, Lcom/google/android/gms/internal/zzuq$zzb$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzuq$zzb$2;-><init>(Lcom/google/android/gms/internal/zzuq$zzb;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqn;->zza(Lcom/google/android/gms/internal/zzqn$zzb;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/String;[BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuq$zzb;->aou:Lcom/google/android/gms/internal/zzqn;

    new-instance v1, Lcom/google/android/gms/internal/zzuq$zzb$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzuq$zzb$1;-><init>(Lcom/google/android/gms/internal/zzuq$zzb;Ljava/lang/String;[BZ)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqn;->zza(Lcom/google/android/gms/internal/zzqn$zzb;)V

    return-void
.end method
