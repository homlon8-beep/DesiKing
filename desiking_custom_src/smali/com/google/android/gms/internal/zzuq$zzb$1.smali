.class Lcom/google/android/gms/internal/zzuq$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqn$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzuq$zzb;->onMessageReceived(Ljava/lang/String;[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqn$zzb",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aov:Ljava/lang/String;

.field final synthetic aow:[B

.field final synthetic aox:Z

.field final synthetic aoy:Lcom/google/android/gms/internal/zzuq$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzuq$zzb;Ljava/lang/String;[BZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzuq$zzb$1;->aoy:Lcom/google/android/gms/internal/zzuq$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzuq$zzb$1;->aov:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzuq$zzb$1;->aow:[B

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzuq$zzb$1;->aox:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzuq$zzb$1;->aov:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzuq$zzb$1;->aow:[B

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzuq$zzb$1;->aox:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;->onMessageReceived(Ljava/lang/String;[BZ)V

    return-void
.end method

.method public zzapj()V
    .locals 0

    return-void
.end method

.method public synthetic zzt(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzuq$zzb$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)V

    return-void
.end method
