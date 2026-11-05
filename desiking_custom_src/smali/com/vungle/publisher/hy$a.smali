.class public final Lcom/vungle/publisher/hy$a;
.super Lcom/vungle/publisher/dp$a;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/fc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/hy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dp$a",
        "<",
        "Lcom/vungle/publisher/hy;",
        "Lcom/vungle/publisher/aez;",
        ">;",
        "Lcom/vungle/publisher/fc",
        "<",
        "Lcom/vungle/publisher/hy;",
        "Lcom/vungle/publisher/aez;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/hy;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/hz$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/vungle/publisher/dp$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/hy;Landroid/database/Cursor;Z)Lcom/vungle/publisher/hy;
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/dp$a;->a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;

    .line 103
    const-string v0, "html_content"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/hy;->q:Ljava/lang/String;

    .line 104
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/hy;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vungle/publisher/hy$a;->e:Lcom/vungle/publisher/hz$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/hz$a;->a(Lcom/vungle/publisher/dp$a;)Lcom/vungle/publisher/fd;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hz;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/hz;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/dp;
    .locals 2

    .prologue
    .line 82
    check-cast p1, Lcom/vungle/publisher/aez;

    invoke-super {p0, p1}, Lcom/vungle/publisher/dp$a;->a(Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hy;

    iget-object v1, p1, Lcom/vungle/publisher/aez;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/hy;->q:Ljava/lang/String;

    sget-object v1, Lcom/vungle/publisher/dp$c;->a:Lcom/vungle/publisher/dp$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/hy;->a(Lcom/vungle/publisher/dp$c;)V

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .locals 1

    .prologue
    .line 82
    check-cast p1, Lcom/vungle/publisher/hy;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/hy$a;->a(Lcom/vungle/publisher/hy;Landroid/database/Cursor;Z)Lcom/vungle/publisher/hy;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 82
    check-cast p1, Lcom/vungle/publisher/hy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/hy$a;->a(Lcom/vungle/publisher/hy;Landroid/database/Cursor;Z)Lcom/vungle/publisher/hy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Lcom/vungle/publisher/et;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/vungle/publisher/dp$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/et;

    return-object v0
.end method

.method protected final a()Lcom/vungle/publisher/p;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/vungle/publisher/p;->d:Lcom/vungle/publisher/p;

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 82
    new-array v0, p1, [Lcom/vungle/publisher/hy;

    return-object v0
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Lcom/vungle/publisher/et;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/vungle/publisher/dp$a;->b(Ljava/lang/Object;)Lcom/vungle/publisher/er;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/et;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vungle/publisher/hy$a;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hy;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/vungle/publisher/hy$a;->e:Lcom/vungle/publisher/hz$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/hz$a;->a(Lcom/vungle/publisher/dp$a;)Lcom/vungle/publisher/fd;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hz;

    invoke-virtual {v0}, Lcom/vungle/publisher/hz;->b()I

    move-result v0

    return v0
.end method

.method public final i_()Lcom/vungle/publisher/dp$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/dp$a",
            "<",
            "Lcom/vungle/publisher/hy;",
            "Lcom/vungle/publisher/aez;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    return-object p0
.end method
