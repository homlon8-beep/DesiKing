.class public final Lcom/vungle/publisher/acl$a$a;
.super Lcom/vungle/publisher/adb;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/acl$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/adb",
        "<",
        "Lcom/vungle/publisher/acl$a;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lcom/vungle/publisher/Demographic;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected c:Lcom/vungle/publisher/acl$a$b$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/vungle/publisher/adb;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/publisher/acl$a;
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vungle/publisher/acl$a$a;->b:Lcom/vungle/publisher/Demographic;

    .line 121
    new-instance v1, Lcom/vungle/publisher/acl$a;

    invoke-direct {v1}, Lcom/vungle/publisher/acl$a;-><init>()V

    .line 122
    invoke-virtual {v0}, Lcom/vungle/publisher/Demographic;->getAge()Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/publisher/acl$a;->a:Ljava/lang/Integer;

    .line 123
    invoke-virtual {v0}, Lcom/vungle/publisher/Demographic;->getGender()Lcom/vungle/publisher/Demographic$Gender;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/acl$a;->b:Lcom/vungle/publisher/Demographic$Gender;

    .line 124
    iget-object v0, p0, Lcom/vungle/publisher/acl$a$a;->a:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/vungle/publisher/acl$a$a;->c:Lcom/vungle/publisher/acl$a$b$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/acl$a$b$a;->a()Lcom/vungle/publisher/acl$a$b;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/acl$a;->c:Lcom/vungle/publisher/acl$a$b;

    .line 127
    :cond_0
    return-object v1

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    new-array v0, p1, [Lcom/vungle/publisher/acl$a;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/vungle/publisher/acl$a;

    invoke-direct {v0}, Lcom/vungle/publisher/acl$a;-><init>()V

    return-object v0
.end method
