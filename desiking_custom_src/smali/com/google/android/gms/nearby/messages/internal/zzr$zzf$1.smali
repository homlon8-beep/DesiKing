.class Lcom/google/android/gms/nearby/messages/internal/zzr$zzf$1;
.super Lcom/google/android/gms/nearby/messages/internal/zzr$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzr$zzf;->onPermissionChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzr$zzd",
        "<",
        "Lcom/google/android/gms/nearby/messages/StatusCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aqC:Z

.field final synthetic aqD:Lcom/google/android/gms/nearby/messages/internal/zzr$zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzr$zzf;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzr$zzf$1;->aqD:Lcom/google/android/gms/nearby/messages/internal/zzr$zzf;

    iput-boolean p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzr$zzf$1;->aqC:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzr$zzd;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzr$1;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/messages/StatusCallback;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzr$zzf$1;->aqC:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/messages/StatusCallback;->onPermissionChanged(Z)V

    return-void
.end method

.method public synthetic zzt(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/messages/StatusCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzr$zzf$1;->zza(Lcom/google/android/gms/nearby/messages/StatusCallback;)V

    return-void
.end method
