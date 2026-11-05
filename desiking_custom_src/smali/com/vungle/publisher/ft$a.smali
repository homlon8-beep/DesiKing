.class public final Lcom/vungle/publisher/ft$a;
.super Lcom/vungle/publisher/kp$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kp$a",
        "<",
        "Lcom/vungle/publisher/fu;",
        "Lcom/vungle/publisher/ft;",
        "Lcom/vungle/publisher/aew;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final c:Lcom/vungle/publisher/fr$b;


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ft;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/hn$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/vungle/publisher/fr$b;->a:Lcom/vungle/publisher/fr$b;

    sput-object v0, Lcom/vungle/publisher/ft$a;->c:Lcom/vungle/publisher/fr$b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/vungle/publisher/kp$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/ft;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ft;
    .locals 1

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/kp$a;->a(Lcom/vungle/publisher/kp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kp;

    .line 231
    iget-object v0, p1, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/hn;->a(Landroid/database/Cursor;)V

    .line 232
    const-string v0, "checksum"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/ft;->a:Ljava/lang/String;

    .line 233
    return-object p1
.end method

.method private a(Lcom/vungle/publisher/fu;Lcom/vungle/publisher/aew;)Lcom/vungle/publisher/ft;
    .locals 3

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/kp$a;->a(Lcom/vungle/publisher/kq;Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ft;

    .line 209
    if-eqz v0, :cond_0

    .line 210
    iget-object v1, p2, Lcom/vungle/publisher/aew;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/ft;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/vungle/publisher/aew;->m:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ft;->a(Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/vungle/publisher/aew;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    iput-object v1, v2, Lcom/vungle/publisher/hn;->b:Ljava/lang/String;

    sget-object v1, Lcom/vungle/publisher/ft$a;->c:Lcom/vungle/publisher/fr$b;

    iput-object v1, v0, Lcom/vungle/publisher/ft;->r:Lcom/vungle/publisher/fr$b;

    .line 212
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 189
    check-cast p1, Lcom/vungle/publisher/ft;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/ft$a;->a(Lcom/vungle/publisher/ft;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ft;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Lcom/vungle/publisher/fr$b;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/vungle/publisher/ft$a;->c:Lcom/vungle/publisher/fr$b;

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/kp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kp;
    .locals 1

    .prologue
    .line 189
    check-cast p1, Lcom/vungle/publisher/ft;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/ft$a;->a(Lcom/vungle/publisher/ft;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ft;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/kq;Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kp;
    .locals 1

    .prologue
    .line 189
    check-cast p1, Lcom/vungle/publisher/fu;

    check-cast p2, Lcom/vungle/publisher/aew;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/ft$a;->a(Lcom/vungle/publisher/fu;Lcom/vungle/publisher/aew;)Lcom/vungle/publisher/ft;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/kv;
    .locals 1

    .prologue
    .line 189
    check-cast p1, Lcom/vungle/publisher/fu;

    check-cast p2, Lcom/vungle/publisher/aew;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/ft$a;->a(Lcom/vungle/publisher/fu;Lcom/vungle/publisher/aew;)Lcom/vungle/publisher/ft;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/kv;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kv;
    .locals 1

    .prologue
    .line 189
    check-cast p1, Lcom/vungle/publisher/ft;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/ft$a;->a(Lcom/vungle/publisher/ft;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ft;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 189
    new-array v0, p1, [Lcom/vungle/publisher/ft;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vungle/publisher/ft$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ft;

    iget-object v1, p0, Lcom/vungle/publisher/ft$a;->b:Lcom/vungle/publisher/hn$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/hn$a;->a(Lcom/vungle/publisher/hn$b;)Lcom/vungle/publisher/hn;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    return-object v0
.end method
