.class public final Lcom/vungle/publisher/ut;
.super Lcom/vungle/publisher/acj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ut$a;
    }
.end annotation


# instance fields
.field a:Lorg/json/JSONObject;

.field b:Lorg/json/JSONObject;

.field c:Lorg/json/JSONObject;

.field d:Lorg/json/JSONObject;

.field e:Lorg/json/JSONObject;

.field f:Lorg/json/JSONObject;

.field g:Lorg/json/JSONObject;

.field h:Lorg/json/JSONObject;

.field i:Ljava/lang/String;

.field j:Lcom/vungle/publisher/uy;

.field k:Ljava/lang/Boolean;

.field l:Ljava/lang/Boolean;

.field m:Ljava/lang/Boolean;

.field n:Ljava/lang/Boolean;

.field o:Lcom/vungle/publisher/og;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/vungle/publisher/acj;-><init>()V

    return-void
.end method

.method private static a(II)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 117
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 119
    :try_start_0
    const-string v0, "width"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    const-string v0, "height"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v2, "VungleProtocol"

    const-string v3, "exception setting mraid size properties"

    invoke-static {v2, v3, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(II)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 136
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 138
    :try_start_0
    const-string v0, "x"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 139
    const-string v0, "y"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    const-string v0, "width"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    const-string v0, "height"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v2, "VungleProtocol"

    const-string v3, "exception setting mraid position properties"

    invoke-static {v2, v3, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-super {p0}, Lcom/vungle/publisher/acj;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 82
    const-string v1, "maxSize"

    iget-object v2, p0, Lcom/vungle/publisher/ut;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v1, "screenSize"

    iget-object v2, p0, Lcom/vungle/publisher/ut;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "defaultPosition"

    iget-object v2, p0, Lcom/vungle/publisher/ut;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v1, "currentPosition"

    iget-object v2, p0, Lcom/vungle/publisher/ut;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v1, "expandProperties"

    iget-object v2, p0, Lcom/vungle/publisher/ut;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v1, "resizeProperties"

    iget-object v2, p0, Lcom/vungle/publisher/ut;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v1, "orientationProperties"

    iget-object v2, p0, Lcom/vungle/publisher/ut;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v1, "supports"

    iget-object v2, p0, Lcom/vungle/publisher/ut;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v1, "state"

    iget-object v2, p0, Lcom/vungle/publisher/ut;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v1, "placementType"

    iget-object v2, p0, Lcom/vungle/publisher/ut;->j:Lcom/vungle/publisher/uy;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v1, "isViewable"

    iget-object v2, p0, Lcom/vungle/publisher/ut;->k:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v1, "os"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v1, "osVersion"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v1, "startMuted"

    iget-object v2, p0, Lcom/vungle/publisher/ut;->l:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v1, "incentivized"

    iget-object v2, p0, Lcom/vungle/publisher/ut;->m:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v1, "enableBackImmediately"

    iget-object v2, p0, Lcom/vungle/publisher/ut;->n:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v1, "version"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    return-object v0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 199
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ut;->k:Ljava/lang/Boolean;

    .line 200
    return-void
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/vungle/publisher/ut;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vungle/publisher/ut;->o:Lcom/vungle/publisher/og;

    iget-object v0, v0, Lcom/vungle/publisher/og;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v1, v0

    float-to-int v0, v0

    .line 183
    iget-object v1, p0, Lcom/vungle/publisher/ut;->o:Lcom/vungle/publisher/og;

    iget-object v1, v1, Lcom/vungle/publisher/og;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v1

    float-to-int v1, v1

    .line 184
    invoke-static {v0, v1}, Lcom/vungle/publisher/ut;->a(II)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/publisher/ut;->a:Lorg/json/JSONObject;

    .line 185
    invoke-static {v0, v1}, Lcom/vungle/publisher/ut;->a(II)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/publisher/ut;->b:Lorg/json/JSONObject;

    .line 186
    invoke-static {v0, v1}, Lcom/vungle/publisher/ut;->b(II)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/publisher/ut;->c:Lorg/json/JSONObject;

    .line 187
    invoke-static {v0, v1}, Lcom/vungle/publisher/ut;->b(II)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ut;->d:Lorg/json/JSONObject;

    .line 188
    return-void
.end method
