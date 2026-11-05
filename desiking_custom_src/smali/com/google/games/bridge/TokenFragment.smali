.class public Lcom/google/games/bridge/TokenFragment;
.super Landroid/app/Fragment;
.source "TokenFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/games/bridge/TokenFragment$TokenRequest;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "gpg.TokenSupport"

.field private static final RC_ACCT:I = 0x232a

.field private static final TAG:Ljava/lang/String; = "TokenFragment"

.field private static currentPlayerId:Ljava/lang/String;

.field private static mIsSelecting:Z

.field private static final pendingTokenRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/games/bridge/TokenFragment$TokenRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static selectedAccountName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/games/bridge/TokenFragment;->mIsSelecting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private doGetToken(Lcom/google/games/bridge/TokenFragment$TokenRequest;Ljava/lang/String;)V
    .locals 5
    .param p1, "tokenRequest"    # Lcom/google/games/bridge/TokenFragment$TokenRequest;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/google/games/bridge/TokenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 206
    .local v1, "theActivity":Landroid/app/Activity;
    const-string v2, "TokenFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling doGetToken for e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 207
    invoke-static {p1}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->access$000(Lcom/google/games/bridge/TokenFragment$TokenRequest;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " a:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->access$100(Lcom/google/games/bridge/TokenFragment$TokenRequest;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 208
    invoke-static {p1}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->access$200(Lcom/google/games/bridge/TokenFragment$TokenRequest;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v0, Lcom/google/games/bridge/TokenFragment$1;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/games/bridge/TokenFragment$1;-><init>(Lcom/google/games/bridge/TokenFragment;Lcom/google/games/bridge/TokenFragment$TokenRequest;Ljava/lang/String;Landroid/app/Activity;)V

    .line 295
    .local v0, "t":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Integer;Lcom/google/games/bridge/TokenFragment$TokenRequest;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 296
    return-void
.end method

.method public static fetchToken(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 9
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "playerId"    # Ljava/lang/String;
    .param p2, "rationale"    # Ljava/lang/String;
    .param p3, "fetchEmail"    # Z
    .param p4, "fetchAccessToken"    # Z
    .param p5, "fetchIdToken"    # Z
    .param p6, "scope"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v2, Lcom/google/games/bridge/TokenFragment$TokenRequest;

    invoke-direct {v2, p3, p4, p5, p6}, Lcom/google/games/bridge/TokenFragment$TokenRequest;-><init>(ZZZLjava/lang/String;)V

    .line 77
    .local v2, "request":Lcom/google/games/bridge/TokenFragment$TokenRequest;
    invoke-virtual {v2, p2}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->setRationale(Ljava/lang/String;)V

    .line 79
    sget-object v6, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    monitor-enter v6

    .line 80
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v5, Lcom/google/games/bridge/TokenFragment;->currentPlayerId:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 81
    :cond_0
    sput-object p1, Lcom/google/games/bridge/TokenFragment;->currentPlayerId:Ljava/lang/String;

    .line 82
    const/4 v5, 0x0

    sput-object v5, Lcom/google/games/bridge/TokenFragment;->selectedAccountName:Ljava/lang/String;

    .line 86
    :cond_1
    sget-object v5, Lcom/google/games/bridge/TokenFragment;->selectedAccountName:Ljava/lang/String;

    if-eqz v5, :cond_2

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    if-nez p5, :cond_2

    .line 87
    const-string v5, "TokenFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Returning accountName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/google/games/bridge/TokenFragment;->selectedAccountName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v5, Lcom/google/games/bridge/TokenFragment;->selectedAccountName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->setEmail(Ljava/lang/String;)V

    .line 89
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->setResult(I)V

    .line 90
    invoke-virtual {v2}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->getPendingResponse()Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v5

    monitor-exit v6

    .line 122
    :goto_0
    return-object v5

    .line 92
    :cond_2
    sget-object v5, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "gpg.TokenSupport"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/games/bridge/TokenFragment;

    .line 99
    .local v0, "fragment":Lcom/google/games/bridge/TokenFragment;
    if-nez v0, :cond_3

    .line 101
    :try_start_1
    const-string v5, "TokenFragment"

    const-string v6, "Creating fragment"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v1, Lcom/google/games/bridge/TokenFragment;

    invoke-direct {v1}, Lcom/google/games/bridge/TokenFragment;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    .end local v0    # "fragment":Lcom/google/games/bridge/TokenFragment;
    .local v1, "fragment":Lcom/google/games/bridge/TokenFragment;
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 104
    .local v4, "trans":Landroid/app/FragmentTransaction;
    const-string v5, "gpg.TokenSupport"

    invoke-virtual {v4, v1, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 105
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    .line 122
    .end local v1    # "fragment":Lcom/google/games/bridge/TokenFragment;
    .end local v4    # "trans":Landroid/app/FragmentTransaction;
    .restart local v0    # "fragment":Lcom/google/games/bridge/TokenFragment;
    :goto_1
    invoke-virtual {v2}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->getPendingResponse()Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v5

    goto :goto_0

    .line 94
    .end local v0    # "fragment":Lcom/google/games/bridge/TokenFragment;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 106
    .restart local v0    # "fragment":Lcom/google/games/bridge/TokenFragment;
    :catch_0
    move-exception v3

    .line 107
    .local v3, "th":Ljava/lang/Throwable;
    :goto_2
    const-string v5, "TokenFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot launch token fragment:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->setResult(I)V

    .line 109
    sget-object v6, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    monitor-enter v6

    .line 110
    :try_start_4
    sget-object v5, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v6

    goto :goto_1

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 114
    .end local v3    # "th":Ljava/lang/Throwable;
    :cond_3
    sget-object v6, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    monitor-enter v6

    .line 115
    :try_start_5
    sget-boolean v5, Lcom/google/games/bridge/TokenFragment;->mIsSelecting:Z

    if-nez v5, :cond_4

    .line 116
    const-string v5, "TokenFragment"

    const-string v7, "Fragment exists.. and not selecting calling processRequests"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/google/games/bridge/TokenFragment;->processRequests(I)V

    .line 119
    :cond_4
    monitor-exit v6

    goto :goto_1

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5

    .line 106
    .end local v0    # "fragment":Lcom/google/games/bridge/TokenFragment;
    .restart local v1    # "fragment":Lcom/google/games/bridge/TokenFragment;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "fragment":Lcom/google/games/bridge/TokenFragment;
    .restart local v0    # "fragment":Lcom/google/games/bridge/TokenFragment;
    goto :goto_2
.end method

.method private processRequests(I)V
    .locals 13
    .param p1, "errorCode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 135
    const/4 v11, 0x0

    .line 139
    .local v11, "request":Lcom/google/games/bridge/TokenFragment$TokenRequest;
    if-eqz p1, :cond_2

    .line 140
    sget-object v2, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    monitor-enter v2

    .line 141
    :goto_0
    :try_start_0
    sget-object v1, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    sget-object v1, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/games/bridge/TokenFragment$TokenRequest;

    move-object v11, v0

    .line 143
    invoke-virtual {v11, p1}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->setResult(I)V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :cond_1
    :goto_1
    return-void

    .line 151
    :cond_2
    sget-object v3, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    monitor-enter v3

    .line 152
    :try_start_2
    sget-object v2, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 153
    sget-object v2, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/games/bridge/TokenFragment$TokenRequest;

    move-object v11, v0

    .line 155
    :cond_3
    sget-object v9, Lcom/google/games/bridge/TokenFragment;->selectedAccountName:Ljava/lang/String;

    .line 156
    .local v9, "acctName":Ljava/lang/String;
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    if-eqz v11, :cond_1

    .line 164
    if-nez v9, :cond_4

    .line 166
    sget-object v2, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    monitor-enter v2

    .line 167
    const/4 v3, 0x1

    :try_start_3
    sput-boolean v3, Lcom/google/games/bridge/TokenFragment;->mIsSelecting:Z

    .line 168
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 171
    new-array v3, v4, [Ljava/lang/String;

    const-string v2, "com.google"

    aput-object v2, v3, v6

    .line 172
    invoke-virtual {v11}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->getRationale()Ljava/lang/String;

    move-result-object v5

    move-object v2, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    .line 171
    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v10

    .line 173
    .local v10, "intent":Landroid/content/Intent;
    const/16 v1, 0x232a

    invoke-virtual {p0, v10, v1}, Lcom/google/games/bridge/TokenFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 195
    .end local v10    # "intent":Landroid/content/Intent;
    :goto_2
    const-string v1, "TokenFragment"

    const-string v2, "Done with processRequests!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 156
    .end local v9    # "acctName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 168
    .restart local v9    # "acctName":Ljava/lang/String;
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 177
    :cond_4
    sget-object v2, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    monitor-enter v2

    .line 179
    :cond_5
    :goto_3
    :try_start_6
    sget-object v1, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 180
    sget-object v1, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/games/bridge/TokenFragment$TokenRequest;

    move-object v11, v0

    .line 181
    if-eqz v11, :cond_5

    .line 182
    invoke-direct {p0, v11, v9}, Lcom/google/games/bridge/TokenFragment;->doGetToken(Lcom/google/games/bridge/TokenFragment$TokenRequest;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 186
    :catch_0
    move-exception v12

    .line 188
    .local v12, "th":Ljava/lang/Throwable;
    if-eqz v11, :cond_6

    .line 189
    :try_start_7
    const-string v1, "TokenFragment"

    const-string v3, "Cannot process request"

    invoke-static {v1, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    const/16 v1, 0xd

    invoke-virtual {v11, v1}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->setResult(I)V

    .line 193
    .end local v12    # "th":Ljava/lang/Throwable;
    :cond_6
    monitor-exit v2

    goto :goto_2

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 314
    const-string v2, "TokenFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/16 v2, 0x232a

    if-ne p1, v2, :cond_2

    .line 317
    move v1, p2

    .line 318
    .local v1, "status":I
    sget-object v0, Lcom/google/games/bridge/TokenFragment;->selectedAccountName:Ljava/lang/String;

    .line 319
    .local v0, "accountName":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 320
    const/4 v1, 0x0

    .line 321
    const-string v2, "authAccount"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_0
    :goto_0
    sget-object v3, Lcom/google/games/bridge/TokenFragment;->pendingTokenRequests:Ljava/util/List;

    monitor-enter v3

    .line 328
    :try_start_0
    sput-object v0, Lcom/google/games/bridge/TokenFragment;->selectedAccountName:Ljava/lang/String;

    .line 329
    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/games/bridge/TokenFragment;->mIsSelecting:Z

    .line 330
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-direct {p0, v1}, Lcom/google/games/bridge/TokenFragment;->processRequests(I)V

    .line 337
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "status":I
    :goto_1
    return-void

    .line 322
    .restart local v0    # "accountName":Ljava/lang/String;
    .restart local v1    # "status":I
    :cond_1
    if-nez p2, :cond_0

    .line 323
    const/16 v1, 0x10

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 336
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "status":I
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 347
    const-string v0, "TokenFragment"

    const-string v1, "onResume called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/games/bridge/TokenFragment;->processRequests(I)V

    .line 349
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 350
    return-void
.end method
