.class final Lcom/google/android/gms/nearby/messages/internal/zzu;
.super Lcom/google/android/gms/nearby/messages/internal/zzj$zza;


# instance fields
.field private final aqM:Lcom/google/android/gms/internal/zzpm$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzpm$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private aqN:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzpm$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpm$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzj$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzu;->aqM:Lcom/google/android/gms/internal/zzpm$zzb;

    return-void
.end method

.method static zzu(Lcom/google/android/gms/internal/zzpm$zzb;)Lcom/google/android/gms/nearby/messages/internal/zzu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzpm$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)",
            "Lcom/google/android/gms/nearby/messages/internal/zzu;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/nearby/messages/internal/zzu;-><init>(Lcom/google/android/gms/internal/zzpm$zzb;)V

    return-object v0
.end method


# virtual methods
.method public zzdr(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzu;->aqN:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzu;->aqM:Lcom/google/android/gms/internal/zzpm$zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzpm$zzb;->setResult(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzu;->aqN:Z

    :cond_0
    return-void
.end method
