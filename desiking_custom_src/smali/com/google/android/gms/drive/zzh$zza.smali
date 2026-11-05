.class public Lcom/google/android/gms/drive/zzh$zza;
.super Lcom/google/android/gms/drive/ExecutionOptions$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic build()Lcom/google/android/gms/drive/ExecutionOptions;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zzh$zza;->zzazg()Lcom/google/android/gms/drive/zzh;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzh$zza;->zzir(I)Lcom/google/android/gms/drive/zzh$zza;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzh$zza;->zzbp(Z)Lcom/google/android/gms/drive/zzh$zza;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzh$zza;->zzig(Ljava/lang/String;)Lcom/google/android/gms/drive/zzh$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzazg()Lcom/google/android/gms/drive/zzh;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zzh$zza;->zzazd()V

    new-instance v0, Lcom/google/android/gms/drive/zzh;

    iget-object v1, p0, Lcom/google/android/gms/drive/zzh$zza;->DO:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/drive/zzh$zza;->DP:Z

    iget v5, p0, Lcom/google/android/gms/drive/zzh$zza;->DQ:I

    move-object v4, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/zzh;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/drive/zzh$1;)V

    return-object v0
.end method

.method public zzbp(Z)Lcom/google/android/gms/drive/zzh$zza;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public zzig(Ljava/lang/String;)Lcom/google/android/gms/drive/zzh$zza;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public zzir(I)Lcom/google/android/gms/drive/zzh$zza;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
