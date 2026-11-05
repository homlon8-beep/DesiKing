.class public final Lcom/vungle/publisher/env/AndroidDevice;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/qs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field static a:I


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/vungle/publisher/mx;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Landroid/view/WindowManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public l:Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x1388

    sput v0, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->m:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->b()Lcom/vungle/publisher/tg;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vungle/publisher/tg;->a(Lcom/vungle/publisher/env/AndroidDevice;)V

    .line 67
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()V
    .locals 6

    .prologue
    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 145
    iget-object v2, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    :try_start_1
    const-string v3, "VungleDevice"

    const-string v4, "waiting for device ID"

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    iget-object v3, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_1

    .line 149
    :try_start_2
    iget-object v3, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget v4, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v3

    :try_start_3
    const-string v3, "VungleDevice"

    const-string v4, "interrupted while awaiting device ID"

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 165
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    const-string v1, "VungleDevice"

    const-string v2, "no device ID available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    throw v0

    .line 155
    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 156
    :try_start_6
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    const-string v0, "VungleDevice"

    const-string v1, "obtained device ID"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    const-string v0, "VungleDevice"

    const-string v1, "no device ID available"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_3
    return-void

    .line 160
    :cond_4
    :try_start_7
    new-instance v0, Lcom/vungle/publisher/qt;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timeout after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/qt;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vungle/publisher/env/AndroidDevice;->s()V

    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 3

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->k:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "defaultUserAgent"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 350
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 351
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/vungle/publisher/qo;)Z
    .locals 2

    .prologue
    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p1, Lcom/vungle/publisher/qo;->i:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 289
    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 292
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 293
    :goto_0
    if-nez v0, :cond_0

    .line 294
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Google Play Services not available: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2

    .line 305
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 292
    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 299
    :goto_2
    const-string v2, "VungleConfig"

    invoke-static {v1}, Lcom/vungle/publisher/aha;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :catch_1
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 302
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {p1, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 301
    :catch_2
    move-exception v1

    goto :goto_3

    .line 297
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/vungle/publisher/env/AndroidDevice;->s()V

    .line 99
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->e:Ljava/lang/String;

    .line 100
    invoke-static {v0}, Lcom/vungle/publisher/env/AndroidDevice;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string v0, "VungleDevice"

    const-string v1, "have advertising and Android ID"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->d()V

    .line 103
    const/4 v0, 0x0

    .line 105
    :cond_0
    return-object v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "VungleDevice"

    const-string v1, "clearing Android ID"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->e:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 134
    if-nez v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 137
    monitor-exit v1

    .line 139
    :cond_0
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/env/AndroidDevice;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Landroid/util/DisplayMetrics;
    .locals 4

    .prologue
    .line 187
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->h:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string v2, "VungleDevice"

    const-string v3, "error getting display metrics"

    invoke-static {v2, v3, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->c:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->f:Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    const-string v0, "VungleDevice"

    const-string v1, "have advertising and mac address"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->k()V

    .line 213
    const/4 v0, 0x0

    .line 215
    :cond_0
    return-object v0
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 219
    const-string v0, "VungleDevice"

    const-string v1, "clearing MAC address"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->f:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 245
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_2
    return-object v0

    .line 245
    :cond_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 250
    :catch_0
    move-exception v1

    .line 251
    const-string v2, "VungleDevice"

    const-string v3, "error getting device model"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public final n()Ljava/lang/Float;
    .locals 4

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Lcom/vungle/publisher/mx;

    invoke-virtual {v1}, Lcom/vungle/publisher/mx;->c()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    const-string v2, "VungleDevice"

    const-string v3, "error getting volume info"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final o()Z
    .locals 4

    .prologue
    .line 270
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->i:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/vungle/publisher/ahd;->a(Landroid/content/Context;Lcom/vungle/publisher/qs;)Z

    move-result v1

    .line 274
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 275
    const-string v2, "VungleDevice"

    const-string v3, "external storage writable"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 278
    :cond_0
    const-string v2, "VungleDevice"

    const-string v3, "external storage not writable"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    const-string v0, "VungleDevice"

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/env/AndroidDevice;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const v0, 0x3d8024

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->l:Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;->c(Lcom/vungle/publisher/env/AndroidDevice;)V

    .line 320
    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->k:Landroid/content/SharedPreferences;

    const-string v1, "defaultUserAgent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
