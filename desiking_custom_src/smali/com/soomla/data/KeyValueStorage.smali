.class public Lcom/soomla/data/KeyValueStorage;
.super Ljava/lang/Object;
.source "KeyValueStorage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SOOMLA KeyValueStorage"

.field private static mKvDatabase:Lcom/soomla/data/KeyValDatabase;

.field private static mObfuscator:Lcom/soomla/util/AESObfuscator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteKeyValue(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 218
    const-string v0, "SOOMLA KeyValueStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getAESObfuscator()Lcom/soomla/util/AESObfuscator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/soomla/util/AESObfuscator;->obfuscateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 222
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getDatabase()Lcom/soomla/data/KeyValDatabase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/soomla/data/KeyValDatabase;->deleteKeyVal(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public static deleteNonEncryptedKeyValue(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "SOOMLA KeyValueStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getDatabase()Lcom/soomla/data/KeyValDatabase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/soomla/data/KeyValDatabase;->deleteKeyVal(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private static getAESObfuscator()Lcom/soomla/util/AESObfuscator;
    .locals 4

    .prologue
    .line 257
    sget-object v0, Lcom/soomla/data/KeyValueStorage;->mObfuscator:Lcom/soomla/util/AESObfuscator;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/soomla/util/AESObfuscator;

    sget-object v1, Lcom/soomla/SoomlaConfig;->obfuscationSalt:[B

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/soomla/SoomlaUtils;->deviceId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/soomla/util/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/soomla/data/KeyValueStorage;->mObfuscator:Lcom/soomla/util/AESObfuscator;

    .line 262
    :cond_0
    sget-object v0, Lcom/soomla/data/KeyValueStorage;->mObfuscator:Lcom/soomla/util/AESObfuscator;

    return-object v0
.end method

.method public static getCountForNonEncryptedQuery(Ljava/lang/String;)I
    .locals 3
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v0, "SOOMLA KeyValueStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trying to fetch count for query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getDatabase()Lcom/soomla/data/KeyValDatabase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/soomla/data/KeyValDatabase;->getQueryCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static declared-synchronized getDatabase()Lcom/soomla/data/KeyValDatabase;
    .locals 3

    .prologue
    .line 244
    const-class v1, Lcom/soomla/data/KeyValueStorage;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/soomla/data/KeyValueStorage;->mKvDatabase:Lcom/soomla/data/KeyValDatabase;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/soomla/data/KeyValDatabase;

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/soomla/data/KeyValDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/soomla/data/KeyValueStorage;->mKvDatabase:Lcom/soomla/data/KeyValDatabase;

    .line 248
    :cond_0
    sget-object v0, Lcom/soomla/data/KeyValueStorage;->mKvDatabase:Lcom/soomla/data/KeyValDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getEncryptedKeys()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    const-string v6, "SOOMLA KeyValueStorage"

    const-string v7, "trying to fetch all keys"

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getDatabase()Lcom/soomla/data/KeyValDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/soomla/data/KeyValDatabase;->getAllKeys()Ljava/util/List;

    move-result-object v2

    .line 181
    .local v2, "encryptedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v4, "resultKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    .local v1, "encryptedKey":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getAESObfuscator()Lcom/soomla/util/AESObfuscator;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/soomla/util/AESObfuscator;->unobfuscateToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "unencryptedKey":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/soomla/util/AESObfuscator$ValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 187
    .end local v5    # "unencryptedKey":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lcom/soomla/util/AESObfuscator$ValidationException;
    const-string v6, "SOOMLA KeyValueStorage"

    invoke-virtual {v0}, Lcom/soomla/util/AESObfuscator$ValidationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    .end local v0    # "e":Lcom/soomla/util/AESObfuscator$ValidationException;
    :catch_1
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v6, "SOOMLA KeyValueStorage"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "encryptedKey":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public static getNonEncryptedKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v2, "SOOMLA KeyValueStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trying to fetch a value for key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getDatabase()Lcom/soomla/data/KeyValDatabase;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/soomla/data/KeyValDatabase;->getKeyVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    :try_start_0
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getAESObfuscator()Lcom/soomla/util/AESObfuscator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/soomla/util/AESObfuscator;->unobfuscateToString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/soomla/util/AESObfuscator$ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    const-string v2, "SOOMLA KeyValueStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the fetched value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lcom/soomla/util/AESObfuscator$ValidationException;
    const-string v2, "SOOMLA KeyValueStorage"

    invoke-virtual {v0}, Lcom/soomla/util/AESObfuscator$ValidationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, ""

    goto :goto_0
.end method

.method public static getNonEncryptedQueryValues(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .param p0, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    const-string v6, "SOOMLA KeyValueStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "trying to fetch values for query: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getDatabase()Lcom/soomla/data/KeyValDatabase;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/soomla/data/KeyValDatabase;->getQueryVals(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 120
    .local v5, "vals":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v3, "results":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 123
    .local v4, "val":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 125
    :try_start_0
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getAESObfuscator()Lcom/soomla/util/AESObfuscator;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/soomla/util/AESObfuscator;->unobfuscateToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/soomla/util/AESObfuscator$ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lcom/soomla/util/AESObfuscator$ValidationException;
    const-string v6, "SOOMLA KeyValueStorage"

    invoke-virtual {v0}, Lcom/soomla/util/AESObfuscator$ValidationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v0    # "e":Lcom/soomla/util/AESObfuscator$ValidationException;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    :cond_1
    const-string v6, "SOOMLA KeyValueStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fetched "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " results"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-object v3
.end method

.method public static getOneForNonEncryptedQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v2, "SOOMLA KeyValueStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trying to fetch one for query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getDatabase()Lcom/soomla/data/KeyValDatabase;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/soomla/data/KeyValDatabase;->getQueryOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    :try_start_0
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getAESObfuscator()Lcom/soomla/util/AESObfuscator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/soomla/util/AESObfuscator;->unobfuscateToString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/soomla/util/AESObfuscator$ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 157
    :goto_0
    return-object v2

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lcom/soomla/util/AESObfuscator$ValidationException;
    const-string v2, "SOOMLA KeyValueStorage"

    invoke-virtual {v0}, Lcom/soomla/util/AESObfuscator$ValidationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v0    # "e":Lcom/soomla/util/AESObfuscator$ValidationException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v2, "SOOMLA KeyValueStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trying to fetch a value for key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getAESObfuscator()Lcom/soomla/util/AESObfuscator;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/soomla/util/AESObfuscator;->obfuscateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getDatabase()Lcom/soomla/data/KeyValDatabase;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/soomla/data/KeyValDatabase;->getKeyVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    :try_start_0
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getAESObfuscator()Lcom/soomla/util/AESObfuscator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/soomla/util/AESObfuscator;->unobfuscateToString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/soomla/util/AESObfuscator$ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    :goto_0
    const-string v2, "SOOMLA KeyValueStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the fetched value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-object v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lcom/soomla/util/AESObfuscator$ValidationException;
    const-string v2, "SOOMLA KeyValueStorage"

    invoke-virtual {v0}, Lcom/soomla/util/AESObfuscator$ValidationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, ""

    goto :goto_0
.end method

.method public static purge()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "SOOMLA KeyValueStorage"

    const-string v1, "purging database"

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getDatabase()Lcom/soomla/data/KeyValDatabase;

    move-result-object v0

    invoke-static {}, Lcom/soomla/SoomlaApp;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/soomla/data/KeyValDatabase;->purgeDatabaseEntries(Landroid/content/Context;)V

    .line 235
    return-void
.end method

.method public static setNonEncryptedKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "SOOMLA KeyValueStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getAESObfuscator()Lcom/soomla/util/AESObfuscator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/soomla/util/AESObfuscator;->obfuscateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getDatabase()Lcom/soomla/data/KeyValDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/soomla/data/KeyValDatabase;->setKeyVal(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string v0, "SOOMLA KeyValueStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getAESObfuscator()Lcom/soomla/util/AESObfuscator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/soomla/util/AESObfuscator;->obfuscateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 207
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getAESObfuscator()Lcom/soomla/util/AESObfuscator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/soomla/util/AESObfuscator;->obfuscateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {}, Lcom/soomla/data/KeyValueStorage;->getDatabase()Lcom/soomla/data/KeyValDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/soomla/data/KeyValDatabase;->setKeyVal(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method
