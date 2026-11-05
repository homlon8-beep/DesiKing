.class Lcom/google/android/gms/nearby/messages/internal/zzr$zzf;
.super Lcom/google/android/gms/nearby/messages/internal/zzm$zza;

# interfaces
.implements Lcom/google/android/gms/nearby/messages/internal/zzr$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/messages/internal/zzr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzm$zza;",
        "Lcom/google/android/gms/nearby/messages/internal/zzr$zza",
        "<",
        "Lcom/google/android/gms/nearby/messages/StatusCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final aqB:Lcom/google/android/gms/internal/zzqn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzqn",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzqn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqn",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzm$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzr$zzf;->aqB:Lcom/google/android/gms/internal/zzqn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/nearby/messages/internal/zzr$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzr$zzf;-><init>(Lcom/google/android/gms/internal/zzqn;)V

    return-void
.end method


# virtual methods
.method public onPermissionChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzr$zzf;->aqB:Lcom/google/android/gms/internal/zzqn;

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzr$zzf$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzr$zzf$1;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzr$zzf;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzqn;->zza(Lcom/google/android/gms/internal/zzqn$zzb;)V

    return-void
.end method

.method public zzbxu()Lcom/google/android/gms/internal/zzqn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzqn",
            "<",
            "Lcom/google/android/gms/nearby/messages/StatusCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzr$zzf;->aqB:Lcom/google/android/gms/internal/zzqn;

    return-object v0
.end method
