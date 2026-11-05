.class Lcom/google/games/bridge/TokenFragment$1;
.super Landroid/os/AsyncTask;
.source "TokenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/games/bridge/TokenFragment;->doGetToken(Lcom/google/games/bridge/TokenFragment$TokenRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Lcom/google/games/bridge/TokenFragment$TokenRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/games/bridge/TokenFragment;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$theActivity:Landroid/app/Activity;

.field final synthetic val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;


# direct methods
.method constructor <init>(Lcom/google/games/bridge/TokenFragment;Lcom/google/games/bridge/TokenFragment$TokenRequest;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/games/bridge/TokenFragment;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/games/bridge/TokenFragment$1;->this$0:Lcom/google/games/bridge/TokenFragment;

    iput-object p2, p0, Lcom/google/games/bridge/TokenFragment$1;->val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;

    iput-object p3, p0, Lcom/google/games/bridge/TokenFragment$1;->val$accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/games/bridge/TokenFragment$1;->val$theActivity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Lcom/google/games/bridge/TokenFragment$TokenRequest;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 217
    const/4 v3, 0x0

    .line 219
    .local v3, "statusCode":I
    iget-object v5, p0, Lcom/google/games/bridge/TokenFragment$1;->val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;

    iget-object v6, p0, Lcom/google/games/bridge/TokenFragment$1;->val$accountName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->setEmail(Ljava/lang/String;)V

    .line 221
    iget-object v5, p0, Lcom/google/games/bridge/TokenFragment$1;->val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;

    invoke-static {v5}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->access$100(Lcom/google/games/bridge/TokenFragment$TokenRequest;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/games/bridge/TokenFragment$1;->val$accountName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 223
    const-string v0, "oauth2:https://www.googleapis.com/auth/plus.me"

    .line 225
    .local v0, "accessScope":Ljava/lang/String;
    :try_start_0
    const-string v5, "TokenFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getting accessToken for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/games/bridge/TokenFragment$1;->val$accountName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v5, p0, Lcom/google/games/bridge/TokenFragment$1;->val$theActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/google/games/bridge/TokenFragment$1;->val$accountName:Ljava/lang/String;

    invoke-static {v5, v6, v0}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "accessToken":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/games/bridge/TokenFragment$1;->val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;

    invoke-virtual {v5, v1}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->setAccessToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "accessScope":Ljava/lang/String;
    .end local v1    # "accessToken":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/games/bridge/TokenFragment$1;->val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;

    invoke-static {v5}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->access$200(Lcom/google/games/bridge/TokenFragment$TokenRequest;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/games/bridge/TokenFragment$1;->val$accountName:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 235
    iget-object v5, p0, Lcom/google/games/bridge/TokenFragment$1;->val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;

    invoke-virtual {v5}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->getScope()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/games/bridge/TokenFragment$1;->val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;

    .line 236
    invoke-virtual {v5}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->getScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 238
    :try_start_1
    const-string v5, "TokenFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting ID token.  Scope = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/games/bridge/TokenFragment$1;->val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;

    .line 239
    invoke-virtual {v7}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->getScope()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " email: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/games/bridge/TokenFragment$1;->val$accountName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 238
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v5, p0, Lcom/google/games/bridge/TokenFragment$1;->val$theActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/google/games/bridge/TokenFragment$1;->val$accountName:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/games/bridge/TokenFragment$1;->val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;

    .line 241
    invoke-virtual {v7}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->getScope()Ljava/lang/String;

    move-result-object v7

    .line 240
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "idToken":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/games/bridge/TokenFragment$1;->val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;

    invoke-virtual {v5, v2}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->setIdToken(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    .end local v2    # "idToken":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v5, "TokenFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Done with tokenRequest status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v5, p0, Lcom/google/games/bridge/TokenFragment$1;->val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;

    invoke-virtual {v5, v3}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->setResult(I)V

    .line 257
    iget-object v5, p0, Lcom/google/games/bridge/TokenFragment$1;->val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;

    return-object v5

    .line 228
    .restart local v0    # "accessScope":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 229
    .local v4, "th":Ljava/lang/Throwable;
    const-string v5, "TokenFragment"

    const-string v6, "Exception getting access token"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    const/16 v3, 0x8

    goto/16 :goto_0

    .line 243
    .end local v0    # "accessScope":Ljava/lang/String;
    .end local v4    # "th":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 244
    .restart local v4    # "th":Ljava/lang/Throwable;
    const-string v5, "TokenFragment"

    const-string v6, "Exception getting access token"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/16 v3, 0x8

    .line 246
    goto :goto_1

    .line 248
    .end local v4    # "th":Ljava/lang/Throwable;
    :cond_2
    const-string v5, "TokenFragment"

    const-string v6, "Skipping ID token: scope is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v3, 0xa

    goto :goto_1

    .line 251
    :cond_3
    iget-object v5, p0, Lcom/google/games/bridge/TokenFragment$1;->val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;

    invoke-static {v5}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->access$200(Lcom/google/games/bridge/TokenFragment$TokenRequest;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    const-string v5, "TokenFragment"

    const-string v6, "Skipping ID token: email is empty?"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/google/games/bridge/TokenFragment$1;->doInBackground([Ljava/lang/Object;)Lcom/google/games/bridge/TokenFragment$TokenRequest;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 275
    iget-object v0, p0, Lcom/google/games/bridge/TokenFragment$1;->val$tokenRequest:Lcom/google/games/bridge/TokenFragment$TokenRequest;

    invoke-virtual {v0}, Lcom/google/games/bridge/TokenFragment$TokenRequest;->cancel()V

    .line 276
    return-void
.end method

.method protected onPostExecute(Lcom/google/games/bridge/TokenFragment$TokenRequest;)V
    .locals 2
    .param p1, "tokenPendingResult"    # Lcom/google/games/bridge/TokenFragment$TokenRequest;

    .prologue
    .line 291
    const-string v0, "TokenFragment"

    const-string v1, "onPostExecute for the token fetch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 293
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p1, Lcom/google/games/bridge/TokenFragment$TokenRequest;

    invoke-virtual {p0, p1}, Lcom/google/games/bridge/TokenFragment$1;->onPostExecute(Lcom/google/games/bridge/TokenFragment$TokenRequest;)V

    return-void
.end method
