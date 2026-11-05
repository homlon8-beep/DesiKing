.class Lcom/facebook/appevents/AppEventStore;
.super Ljava/lang/Object;
.source "AppEventStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    }
.end annotation


# static fields
.field private static final PERSISTED_EVENTS_FILENAME:Ljava/lang/String; = "AppEventsLogger.persistedevents"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/facebook/appevents/AppEventStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assertIsNotMainThread()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public static declared-synchronized persistEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V
    .locals 4
    .param p0, "accessTokenAppIdPair"    # Lcom/facebook/appevents/AccessTokenAppIdPair;
    .param p1, "appEvents"    # Lcom/facebook/appevents/SessionEventsState;

    .prologue
    .line 50
    const-class v2, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->assertIsNotMainThread()V

    .line 51
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v0

    .line 53
    .local v0, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-virtual {v0, p0}, Lcom/facebook/appevents/PersistedEvents;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0, p0}, Lcom/facebook/appevents/PersistedEvents;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    :goto_0
    invoke-static {v0}, Lcom/facebook/appevents/AppEventStore;->saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v2

    return-void

    .line 58
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/appevents/PersistedEvents;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    .end local v0    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized persistEvents(Lcom/facebook/appevents/AppEventCollection;)V
    .locals 6
    .param p0, "eventsToPersist"    # Lcom/facebook/appevents/AppEventCollection;

    .prologue
    .line 66
    const-class v4, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->assertIsNotMainThread()V

    .line 67
    new-instance v1, Lcom/facebook/appevents/PersistedEvents;

    invoke-direct {v1}, Lcom/facebook/appevents/PersistedEvents;-><init>()V

    .line 68
    .local v1, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 69
    .local v0, "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/AppEventCollection;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v2

    .line 73
    .local v2, "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    invoke-virtual {v2}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v5

    .line 71
    invoke-virtual {v1, v0, v5}, Lcom/facebook/appevents/PersistedEvents;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 66
    .end local v0    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local v1    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .end local v2    # "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 76
    .restart local v1    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/facebook/appevents/AppEventStore;->saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    monitor-exit v4

    return-void
.end method

.method public static declared-synchronized readAndClearStore()Lcom/facebook/appevents/PersistedEvents;
    .locals 15

    .prologue
    .line 81
    const-class v11, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v11

    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->assertIsNotMainThread()V

    .line 83
    const/4 v6, 0x0

    .line 84
    .local v6, "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    const/4 v5, 0x0

    .line 85
    .local v5, "obj":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/facebook/appevents/AccessTokenAppIdPair;Ljava/util/List<Lcom/facebook/appevents/AppEvent;>;>;"
    const/4 v8, 0x0

    .line 86
    .local v8, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getApplicationContext()Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 88
    .local v1, "context":Landroid/content/Context;
    :try_start_1
    const-string v10, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v10}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 89
    .local v4, "is":Ljava/io/InputStream;
    new-instance v7, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v10}, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .local v7, "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :try_start_2
    invoke-virtual {v7}, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/HashMap;

    move-object v5, v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 97
    :try_start_3
    invoke-static {v7}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    :try_start_4
    const-string v10, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 107
    if-eqz v5, :cond_0

    .line 108
    new-instance v9, Lcom/facebook/appevents/PersistedEvents;

    invoke-direct {v9, v5}, Lcom/facebook/appevents/PersistedEvents;-><init>(Ljava/util/HashMap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v8    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .local v9, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    move-object v8, v9

    .end local v9    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .restart local v8    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :cond_0
    move-object v6, v7

    .line 117
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v7    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :cond_1
    :goto_0
    if-nez v8, :cond_2

    .line 118
    :try_start_5
    new-instance v8, Lcom/facebook/appevents/PersistedEvents;

    .end local v8    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-direct {v8}, Lcom/facebook/appevents/PersistedEvents;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    .restart local v8    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :cond_2
    monitor-exit v11

    return-object v8

    .line 110
    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v7    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catch_0
    move-exception v3

    .line 111
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_6
    sget-object v10, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got unexpected exception when removing events file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 113
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 111
    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 115
    .end local v7    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto :goto_0

    .line 92
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v10

    .line 97
    :goto_1
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 106
    :try_start_7
    const-string v10, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 107
    if-eqz v5, :cond_1

    .line 108
    new-instance v9, Lcom/facebook/appevents/PersistedEvents;

    invoke-direct {v9, v5}, Lcom/facebook/appevents/PersistedEvents;-><init>(Ljava/util/HashMap;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v8    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .restart local v9    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    move-object v8, v9

    .end local v9    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .restart local v8    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    goto :goto_0

    .line 110
    :catch_2
    move-exception v3

    .line 111
    .restart local v3    # "ex":Ljava/lang/Exception;
    :try_start_8
    sget-object v10, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got unexpected exception when removing events file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 113
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 111
    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 81
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .end local v8    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 94
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v8    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :catch_3
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_9
    sget-object v10, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got unexpected exception while reading events: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 97
    :try_start_a
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 106
    :try_start_b
    const-string v10, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v10}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 107
    if-eqz v5, :cond_1

    .line 108
    new-instance v9, Lcom/facebook/appevents/PersistedEvents;

    invoke-direct {v9, v5}, Lcom/facebook/appevents/PersistedEvents;-><init>(Ljava/util/HashMap;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .end local v8    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .restart local v9    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    move-object v8, v9

    .end local v9    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .restart local v8    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    goto/16 :goto_0

    .line 110
    :catch_4
    move-exception v3

    .line 111
    .restart local v3    # "ex":Ljava/lang/Exception;
    :try_start_c
    sget-object v10, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got unexpected exception when removing events file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 113
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 111
    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 97
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    :goto_3
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 106
    :try_start_d
    const-string v12, "AppEventsLogger.persistedevents"

    invoke-virtual {v1, v12}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 107
    if-eqz v5, :cond_3

    .line 108
    new-instance v9, Lcom/facebook/appevents/PersistedEvents;

    invoke-direct {v9, v5}, Lcom/facebook/appevents/PersistedEvents;-><init>(Ljava/util/HashMap;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .end local v8    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .restart local v9    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    move-object v8, v9

    .line 114
    .end local v9    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .restart local v8    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    :cond_3
    :goto_4
    :try_start_e
    throw v10

    .line 110
    :catch_5
    move-exception v3

    .line 111
    .restart local v3    # "ex":Ljava/lang/Exception;
    sget-object v12, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got unexpected exception when removing events file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 113
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 111
    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_4

    .line 97
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v7    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto :goto_3

    .line 94
    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v7    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catch_6
    move-exception v2

    move-object v6, v7

    .end local v7    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto/16 :goto_2

    .line 92
    .end local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v7    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    :catch_7
    move-exception v10

    move-object v6, v7

    .end local v7    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v6    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    goto/16 :goto_1
.end method

.method private static saveEventsToDisk(Lcom/facebook/appevents/PersistedEvents;)V
    .locals 7
    .param p0, "eventsToPersist"    # Lcom/facebook/appevents/PersistedEvents;

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 129
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    const-string v5, "AppEventsLogger.persistedevents"

    const/4 v6, 0x0

    .line 132
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 139
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    sget-object v4, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got unexpected exception while persisting events: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 134
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method
