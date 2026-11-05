.class Lcom/google/android/gms/nearby/messages/internal/zzr$2;
.super Lcom/google/android/gms/nearby/messages/internal/zzr$zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/messages/internal/zzr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzr$zzh",
        "<",
        "Lcom/google/android/gms/nearby/messages/MessageListener;",
        "Lcom/google/android/gms/nearby/messages/internal/zzr$zzc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aqv:Lcom/google/android/gms/nearby/messages/internal/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzr;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzr$2;->aqv:Lcom/google/android/gms/nearby/messages/internal/zzr;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzr$zzh;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzr$1;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzg(Lcom/google/android/gms/internal/zzqn;)Lcom/google/android/gms/nearby/messages/internal/zzr$zza;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzr$2;->zzh(Lcom/google/android/gms/internal/zzqn;)Lcom/google/android/gms/nearby/messages/internal/zzr$zzc;

    move-result-object v0

    return-object v0
.end method

.method protected zzh(Lcom/google/android/gms/internal/zzqn;)Lcom/google/android/gms/nearby/messages/internal/zzr$zzc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzqn",
            "<",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ">;)",
            "Lcom/google/android/gms/nearby/messages/internal/zzr$zzc;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzr$zzc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/nearby/messages/internal/zzr$zzc;-><init>(Lcom/google/android/gms/internal/zzqn;Lcom/google/android/gms/nearby/messages/internal/zzr$1;)V

    return-object v0
.end method
