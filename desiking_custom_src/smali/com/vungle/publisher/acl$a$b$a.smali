.class public final Lcom/vungle/publisher/acl$a$b$a;
.super Lcom/vungle/publisher/adb;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/acl$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/adb",
        "<",
        "Lcom/vungle/publisher/acl$a$b;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/tv;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/vungle/publisher/adb;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/publisher/acl$a$b;
    .locals 4

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    iget-object v1, p0, Lcom/vungle/publisher/acl$a$b$a;->a:Lcom/vungle/publisher/tv;

    invoke-interface {v1}, Lcom/vungle/publisher/tv;->b()Landroid/location/Location;

    move-result-object v1

    .line 177
    if-nez v1, :cond_0

    .line 178
    const-string v1, "VungleProtocol"

    const-string v2, "detailed location not available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-object v0

    .line 181
    :cond_0
    new-instance v0, Lcom/vungle/publisher/acl$a$b;

    invoke-direct {v0}, Lcom/vungle/publisher/acl$a$b;-><init>()V

    .line 182
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/acl$a$b;->a:Ljava/lang/Float;

    .line 183
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/acl$a$b;->b:Ljava/lang/Double;

    .line 184
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/acl$a$b;->c:Ljava/lang/Double;

    .line 185
    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/acl$a$b;->d:Ljava/lang/Float;

    .line 186
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl$a$b;->e:Ljava/lang/Long;

    goto :goto_0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    new-array v0, p1, [Lcom/vungle/publisher/acl$a$b;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Lcom/vungle/publisher/acl$a$b;

    invoke-direct {v0}, Lcom/vungle/publisher/acl$a$b;-><init>()V

    return-object v0
.end method
