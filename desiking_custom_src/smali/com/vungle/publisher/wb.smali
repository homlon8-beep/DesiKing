.class public final Lcom/vungle/publisher/wb;
.super Lcom/vungle/publisher/xb;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ra;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/ahf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vungle/publisher/xb;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/xb;->a(Lcom/vungle/publisher/xr;Lcom/vungle/publisher/xl;)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 30
    const-string v2, "VungleData"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sent fingerprint at time: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v2, p0, Lcom/vungle/publisher/wb;->a:Lcom/vungle/publisher/ra;

    invoke-virtual {v2, v0, v1}, Lcom/vungle/publisher/ra;->a(J)V

    .line 32
    return-void
.end method
