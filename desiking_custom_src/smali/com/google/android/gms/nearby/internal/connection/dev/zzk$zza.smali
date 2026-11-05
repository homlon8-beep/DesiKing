.class public abstract Lcom/google/android/gms/nearby/internal/connection/dev/zzk$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/nearby/internal/connection/dev/zzk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/internal/connection/dev/zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/internal/connection/dev/zzk$zza$zza;
    }
.end annotation


# direct methods
.method public static zzju(Landroid/os/IBinder;)Lcom/google/android/gms/nearby/internal/connection/dev/zzk;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.nearby.internal.connection.dev.IMessageListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/nearby/internal/connection/dev/zzk;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/nearby/internal/connection/dev/zzk;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/nearby/internal/connection/dev/zzk$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/nearby/internal/connection/dev/zzk$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.nearby.internal.connection.dev.IMessageListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v2, "com.google.android.gms.nearby.internal.connection.dev.IMessageListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/google/android/gms/nearby/internal/connection/dev/OnMessageReceivedParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/internal/connection/dev/OnMessageReceivedParams;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/nearby/internal/connection/dev/zzk$zza;->zza(Lcom/google/android/gms/nearby/internal/connection/dev/OnMessageReceivedParams;)V

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v2, "com.google.android.gms.nearby.internal.connection.dev.IMessageListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/google/android/gms/nearby/internal/connection/dev/OnDisconnectedParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/internal/connection/dev/OnDisconnectedParams;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/nearby/internal/connection/dev/zzk$zza;->zza(Lcom/google/android/gms/nearby/internal/connection/dev/OnDisconnectedParams;)V

    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
