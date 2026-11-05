.class public final Lcom/vungle/publisher/gp$a;
.super Lcom/vungle/publisher/kt$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/gp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kt$a",
        "<",
        "Lcom/vungle/publisher/gp;",
        "Lcom/vungle/publisher/gk;",
        "Lcom/vungle/publisher/gq;",
        "Lcom/vungle/publisher/fu;",
        "Lcom/vungle/publisher/ft;",
        "Lcom/vungle/publisher/aew;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field c:Lcom/vungle/publisher/fu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/gk$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gp;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/eu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/vungle/publisher/kt$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/gp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/gp;
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/kt$a;->a(Lcom/vungle/publisher/dw;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dw;

    .line 102
    const-string v0, "download_end_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/gp;->o:Ljava/lang/Long;

    .line 103
    return-object p1
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/vungle/publisher/dp$a;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/gp$a;->c:Lcom/vungle/publisher/fu$a;

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/dw;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dw;
    .locals 1

    .prologue
    .line 68
    check-cast p1, Lcom/vungle/publisher/gp;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/gp$a;->a(Lcom/vungle/publisher/gp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/gp;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/dw;Lcom/vungle/publisher/dp;Z)Lcom/vungle/publisher/dw;
    .locals 1

    .prologue
    .line 68
    check-cast p1, Lcom/vungle/publisher/gp;

    check-cast p2, Lcom/vungle/publisher/fu;

    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/kt$a;->a(Lcom/vungle/publisher/dw;Lcom/vungle/publisher/dp;Z)Lcom/vungle/publisher/dw;

    iget-object v0, p0, Lcom/vungle/publisher/gp$a;->g:Lcom/vungle/publisher/eu$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/eu$a;->a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/eu;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/gp;->x:Lcom/vungle/publisher/eu;

    return-object p1
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 68
    check-cast p1, Lcom/vungle/publisher/gp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/gp$a;->a(Lcom/vungle/publisher/gp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/gp;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 68
    new-array v0, p1, [Lcom/vungle/publisher/gp;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/gp$a;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gp;

    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/dv$a;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/gp$a;->e:Lcom/vungle/publisher/gk$a;

    return-object v0
.end method

.method public final f()Lcom/vungle/publisher/p;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/vungle/publisher/p;->a:Lcom/vungle/publisher/p;

    return-object v0
.end method
