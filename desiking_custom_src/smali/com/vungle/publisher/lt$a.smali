.class public final Lcom/vungle/publisher/lt$a;
.super Lcom/vungle/publisher/dw$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/lt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dw$a",
        "<",
        "Lcom/vungle/publisher/lt;",
        "Lcom/vungle/publisher/lo;",
        "Lcom/vungle/publisher/lu;",
        "Lcom/vungle/publisher/ky;",
        "Lcom/vungle/publisher/afk;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field c:Lcom/vungle/publisher/ky$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/lo$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/lt;",
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
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/vungle/publisher/dw$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/lt;Landroid/database/Cursor;Z)Lcom/vungle/publisher/lt;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/dw$a;->a(Lcom/vungle/publisher/dw;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dw;

    .line 91
    const-string v0, "download_end_millis"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/lt;->o:Ljava/lang/Long;

    .line 92
    const-string v0, "template_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/lt;->w:Ljava/lang/String;

    .line 93
    return-object p1
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/vungle/publisher/dp$a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/lt$a;->c:Lcom/vungle/publisher/ky$a;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/dw;
    .locals 2

    .prologue
    .line 64
    check-cast p1, Lcom/vungle/publisher/ky;

    invoke-super {p0, p1}, Lcom/vungle/publisher/dw$a;->a(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/dw;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/lt;

    iget-object v1, p0, Lcom/vungle/publisher/lt$a;->g:Lcom/vungle/publisher/eu$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/eu$a;->a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/eu;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/lt;->v:Lcom/vungle/publisher/eu;

    iget-object v1, p1, Lcom/vungle/publisher/ky;->B:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/lt;->w:Ljava/lang/String;

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/dw;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dw;
    .locals 1

    .prologue
    .line 64
    check-cast p1, Lcom/vungle/publisher/lt;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/lt$a;->a(Lcom/vungle/publisher/lt;Landroid/database/Cursor;Z)Lcom/vungle/publisher/lt;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/dw;Lcom/vungle/publisher/dp;Z)Lcom/vungle/publisher/dw;
    .locals 1

    .prologue
    .line 64
    check-cast p1, Lcom/vungle/publisher/lt;

    check-cast p2, Lcom/vungle/publisher/ky;

    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/dw$a;->a(Lcom/vungle/publisher/dw;Lcom/vungle/publisher/dp;Z)Lcom/vungle/publisher/dw;

    iget-object v0, p0, Lcom/vungle/publisher/lt$a;->g:Lcom/vungle/publisher/eu$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/eu$a;->a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/eu;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/lt;->v:Lcom/vungle/publisher/eu;

    iget-object v0, p1, Lcom/vungle/publisher/lt;->a:Lcom/vungle/publisher/dp;

    check-cast v0, Lcom/vungle/publisher/ky;

    iget-object v0, v0, Lcom/vungle/publisher/ky;->B:Ljava/lang/String;

    iput-object v0, p1, Lcom/vungle/publisher/lt;->w:Ljava/lang/String;

    return-object p1
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 64
    check-cast p1, Lcom/vungle/publisher/lt;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/lt$a;->a(Lcom/vungle/publisher/lt;Landroid/database/Cursor;Z)Lcom/vungle/publisher/lt;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 64
    new-array v0, p1, [Lcom/vungle/publisher/lt;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/lt$a;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/lt;

    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/dv$a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/lt$a;->e:Lcom/vungle/publisher/lo$a;

    return-object v0
.end method

.method public final f()Lcom/vungle/publisher/p;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/vungle/publisher/p;->c:Lcom/vungle/publisher/p;

    return-object v0
.end method
