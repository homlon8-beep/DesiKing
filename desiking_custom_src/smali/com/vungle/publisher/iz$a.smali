.class public final Lcom/vungle/publisher/iz$a;
.super Lcom/vungle/publisher/kp$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kp$a",
        "<",
        "Lcom/vungle/publisher/ja;",
        "Lcom/vungle/publisher/iz;",
        "Lcom/vungle/publisher/aff;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final b:Lcom/vungle/publisher/fr$b;


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/iz;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/vungle/publisher/fr$b;->d:Lcom/vungle/publisher/fr$b;

    sput-object v0, Lcom/vungle/publisher/iz$a;->b:Lcom/vungle/publisher/fr$b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/vungle/publisher/kp$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/iz;Landroid/database/Cursor;Z)Lcom/vungle/publisher/iz;
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/kp$a;->a(Lcom/vungle/publisher/kp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kp;

    .line 92
    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/iz;->c:Ljava/lang/String;

    .line 93
    return-object p1
.end method

.method private a(Lcom/vungle/publisher/ja;Lcom/vungle/publisher/aff;)Lcom/vungle/publisher/iz;
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/kp$a;->a(Lcom/vungle/publisher/kq;Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/iz;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p2}, Lcom/vungle/publisher/aff;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/iz;->c:Ljava/lang/String;

    .line 84
    sget-object v1, Lcom/vungle/publisher/iz$a;->b:Lcom/vungle/publisher/fr$b;

    iput-object v1, v0, Lcom/vungle/publisher/iz;->r:Lcom/vungle/publisher/fr$b;

    .line 86
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/iz;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/iz$a;->a(Lcom/vungle/publisher/iz;Landroid/database/Cursor;Z)Lcom/vungle/publisher/iz;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Lcom/vungle/publisher/fr$b;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/vungle/publisher/iz$a;->b:Lcom/vungle/publisher/fr$b;

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/kp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kp;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/iz;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/iz$a;->a(Lcom/vungle/publisher/iz;Landroid/database/Cursor;Z)Lcom/vungle/publisher/iz;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/kq;Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kp;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/ja;

    check-cast p2, Lcom/vungle/publisher/aff;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/iz$a;->a(Lcom/vungle/publisher/ja;Lcom/vungle/publisher/aff;)Lcom/vungle/publisher/iz;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/kv;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/ja;

    check-cast p2, Lcom/vungle/publisher/aff;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/iz$a;->a(Lcom/vungle/publisher/ja;Lcom/vungle/publisher/aff;)Lcom/vungle/publisher/iz;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/kv;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kv;
    .locals 1

    .prologue
    .line 65
    check-cast p1, Lcom/vungle/publisher/iz;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/iz$a;->a(Lcom/vungle/publisher/iz;Landroid/database/Cursor;Z)Lcom/vungle/publisher/iz;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 65
    new-array v0, p1, [Lcom/vungle/publisher/iz;

    return-object v0
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/iz$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/iz;

    return-object v0
.end method

.method protected final d(I)[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 103
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method
