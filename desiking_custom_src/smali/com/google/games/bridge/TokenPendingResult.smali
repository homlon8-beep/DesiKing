.class public Lcom/google/games/bridge/TokenPendingResult;
.super Lcom/google/android/gms/common/api/PendingResult;
.source "TokenPendingResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/PendingResult",
        "<",
        "Lcom/google/games/bridge/TokenResult;",
        ">;"
    }
.end annotation


# instance fields
.field private latch:Ljava/util/concurrent/CountDownLatch;

.field result:Lcom/google/games/bridge/TokenResult;

.field private resultCallback:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-",
            "Lcom/google/games/bridge/TokenResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/games/bridge/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 40
    new-instance v0, Lcom/google/games/bridge/TokenResult;

    invoke-direct {v0}, Lcom/google/games/bridge/TokenResult;-><init>()V

    iput-object v0, p0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;

    .line 41
    return-void
.end method

.method private declared-synchronized getCallback()Lcom/google/android/gms/common/api/ResultCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-",
            "Lcom/google/games/bridge/TokenResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/games/bridge/TokenPendingResult;->resultCallback:Lcom/google/android/gms/common/api/ResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getResult()Lcom/google/games/bridge/TokenResult;
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-",
            "Lcom/google/games/bridge/TokenResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "callback":Lcom/google/android/gms/common/api/ResultCallback;, "Lcom/google/android/gms/common/api/ResultCallback<-Lcom/google/games/bridge/TokenResult;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/games/bridge/TokenPendingResult;->resultCallback:Lcom/google/android/gms/common/api/ResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "idToken"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "resultCode"    # I

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;

    invoke-virtual {v3}, Lcom/google/games/bridge/TokenResult;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "atok":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;

    invoke-virtual {v3}, Lcom/google/games/bridge/TokenResult;->getIdToken()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "itok":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;

    if-eqz v3, :cond_2

    if-nez p3, :cond_2

    iget-object v3, p0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;

    invoke-virtual {v3}, Lcom/google/games/bridge/TokenResult;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "em":Ljava/lang/String;
    :goto_2
    new-instance v3, Lcom/google/games/bridge/TokenResult;

    invoke-direct {v3, v0, v2, v1, p4}, Lcom/google/games/bridge/TokenResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .end local v0    # "atok":Ljava/lang/String;
    .end local v1    # "em":Ljava/lang/String;
    .end local v2    # "itok":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 131
    goto :goto_0

    .restart local v0    # "atok":Ljava/lang/String;
    :cond_1
    move-object v2, p2

    .line 132
    goto :goto_1

    .restart local v2    # "itok":Ljava/lang/String;
    :cond_2
    move-object v1, p3

    .line 133
    goto :goto_2

    .line 131
    .end local v0    # "atok":Ljava/lang/String;
    .end local v2    # "itok":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public bridge synthetic await()Lcom/google/android/gms/common/api/Result;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/games/bridge/TokenPendingResult;->await()Lcom/google/games/bridge/TokenResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/games/bridge/TokenPendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/games/bridge/TokenResult;

    move-result-object v0

    return-object v0
.end method

.method public await()Lcom/google/games/bridge/TokenResult;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/google/games/bridge/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    invoke-direct {p0}, Lcom/google/games/bridge/TokenPendingResult;->getResult()Lcom/google/games/bridge/TokenResult;

    move-result-object v1

    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/InterruptedException;
    const/16 v1, 0xe

    invoke-direct {p0, v2, v2, v2, v1}, Lcom/google/games/bridge/TokenPendingResult;->setResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Lcom/google/games/bridge/TokenResult;
    .locals 7
    .param p1, "l"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v5, 0x0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/google/games/bridge/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/games/bridge/TokenPendingResult;->setResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/games/bridge/TokenPendingResult;->getResult()Lcom/google/games/bridge/TokenResult;

    move-result-object v1

    return-object v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/InterruptedException;
    const/16 v1, 0xe

    invoke-direct {p0, v5, v5, v5, v1}, Lcom/google/games/bridge/TokenPendingResult;->setResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    const/16 v0, 0x10

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/google/games/bridge/TokenPendingResult;->setResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    iget-object v0, p0, Lcom/google/games/bridge/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 70
    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/games/bridge/TokenPendingResult;->getResult()Lcom/google/games/bridge/TokenResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/games/bridge/TokenPendingResult;->getResult()Lcom/google/games/bridge/TokenResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/games/bridge/TokenResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;

    invoke-virtual {v0, p1}, Lcom/google/games/bridge/TokenResult;->setAccessToken(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;

    invoke-virtual {v0, p1}, Lcom/google/games/bridge/TokenResult;->setEmail(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public setIdToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "idToken"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;

    invoke-virtual {v0, p1}, Lcom/google/games/bridge/TokenResult;->setIdToken(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-",
            "Lcom/google/games/bridge/TokenResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "resultCallback":Lcom/google/android/gms/common/api/ResultCallback;, "Lcom/google/android/gms/common/api/ResultCallback<-Lcom/google/games/bridge/TokenResult;>;"
    iget-object v0, p0, Lcom/google/games/bridge/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/google/games/bridge/TokenPendingResult;->getResult()Lcom/google/games/bridge/TokenResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/games/bridge/TokenPendingResult;->setCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p2, "l"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-",
            "Lcom/google/games/bridge/TokenResult;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "resultCallback":Lcom/google/android/gms/common/api/ResultCallback;, "Lcom/google/android/gms/common/api/ResultCallback<-Lcom/google/games/bridge/TokenResult;>;"
    const/4 v5, 0x0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/google/games/bridge/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1, p2, p3, p4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/games/bridge/TokenPendingResult;->setResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/games/bridge/TokenPendingResult;->getResult()Lcom/google/games/bridge/TokenResult;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V

    .line 111
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/InterruptedException;
    const/16 v1, 0xe

    invoke-direct {p0, v5, v5, v5, v1}, Lcom/google/games/bridge/TokenPendingResult;->setResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/games/bridge/TokenPendingResult;->result:Lcom/google/games/bridge/TokenResult;

    invoke-virtual {v0, p1}, Lcom/google/games/bridge/TokenResult;->setStatus(I)V

    .line 149
    iget-object v0, p0, Lcom/google/games/bridge/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 150
    invoke-direct {p0}, Lcom/google/games/bridge/TokenPendingResult;->getCallback()Lcom/google/android/gms/common/api/ResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/google/games/bridge/TokenPendingResult;->getCallback()Lcom/google/android/gms/common/api/ResultCallback;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/games/bridge/TokenPendingResult;->getResult()Lcom/google/games/bridge/TokenResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V

    .line 154
    :cond_0
    return-void
.end method

.method setToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "idToken"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "resultCode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/games/bridge/TokenPendingResult;->setResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    iget-object v0, p0, Lcom/google/games/bridge/TokenPendingResult;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 76
    invoke-direct {p0}, Lcom/google/games/bridge/TokenPendingResult;->getCallback()Lcom/google/android/gms/common/api/ResultCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/google/games/bridge/TokenPendingResult;->getCallback()Lcom/google/android/gms/common/api/ResultCallback;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/games/bridge/TokenPendingResult;->getResult()Lcom/google/games/bridge/TokenResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V

    .line 79
    :cond_0
    return-void
.end method
