.class public Lcom/google/games/bridge/TokenResult;
.super Ljava/lang/Object;
.source "TokenResult.java"

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private idToken:Ljava/lang/String;

.field private status:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "idToken"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "resultCode"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/games/bridge/TokenResult;->status:Lcom/google/android/gms/common/api/Status;

    .line 38
    iput-object p1, p0, Lcom/google/games/bridge/TokenResult;->accessToken:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/google/games/bridge/TokenResult;->idToken:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/google/games/bridge/TokenResult;->email:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/games/bridge/TokenResult;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/games/bridge/TokenResult;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/games/bridge/TokenResult;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/games/bridge/TokenResult;->status:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/games/bridge/TokenResult;->accessToken:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/games/bridge/TokenResult;->email:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setIdToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "idToken"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/games/bridge/TokenResult;->idToken:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/games/bridge/TokenResult;->status:Lcom/google/android/gms/common/api/Status;

    .line 62
    return-void
.end method
