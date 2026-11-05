.class public final Lcom/vungle/publisher/acl$b$b;
.super Lcom/vungle/publisher/adb;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/acl$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/adb",
        "<",
        "Lcom/vungle/publisher/acl$b;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/AdConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lcom/vungle/publisher/qs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected c:Lcom/vungle/publisher/acl$b$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected d:Lcom/vungle/publisher/vs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected e:Lcom/vungle/publisher/qz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/vungle/publisher/adb;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/publisher/acl$b;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Lcom/vungle/publisher/acl$b;

    invoke-direct {v0}, Lcom/vungle/publisher/acl$b;-><init>()V

    .line 273
    iget-object v1, p0, Lcom/vungle/publisher/acl$b$b;->d:Lcom/vungle/publisher/vs;

    invoke-interface {v1}, Lcom/vungle/publisher/vs;->a()Lcom/vungle/publisher/vr;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl$b;->a:Lcom/vungle/publisher/vr;

    .line 274
    iget-object v1, p0, Lcom/vungle/publisher/acl$b$b;->c:Lcom/vungle/publisher/acl$b$a$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/acl$b$a$a;->a()Lcom/vungle/publisher/acl$b$a;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl$b;->b:Lcom/vungle/publisher/acl$b$a;

    .line 275
    iget-object v1, p0, Lcom/vungle/publisher/acl$b$b;->b:Lcom/vungle/publisher/qs;

    invoke-interface {v1}, Lcom/vungle/publisher/qs;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl$b;->c:Ljava/lang/Boolean;

    .line 276
    iget-object v1, p0, Lcom/vungle/publisher/acl$b$b;->a:Lcom/vungle/publisher/AdConfig;

    invoke-virtual {v1}, Lcom/vungle/publisher/AdConfig;->isSoundEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl$b;->d:Ljava/lang/Boolean;

    .line 277
    iget-object v1, p0, Lcom/vungle/publisher/acl$b$b;->b:Lcom/vungle/publisher/qs;

    invoke-interface {v1}, Lcom/vungle/publisher/qs;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl$b;->e:Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/vungle/publisher/acl$b$b;->b:Lcom/vungle/publisher/qs;

    invoke-interface {v1}, Lcom/vungle/publisher/qs;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl$b;->f:Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lcom/vungle/publisher/acl$b$b;->d:Lcom/vungle/publisher/vs;

    invoke-interface {v1}, Lcom/vungle/publisher/vs;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl$b;->g:Ljava/lang/String;

    .line 280
    iget-object v1, p0, Lcom/vungle/publisher/acl$b$b;->b:Lcom/vungle/publisher/qs;

    invoke-interface {v1}, Lcom/vungle/publisher/qs;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl$b;->h:Ljava/lang/String;

    .line 281
    sget-object v1, Lcom/vungle/publisher/acl$b$c;->a:Lcom/vungle/publisher/acl$b$c;

    iput-object v1, v0, Lcom/vungle/publisher/acl$b;->i:Lcom/vungle/publisher/acl$b$c;

    .line 282
    iget-object v1, p0, Lcom/vungle/publisher/acl$b$b;->b:Lcom/vungle/publisher/qs;

    invoke-interface {v1}, Lcom/vungle/publisher/qs;->n()Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl$b;->j:Ljava/lang/Float;

    .line 283
    iget-object v1, p0, Lcom/vungle/publisher/acl$b$b;->b:Lcom/vungle/publisher/qs;

    invoke-interface {v1}, Lcom/vungle/publisher/qs;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl$b;->k:Ljava/lang/String;

    .line 284
    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    new-array v0, p1, [Lcom/vungle/publisher/acl$b;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/vungle/publisher/acl$b;

    invoke-direct {v0}, Lcom/vungle/publisher/acl$b;-><init>()V

    return-object v0
.end method
