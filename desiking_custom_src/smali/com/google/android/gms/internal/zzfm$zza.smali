.class Lcom/google/android/gms/internal/zzfm$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field zzbkv:Lcom/google/android/gms/ads/internal/zzl;

.field zzbkw:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzbkx:Lcom/google/android/gms/internal/zzfi;

.field zzbky:J

.field zzbkz:Z

.field zzbla:Z

.field final synthetic zzblb:Lcom/google/android/gms/internal/zzfm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfm;Lcom/google/android/gms/internal/zzfh;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzblb:Lcom/google/android/gms/internal/zzfm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfm;->zza(Lcom/google/android/gms/internal/zzfm;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzfh;->zzbd(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkv:Lcom/google/android/gms/ads/internal/zzl;

    new-instance v0, Lcom/google/android/gms/internal/zzfi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkx:Lcom/google/android/gms/internal/zzfi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkx:Lcom/google/android/gms/internal/zzfi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkv:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfi;->zzc(Lcom/google/android/gms/ads/internal/zzl;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzfm;Lcom/google/android/gms/internal/zzfh;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfm$zza;-><init>(Lcom/google/android/gms/internal/zzfm;Lcom/google/android/gms/internal/zzfh;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkw:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    return-void
.end method


# virtual methods
.method zzlv()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkz:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkw:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkw:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/zzfk;->zzj(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkv:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzl;->zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbla:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbkz:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzbky:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfm$zza;->zzblb:Lcom/google/android/gms/internal/zzfm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfm;->zzb(Lcom/google/android/gms/internal/zzfm;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v0

    goto :goto_1
.end method
