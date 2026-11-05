.class public final Lcom/vungle/publisher/dq$a;
.super Lcom/vungle/publisher/er$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/er$a",
        "<",
        "Lcom/vungle/publisher/dq;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/dq;",
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
    .line 60
    invoke-direct {p0}, Lcom/vungle/publisher/er$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/List;)I
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/vungle/publisher/er$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final a()Lcom/vungle/publisher/dq;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/dq$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dq;

    return-object v0
.end method

.method protected final synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 54
    check-cast p1, Lcom/vungle/publisher/dq;

    const-string v0, "code"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dq;->a:Ljava/lang/String;

    const-string v0, "report_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dq;->b:Ljava/lang/Integer;

    return-object p1
.end method

.method public final a(Ljava/lang/Integer;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/dq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    const-string v0, "report_id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-super {p0, v0, v1}, Lcom/vungle/publisher/er$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/er$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 54
    new-array v0, p1, [Lcom/vungle/publisher/dq;

    return-object v0
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "errors"

    return-object v0
.end method

.method public final bridge synthetic c(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/vungle/publisher/er$a;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/vungle/publisher/dq$a;->a()Lcom/vungle/publisher/dq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j_()Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/vungle/publisher/er$a;->j_()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
