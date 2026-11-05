.class public abstract Lcom/vungle/publisher/acl$c;
.super Lcom/vungle/publisher/adb;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/acl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vungle/publisher/acl;",
        ">",
        "Lcom/vungle/publisher/adb",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/acl$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/qs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/ra;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected d:Lcom/vungle/publisher/acl$b$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected e:Lcom/vungle/publisher/qz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/vungle/publisher/adb;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/acl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/vungle/publisher/acl$c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/acl;

    .line 73
    iget-object v1, p0, Lcom/vungle/publisher/acl$c;->b:Lcom/vungle/publisher/qs;

    invoke-interface {v1}, Lcom/vungle/publisher/qs;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl;->a:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/vungle/publisher/acl$c;->b:Lcom/vungle/publisher/qs;

    invoke-interface {v1}, Lcom/vungle/publisher/qs;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl;->b:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/vungle/publisher/acl$c;->a:Lcom/vungle/publisher/acl$a$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/acl$a$a;->a()Lcom/vungle/publisher/acl$a;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl;->c:Lcom/vungle/publisher/acl$a;

    .line 76
    iget-object v1, p0, Lcom/vungle/publisher/acl$c;->d:Lcom/vungle/publisher/acl$b$b;

    invoke-virtual {v1}, Lcom/vungle/publisher/acl$b$b;->a()Lcom/vungle/publisher/acl$b;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl;->d:Lcom/vungle/publisher/acl$b;

    .line 77
    iget-object v1, p0, Lcom/vungle/publisher/acl$c;->b:Lcom/vungle/publisher/qs;

    invoke-interface {v1}, Lcom/vungle/publisher/qs;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl;->e:Ljava/lang/Boolean;

    .line 78
    iget-object v1, p0, Lcom/vungle/publisher/acl$c;->e:Lcom/vungle/publisher/qz;

    invoke-interface {v1}, Lcom/vungle/publisher/qz;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acl;->f:Ljava/lang/String;

    .line 79
    return-object v0
.end method
