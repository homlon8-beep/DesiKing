.class public Lcom/google/android/gms/nearby/messages/MessagesOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;
    }
.end annotation


# instance fields
.field public final apA:Z

.field public final apB:I

.field public final apC:Ljava/lang/String;

.field public final apz:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;->zza(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessagesOptions;->apz:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;->zzb(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/nearby/messages/MessagesOptions;->apA:Z

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;->zzc(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/nearby/messages/MessagesOptions;->apB:I

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;->zzd(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessagesOptions;->apC:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;Lcom/google/android/gms/nearby/messages/MessagesOptions$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/MessagesOptions;-><init>(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;)V

    return-void
.end method
