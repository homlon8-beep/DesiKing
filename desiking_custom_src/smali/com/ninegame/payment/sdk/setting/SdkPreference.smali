.class public Lcom/ninegame/payment/sdk/setting/SdkPreference;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "SdkPreference"

.field private static final b:Ljava/lang/String; = "cn.uc.gamesdk.pref"

.field private static final c:Ljava/lang/String; = "cn.uc.gamesdk.resetui"

.field private static final d:Ljava/lang/String; = "cn.uc.gamesdk.rexProj"

.field private static e:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ninegame/payment/sdk/setting/SdkPreference;->e:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 3

    sget-object v0, Lcom/ninegame/payment/sdk/setting/SdkPreference;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ninegame/payment/sdk/setting/SdkPreference;->c()V

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/setting/SdkPreference;->e:Landroid/content/SharedPreferences;

    const-string v1, "cn.uc.gamesdk.resetui"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(I)V
    .locals 3

    const-class v1, Lcom/ninegame/payment/sdk/setting/SdkPreference;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ninegame/payment/sdk/setting/SdkPreference;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ninegame/payment/sdk/setting/SdkPreference;->c()V

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/setting/SdkPreference;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "cn.uc.gamesdk.resetui"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/ninegame/payment/sdk/setting/SdkPreference;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ninegame/payment/sdk/setting/SdkPreference;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ninegame/payment/sdk/setting/SdkPreference;->c()V

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/setting/SdkPreference;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "cn.uc.gamesdk.rexProj"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/ninegame/payment/sdk/setting/SdkPreference;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ninegame/payment/sdk/setting/SdkPreference;->c()V

    :cond_0
    sget-object v0, Lcom/ninegame/payment/sdk/setting/SdkPreference;->e:Landroid/content/SharedPreferences;

    const-string v1, "cn.uc.gamesdk.rexProj"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized c()V
    .locals 4

    const-class v1, Lcom/ninegame/payment/sdk/setting/SdkPreference;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ninegame/payment/sdk/setting/SdkPreference;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ninegame/payment/sdk/SharedVars;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ninegame/payment/sdk/SharedVars;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "cn.uc.gamesdk.pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/ninegame/payment/sdk/setting/SdkPreference;->e:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
