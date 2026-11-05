.class Lcom/google/android/gms/nearby/messages/internal/zzr$zzc$1;
.super Lcom/google/android/gms/nearby/messages/internal/zzr$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzr$zzc;->zzae(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzr$zzd",
        "<",
        "Lcom/google/android/gms/nearby/messages/MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aqy:Ljava/util/List;

.field final synthetic aqz:Lcom/google/android/gms/nearby/messages/internal/zzr$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzr$zzc;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzr$zzc$1;->aqz:Lcom/google/android/gms/nearby/messages/internal/zzr$zzc;

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzr$zzc$1;->aqy:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzr$zzd;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzr$1;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/messages/MessageListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzr$zzc$1;->aqy:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zza(Ljava/lang/Iterable;Lcom/google/android/gms/nearby/messages/MessageListener;)V

    return-void
.end method

.method public synthetic zzt(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/messages/MessageListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzr$zzc$1;->zza(Lcom/google/android/gms/nearby/messages/MessageListener;)V

    return-void
.end method
