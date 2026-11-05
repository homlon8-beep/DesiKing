.class Lcom/google/android/gms/tagmanager/zzdb;
.super Lcom/google/android/gms/tagmanager/zzda;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzdb$zzb;,
        Lcom/google/android/gms/tagmanager/zzdb$zza;
    }
.end annotation


# static fields
.field private static final axN:Ljava/lang/Object;

.field private static axZ:Lcom/google/android/gms/tagmanager/zzdb;


# instance fields
.field private axO:Landroid/content/Context;

.field private axP:Lcom/google/android/gms/tagmanager/zzav;

.field private volatile axQ:Lcom/google/android/gms/tagmanager/zzat;

.field private axR:I

.field private axS:Z

.field private axT:Z

.field private axU:Z

.field private axV:Lcom/google/android/gms/tagmanager/zzaw;

.field private axW:Lcom/google/android/gms/tagmanager/zzdb$zza;

.field private axX:Lcom/google/android/gms/tagmanager/zzbs;

.field private axY:Z

.field private connected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdb;->axN:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzda;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axR:I

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzdb;->axS:Z

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/zzdb;->axT:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzdb;->connected:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzdb;->axU:Z

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdb$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzdb$1;-><init>(Lcom/google/android/gms/tagmanager/zzdb;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axV:Lcom/google/android/gms/tagmanager/zzaw;

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/zzdb;->axY:Z

    return-void
.end method

.method private isPowerSaveMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axY:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->connected:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axR:I

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzdb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axO:Landroid/content/Context;

    return-object v0
.end method

.method private zzaam()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdb;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axW:Lcom/google/android/gms/tagmanager/zzdb$zza;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzdb$zza;->cancel()V

    const-string v0, "PowerSaveMode initiated."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axW:Lcom/google/android/gms/tagmanager/zzdb$zza;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzdb;->axR:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzv(J)V

    const-string v0, "PowerSaveMode terminated."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzdb;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdb;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/tagmanager/zzdb;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axR:I

    return v0
.end method

.method public static zzcdc()Lcom/google/android/gms/tagmanager/zzdb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdb;->axZ:Lcom/google/android/gms/tagmanager/zzdb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdb;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzdb;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzdb;->axZ:Lcom/google/android/gms/tagmanager/zzdb;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzdb;->axZ:Lcom/google/android/gms/tagmanager/zzdb;

    return-object v0
.end method

.method private zzcdd()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzbs;-><init>(Lcom/google/android/gms/tagmanager/zzda;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axX:Lcom/google/android/gms/tagmanager/zzbs;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axX:Lcom/google/android/gms/tagmanager/zzbs;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdb;->axO:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzbs;->zzed(Landroid/content/Context;)V

    return-void
.end method

.method private zzcde()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdb$zzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/tagmanager/zzdb$zzb;-><init>(Lcom/google/android/gms/tagmanager/zzdb;Lcom/google/android/gms/tagmanager/zzdb$1;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axW:Lcom/google/android/gms/tagmanager/zzdb$zza;

    iget v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axR:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axW:Lcom/google/android/gms/tagmanager/zzdb$zza;

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzdb;->axR:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzv(J)V

    :cond_0
    return-void
.end method

.method static synthetic zzcdg()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzdb;->axN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/tagmanager/zzdb;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->connected:Z

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/tagmanager/zzdb;)Lcom/google/android/gms/tagmanager/zzav;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axP:Lcom/google/android/gms/tagmanager/zzav;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized dispatch()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axT:Z

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axQ:Lcom/google/android/gms/tagmanager/zzat;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzdb$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/zzdb$2;-><init>(Lcom/google/android/gms/tagmanager/zzdb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzat;->zzp(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzat;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axO:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axO:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axQ:Lcom/google/android/gms/tagmanager/zzat;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzdb;->axQ:Lcom/google/android/gms/tagmanager/zzat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zzcdf()Lcom/google/android/gms/tagmanager/zzav;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axP:Lcom/google/android/gms/tagmanager/zzav;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axO:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/tagmanager/zzcf;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdb;->axV:Lcom/google/android/gms/tagmanager/zzaw;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzdb;->axO:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzcf;-><init>(Lcom/google/android/gms/tagmanager/zzaw;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axP:Lcom/google/android/gms/tagmanager/zzav;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axW:Lcom/google/android/gms/tagmanager/zzdb$zza;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdb;->zzcde()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axT:Z

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axS:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzdb;->dispatch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axS:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axX:Lcom/google/android/gms/tagmanager/zzbs;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axU:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdb;->zzcdd()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axP:Lcom/google/android/gms/tagmanager/zzav;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized zzci(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axY:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/zzdb;->zze(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zze(ZZ)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdb;->isPowerSaveMode()Z

    move-result v0

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/zzdb;->axY:Z

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzdb;->connected:Z

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdb;->isPowerSaveMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdb;->zzaam()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzys()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzdb;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdb;->axW:Lcom/google/android/gms/tagmanager/zzdb$zza;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzdb$zza;->zzcdh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
