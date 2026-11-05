.class Lcom/google/android/gms/internal/zzfs$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzep;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfs$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzblz:Lcom/google/android/gms/internal/zzfp;

.field final synthetic zzbma:Lcom/google/android/gms/internal/zzfs$1;

.field final synthetic zzbmd:Lcom/google/android/gms/internal/zzks;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfs$1;Lcom/google/android/gms/internal/zzfp;Lcom/google/android/gms/internal/zzks;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzblz:Lcom/google/android/gms/internal/zzfp;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbmd:Lcom/google/android/gms/internal/zzks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzlh;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzlh;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfs;->zzc(Lcom/google/android/gms/internal/zzfs;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "JS Engine is requesting an update"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfs;->zze(Lcom/google/android/gms/internal/zzfs;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starting reload."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzfs;->zza(Lcom/google/android/gms/internal/zzfs;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfs$1;->zzbly:Lcom/google/android/gms/internal/zzfs;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbma:Lcom/google/android/gms/internal/zzfs$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzfs$1;->zzblw:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzfs;->zzb(Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzfs$zzd;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzblz:Lcom/google/android/gms/internal/zzfp;

    const-string v3, "/requestReload"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfs$1$3;->zzbmd:Lcom/google/android/gms/internal/zzks;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzks;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzep;

    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/zzfp;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzep;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
