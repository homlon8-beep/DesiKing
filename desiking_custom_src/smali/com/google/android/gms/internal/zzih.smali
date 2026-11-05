.class public Lcom/google/android/gms/internal/zzih;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzih$zza;
    }
.end annotation


# static fields
.field private static final zzamr:Ljava/lang/Object;

.field private static final zzbyt:J

.field private static zzbyu:Z

.field private static zzbyv:Lcom/google/android/gms/internal/zzfs;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbfx:Lcom/google/android/gms/ads/internal/zzq;

.field private final zzbgd:Lcom/google/android/gms/internal/zzas;

.field private final zzbxr:Lcom/google/android/gms/internal/zzju$zza;

.field private zzbyw:Lcom/google/android/gms/internal/zzfq;

.field private zzbyx:Lcom/google/android/gms/internal/zzfs$zze;

.field private zzbyy:Lcom/google/android/gms/internal/zzfp;

.field private zzbyz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzih;->zzbyt:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzih;->zzamr:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzih;->zzbyu:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzih;->zzbyv:Lcom/google/android/gms/internal/zzfs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzju$zza;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzas;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyz:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzih;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzih;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzih;->zzbgd:Lcom/google/android/gms/internal/zzas;

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbcf:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyz:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzih;)Lcom/google/android/gms/ads/internal/zzq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/internal/zzju$zza;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbac:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbto:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https:"

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v1, "http:"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private zzqi()V
    .locals 7

    sget-object v6, Lcom/google/android/gms/internal/zzih;->zzamr:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/google/android/gms/internal/zzih;->zzbyu:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzfs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzih;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzih;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzih;->zzd(Lcom/google/android/gms/internal/zzju$zza;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzih$3;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzih$3;-><init>(Lcom/google/android/gms/internal/zzih;)V

    new-instance v5, Lcom/google/android/gms/internal/zzfs$zzb;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzfs$zzb;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzfs;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzkl;Lcom/google/android/gms/internal/zzkl;)V

    sput-object v0, Lcom/google/android/gms/internal/zzih;->zzbyv:Lcom/google/android/gms/internal/zzfs;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/zzih;->zzbyu:Z

    :cond_0
    monitor-exit v6

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zzqj()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzfs$zze;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzih;->zzqo()Lcom/google/android/gms/internal/zzfs;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzih;->zzbgd:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzfs;->zzc(Lcom/google/android/gms/internal/zzas;)Lcom/google/android/gms/internal/zzfs$zzc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfs$zze;-><init>(Lcom/google/android/gms/internal/zzfs$zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyx:Lcom/google/android/gms/internal/zzfs$zze;

    return-void
.end method

.method private zzqk()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzfq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyw:Lcom/google/android/gms/internal/zzfq;

    return-void
.end method

.method private zzql()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzih;->zzqm()Lcom/google/android/gms/internal/zzfq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzih;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzaow:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzih;->zzbxr:Lcom/google/android/gms/internal/zzju$zza;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzih;->zzd(Lcom/google/android/gms/internal/zzju$zza;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzih;->zzbgd:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzfq;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzas;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-wide v2, Lcom/google/android/gms/internal/zzih;->zzbyt:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfp;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyy:Lcom/google/android/gms/internal/zzfp;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyy:Lcom/google/android/gms/internal/zzfp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzih;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzih;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzih;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzih;->zzbfx:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v5, 0x0

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/zzfp;->zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzel;Lcom/google/android/gms/ads/internal/overlay/zzp;ZLcom/google/android/gms/internal/zzer;Lcom/google/android/gms/internal/zzet;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzhg;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzih$zza;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyz:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzih;->zzqp()Lcom/google/android/gms/internal/zzfs$zze;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SharedJavascriptEngine not initialized"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzih$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzih$1;-><init>(Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/internal/zzih$zza;)V

    new-instance v2, Lcom/google/android/gms/internal/zzih$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/zzih$2;-><init>(Lcom/google/android/gms/internal/zzih;Lcom/google/android/gms/internal/zzih$zza;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzfs$zze;->zza(Lcom/google/android/gms/internal/zzla$zzc;Lcom/google/android/gms/internal/zzla$zza;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzih;->zzqn()Lcom/google/android/gms/internal/zzfp;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "JavascriptEngine not initialized"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzih$zza;->zze(Lcom/google/android/gms/internal/zzft;)V

    goto :goto_0
.end method

.method public zzqg()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyz:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzih;->zzqi()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzih;->zzqk()V

    goto :goto_0
.end method

.method public zzqh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyz:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzih;->zzqj()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzih;->zzql()V

    goto :goto_0
.end method

.method protected zzqm()Lcom/google/android/gms/internal/zzfq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyw:Lcom/google/android/gms/internal/zzfq;

    return-object v0
.end method

.method protected zzqn()Lcom/google/android/gms/internal/zzfp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyy:Lcom/google/android/gms/internal/zzfp;

    return-object v0
.end method

.method protected zzqo()Lcom/google/android/gms/internal/zzfs;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzih;->zzbyv:Lcom/google/android/gms/internal/zzfs;

    return-object v0
.end method

.method protected zzqp()Lcom/google/android/gms/internal/zzfs$zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzih;->zzbyx:Lcom/google/android/gms/internal/zzfs$zze;

    return-object v0
.end method
