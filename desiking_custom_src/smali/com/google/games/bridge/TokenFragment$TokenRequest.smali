.class Lcom/google/games/bridge/TokenFragment$TokenRequest;
.super Ljava/lang/Object;
.source "TokenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/games/bridge/TokenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenRequest"
.end annotation


# instance fields
.field private doAccessToken:Z

.field private doEmail:Z

.field private doIdToken:Z

.field private pendingResponse:Lcom/google/games/bridge/TokenPendingResult;

.field private rationale:Ljava/lang/String;

.field private scope:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZZLjava/lang/String;)V
    .locals 1
    .param p1, "fetchEmail"    # Z
    .param p2, "fetchAccessToken"    # Z
    .param p3, "fetchIdToken"    # Z
    .param p4, "scope"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    new-instance v0, Lcom/google/games/bridge/TokenPendingResult;

    invoke-direct {v0}, Lcom/google/games/bridge/TokenPendingResult;-><init>()V

    iput-object v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->pendingResponse:Lcom/google/games/bridge/TokenPendingResult;

    .line 365
    iput-boolean p1, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->doEmail:Z

    .line 366
    iput-boolean p2, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->doAccessToken:Z

    .line 367
    iput-boolean p3, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->doIdToken:Z

    .line 368
    iput-object p4, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->scope:Ljava/lang/String;

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/google/games/bridge/TokenFragment$TokenRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/games/bridge/TokenFragment$TokenRequest;

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->doEmail:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/games/bridge/TokenFragment$TokenRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/games/bridge/TokenFragment$TokenRequest;

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->doAccessToken:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/games/bridge/TokenFragment$TokenRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/games/bridge/TokenFragment$TokenRequest;

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->doIdToken:Z

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->pendingResponse:Lcom/google/games/bridge/TokenPendingResult;

    invoke-virtual {v0}, Lcom/google/games/bridge/TokenPendingResult;->cancel()V

    .line 385
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->pendingResponse:Lcom/google/games/bridge/TokenPendingResult;

    iget-object v0, v0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;

    invoke-virtual {v0}, Lcom/google/games/bridge/TokenResult;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->pendingResponse:Lcom/google/games/bridge/TokenPendingResult;

    iget-object v0, v0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;

    invoke-virtual {v0}, Lcom/google/games/bridge/TokenResult;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->pendingResponse:Lcom/google/games/bridge/TokenPendingResult;

    iget-object v0, v0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;

    invoke-virtual {v0}, Lcom/google/games/bridge/TokenResult;->getIdToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPendingResponse()Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->pendingResponse:Lcom/google/games/bridge/TokenPendingResult;

    return-object v0
.end method

.method public getRationale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->rationale:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->pendingResponse:Lcom/google/games/bridge/TokenPendingResult;

    invoke-virtual {v0, p1}, Lcom/google/games/bridge/TokenPendingResult;->setAccessToken(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->pendingResponse:Lcom/google/games/bridge/TokenPendingResult;

    invoke-virtual {v0, p1}, Lcom/google/games/bridge/TokenPendingResult;->setEmail(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public setIdToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "idToken"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->pendingResponse:Lcom/google/games/bridge/TokenPendingResult;

    invoke-virtual {v0, p1}, Lcom/google/games/bridge/TokenPendingResult;->setIdToken(Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public setRationale(Ljava/lang/String;)V
    .locals 0
    .param p1, "rationale"    # Ljava/lang/String;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->rationale:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public setResult(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->pendingResponse:Lcom/google/games/bridge/TokenPendingResult;

    invoke-virtual {v0, p1}, Lcom/google/games/bridge/TokenPendingResult;->setStatus(I)V

    .line 377
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->doEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->doAccessToken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " i:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/games/bridge/TokenFragment$TokenRequest;->doIdToken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
