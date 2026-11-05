.class public Lcom/ninegame/payment/sdk/dex/DexLoader;
.super Ljava/lang/Object;


# static fields
.field public static final ENTRY_XML:Ljava/lang/String; = "entry.xml"

.field private static final a:I = 0x1

.field private static final b:Ljava/lang/String; = "2.0.0"

.field private static c:Lcom/ninegame/payment/sdk/dex/DexLoader; = null

.field private static final i:Ljava/lang/String; = "odex"

.field public static final jarFoldername:Ljava/lang/String; = "jars"

.field private static final r:Ljava/lang/String; = "ucgamesdk"

.field private static final s:Ljava/lang/String; = "ui"


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/ninegame/payment/face/Commands;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ninegame/payment/sdk/dex/JarEntryParser$DispatcherPath;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ninegame/payment/face/IDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/ninegame/payment/face/Commands;",
            "Lcom/ninegame/payment/face/IDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:Z

.field private q:Landroid/content/res/AssetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ninegame/payment/sdk/dex/DexLoader;->c:Lcom/ninegame/payment/sdk/dex/DexLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->j:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->k:Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->l:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->m:Ljava/util/HashMap;

    iput v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->n:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->o:I

    iput-boolean v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->p:Z

    invoke-virtual {p0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->b()Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/ninegame/payment/sdk/dex/DexLoader;
    .locals 2

    const-class v1, Lcom/ninegame/payment/sdk/dex/DexLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ninegame/payment/sdk/dex/DexLoader;->c:Lcom/ninegame/payment/sdk/dex/DexLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ninegame/payment/sdk/dex/DexLoader;

    invoke-direct {v0}, Lcom/ninegame/payment/sdk/dex/DexLoader;-><init>()V

    sput-object v0, Lcom/ninegame/payment/sdk/dex/DexLoader;->c:Lcom/ninegame/payment/sdk/dex/DexLoader;

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/dex/DexLoader;->c:Lcom/ninegame/payment/sdk/dex/DexLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Z)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "clearRexData"

    const-string v2, "\u8d44\u6e90\u9700\u8981\u91cd\u7f6e"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    invoke-static {v1}, Lcom/ninegame/payment/sdk/setting/SdkPreference;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->d()V

    invoke-direct {p0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->h()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_5
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ninegame/payment/sdk/dex/JarEntryParser;

    invoke-direct {v0}, Lcom/ninegame/payment/sdk/dex/JarEntryParser;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/ninegame/payment/sdk/dex/JarEntryParser;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ninegame/payment/sdk/dex/JarEntryParser;->d()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/ninegame/payment/sdk/setting/SdkPreference;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->e:Ljava/lang/String;

    const-string v0, "setJarPath"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f7f\u7528cache\u76ee\u5f55jar->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ucgamesdk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ui"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->e:Ljava/lang/String;

    const-string v0, "setJarPath"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f7f\u7528\u8d44\u6e90\u76ee\u5f55jar->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private e()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lcom/ninegame/payment/sdk/dex/JarEntryParser;

    invoke-direct {v0}, Lcom/ninegame/payment/sdk/dex/JarEntryParser;-><init>()V

    iget-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ninegame/payment/sdk/dex/JarEntryParser;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ninegame/payment/sdk/dex/JarEntryParser;->b()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/ninegame/payment/sdk/dex/JarEntryParser;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/ninegame/payment/sdk/dex/JarEntryParser;->a()I

    move-result v0

    iput v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->o:I

    const/4 v0, 0x1

    return v0
.end method

.method private f()Z
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/ninegame/payment/sdk/setting/SdkPreference;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "needResetUI"

    const-string v2, "\u6ca1\u6709\u8fdb\u884c\u8fc7\u8d44\u6e90\u91ca\u653e"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "needResetUI"

    const-string v2, "\u5df2\u91ca\u653e\u7684H5\u8d44\u6e90\u6587\u4ef6\u4e2d\u7f3a\u5c11entry.xml\u6587\u4ef6"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v2, Lcom/ninegame/payment/sdk/dex/JarEntryParser;

    invoke-direct {v2}, Lcom/ninegame/payment/sdk/dex/JarEntryParser;-><init>()V

    iget-object v3, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ninegame/payment/sdk/dex/JarEntryParser;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ninegame/payment/sdk/dex/JarEntryParser;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2.0.0"

    invoke-static {v2, v3}, Lcom/ninegame/payment/sdk/utils/CommonUtil;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-gez v2, :cond_3

    :goto_2
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "needResetUI"

    const-string v2, "XML\u89e3\u6790\u9519\u8bef"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, "needResetUI"

    const-string v2, "XML\u8bfb\u53d6\u9519\u8bef"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private g()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "releaseXml"

    const-string v3, "==releaseXML=="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/ninegame/payment/sdk/utils/CommonUtil;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x400

    new-array v2, v2, [B

    :try_start_0
    iget-object v3, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->q:Landroid/content/res/AssetManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "entry.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->f:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "releaseXml"

    const-string v2, "\u8bfb\u53d6entry.xml\u914d\u7f6e\u6587\u4ef6\u5931\u8d25"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    :goto_2
    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    :cond_1
    const-string v0, "releaseXml"

    const-string v2, "\u5185\u5b58\u4e0d\u8db3\uff0c\u91ca\u653exml\u914d\u7f6e\u6587\u4ef6\u5931\u8d25"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private h()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "entry.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->f:Ljava/lang/String;

    return-void
.end method

.method private i()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->h()V

    invoke-direct {p0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a(Z)V

    invoke-direct {p0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->j()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->e()Z

    move-result v0

    goto :goto_0
.end method

.method private j()Z
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "releaseJar"

    const-string v3, "==releaseJar=="

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->o:I

    invoke-static {v0}, Lcom/ninegame/payment/sdk/utils/CommonUtil;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ninegame/payment/sdk/dex/JarEntryParser$DispatcherPath;

    iget-object v0, v0, Lcom/ninegame/payment/sdk/dex/JarEntryParser$DispatcherPath;->entryjar:Ljava/lang/String;

    const/16 v4, 0x400

    new-array v4, v4, [B

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->q:Landroid/content/res/AssetManager;

    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_1
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "releaseJar"

    const-string v2, "\u627e\u4e0d\u5230\u5bf9\u5e94\u7684Jar\u5305,\u91ca\u653e\u5931\u8d25"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_2
    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move v0, v1

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    const-string v0, "releaseJar"

    const-string v3, "\u5185\u5b58\u4e0d\u8db3%dm\uff0c\u91ca\u653ejar\u5931\u8d25"

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_2
.end method

.method private k()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/ninegame/payment/face/Commands;",
            "Lcom/ninegame/payment/face/IDispatcher;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->l:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->l:Ljava/util/HashMap;

    :cond_0
    iget-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->m:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->m:Ljava/util/HashMap;

    :cond_1
    invoke-direct {p0, v5}, Lcom/ninegame/payment/sdk/dex/DexLoader;->a(Z)V

    iget v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->n:I

    if-ge v1, v4, :cond_2

    iget v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->n:I

    invoke-virtual {p0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->c()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const-string v1, "reCreate"

    const-string v2, "\u8fbe\u5230\u6700\u5927\u52a8\u6001\u52a0\u8f7d\u91cd\u8bd5\u6b21\u6570\uff1a%s,\u5f02\u5e38\u505c\u6b62"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/ninegame/payment/face/Commands;)Lcom/ninegame/payment/face/IDispatcher;
    .locals 1

    iget-boolean v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->m:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ninegame/payment/face/IDispatcher;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/ninegame/payment/face/IDispatcher;
    .locals 1

    iget-boolean v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->k:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ninegame/payment/face/IDispatcher;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/ninegame/payment/sdk/SharedVars;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ninegame/payment/sdk/SharedVars;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->q:Landroid/content/res/AssetManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "jars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "odex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->h:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->g:Ljava/lang/String;

    iput v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->n:I

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public declared-synchronized c()Ljava/util/Map;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/ninegame/payment/face/Commands;",
            "Lcom/ninegame/payment/face/IDispatcher;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    const-string v1, "creator"

    const-string v2, "==creator=="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->d:Landroid/content/Context;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "creator"

    const-string v2, "DexLoader\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->p:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->m:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    const-string v0, "creator"

    const-string v1, "jar\u5305\u5df2\u7ecf\u52a0\u8f7d\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->m:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->m:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ninegame/payment/sdk/dex/JarEntryParser$DispatcherPath;

    iget-object v5, v1, Lcom/ninegame/payment/sdk/dex/JarEntryParser$DispatcherPath;->entryClass:Ljava/lang/String;

    iget-object v1, v1, Lcom/ninegame/payment/sdk/dex/JarEntryParser$DispatcherPath;->entryjar:Ljava/lang/String;

    new-instance v3, Ldalvik/system/DexClassLoader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->h:Ljava/lang/String;

    const/4 v8, 0x0

    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_2
    invoke-direct {v3, v6, v7, v8, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v3, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ninegame/payment/face/IDispatcher;

    iget-object v2, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ninegame/payment/face/Commands;

    iget-object v1, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->l:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->l:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ninegame/payment/face/IDispatcher;

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "creator"

    const-string v1, "\u627e\u4e0d\u5230\u5bf9\u5e94jar\u5305\u5165\u53e3\u7c7b "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->p:Z

    invoke-direct {p0}, Lcom/ninegame/payment/sdk/dex/DexLoader;->k()Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    :try_start_4
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0}, Ljava/lang/ClassNotFoundException;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v0

    :try_start_5
    const-string v0, "creator"

    const-string v1, "\u521b\u5efajar\u5165\u53e3\u7c7b\u5b9e\u4f8b\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    :try_start_6
    iget-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ninegame/payment/face/IDispatcher;

    iget-object v2, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->d:Landroid/content/Context;

    sget-object v3, Lcom/ninegame/payment/sdk/common/CommonConst;->CLIENT_PARAM_KEY_VE:Ljava/lang/String;

    invoke-static {}, Lcom/ninegame/payment/sdk/SdkListener;->a()Lcom/ninegame/payment/sdk/SdkListener;

    move-result-object v4

    iget-object v5, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->m:Ljava/util/HashMap;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/ninegame/payment/face/IDispatcher;->register(Landroid/content/Context;Ljava/lang/String;Lcom/ninegame/payment/face/listener/CallbackListener;Ljava/util/HashMap;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_7
    const-string v1, "creator"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->p:Z

    iget-object v0, p0, Lcom/ninegame/payment/sdk/dex/DexLoader;->m:Ljava/util/HashMap;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_9
    const-string v1, "creator"

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_4
    move-exception v0

    const-string v0, "creator"

    const-string v1, "\u5165\u53e3\u7c7b\u5b9e\u4f8b\u5316\u9519\u8bef,\u914d\u7f6e\u6587\u4ef6\u9519\u8bef\uff1f"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_5
    move-exception v0

    const-string v0, "creator"

    const-string v1, "\u627e\u4e0d\u5230\u5165\u53e3\u5b9e\u4f8b\u65b9\u6cd5 getInstance() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4
.end method
