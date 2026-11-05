.class public final Lcom/vungle/publisher/aaj;
.super Lcom/vungle/publisher/ya;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aaj$1;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/aeo$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/ra;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/rq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/aaa;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vungle/publisher/ya;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vungle/publisher/aaj;->a:Lcom/vungle/publisher/aeo$a;

    iget-object v1, p2, Lcom/vungle/publisher/xl;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v1}, Lcom/vungle/publisher/aaj;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/aeo$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aeo;

    .line 42
    iget-object v2, v0, Lcom/vungle/publisher/aeo;->b:Ljava/lang/Integer;

    .line 43
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/vungle/publisher/aaj;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/aaa;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/vungle/publisher/aaa;->a(J)V

    .line 46
    :cond_0
    iget-object v1, v0, Lcom/vungle/publisher/aeo;->d:Lcom/vungle/publisher/aeo$b;

    .line 47
    if-eqz v1, :cond_1

    .line 48
    sget-object v2, Lcom/vungle/publisher/aaj$1;->a:[I

    invoke-virtual {v1}, Lcom/vungle/publisher/aeo$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 56
    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unhandled streaming connectivity type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/vungle/publisher/aaj;->b:Lcom/vungle/publisher/ra;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/vungle/publisher/aeo;->a:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "VungleConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_4

    const-string v1, "enabling"

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ad streaming"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, v2, Lcom/vungle/publisher/ra;->b:Z

    .line 60
    iget-object v1, p0, Lcom/vungle/publisher/aaj;->b:Lcom/vungle/publisher/ra;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, v0, Lcom/vungle/publisher/aeo;->e:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "VungleConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setting exception reporting enabled: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/vungle/publisher/ra;->j:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v1, v1, Lcom/vungle/publisher/ra;->e:Ljava/lang/String;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    iget-object v1, v0, Lcom/vungle/publisher/aeo;->c:Ljava/lang/Integer;

    .line 62
    if-nez v1, :cond_5

    .line 63
    const-string v1, "VungleNetwork"

    const-string v2, "null request streaming ad timeout millis"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_2
    iget-object v1, v0, Lcom/vungle/publisher/aeo;->f:Ljava/lang/Long;

    .line 70
    iget-object v0, v0, Lcom/vungle/publisher/aeo;->g:Ljava/lang/Long;

    .line 71
    if-eqz v0, :cond_2

    .line 72
    iget-object v2, p0, Lcom/vungle/publisher/aaj;->b:Lcom/vungle/publisher/ra;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v0, "VungleConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "setting app fingerprint frequency to "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v4, v2, Lcom/vungle/publisher/ra;->g:J

    .line 74
    :cond_2
    if-eqz v1, :cond_3

    .line 75
    iget-object v0, p0, Lcom/vungle/publisher/aaj;->b:Lcom/vungle/publisher/ra;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/vungle/publisher/ra;->a(J)V

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/vungle/publisher/aaj;->c:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/vw;

    invoke-direct {v1}, Lcom/vungle/publisher/vw;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 79
    return-void

    .line 50
    :pswitch_0
    iget-object v1, p0, Lcom/vungle/publisher/aaj;->b:Lcom/vungle/publisher/ra;

    invoke-static {}, Lcom/vungle/publisher/vr;->values()[Lcom/vungle/publisher/vr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ra;->a([Lcom/vungle/publisher/vr;)V

    goto/16 :goto_0

    .line 53
    :pswitch_1
    iget-object v1, p0, Lcom/vungle/publisher/aaj;->b:Lcom/vungle/publisher/ra;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/vungle/publisher/vr;

    const/4 v3, 0x0

    sget-object v4, Lcom/vungle/publisher/vr;->b:Lcom/vungle/publisher/vr;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ra;->a([Lcom/vungle/publisher/vr;)V

    goto/16 :goto_0

    .line 59
    :cond_4
    const-string v1, "disabling"

    goto/16 :goto_1

    .line 66
    :cond_5
    iget-object v2, p0, Lcom/vungle/publisher/aaj;->b:Lcom/vungle/publisher/ra;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v3, "VungleConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setting streaming response timeout "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, v2, Lcom/vungle/publisher/ra;->d:I

    goto :goto_2

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
