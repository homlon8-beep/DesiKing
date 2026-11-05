.class public Lcom/vungle/publisher/xr$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/xr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/vungle/publisher/xf$c;",
            "Lcom/vungle/publisher/cz$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/xr;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/vungle/publisher/xf$c;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 80
    sput-object v0, Lcom/vungle/publisher/xr$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/xf$c;->a:Lcom/vungle/publisher/xf$c;

    sget-object v2, Lcom/vungle/publisher/cz$b;->i:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/vungle/publisher/xr$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/xf$c;->b:Lcom/vungle/publisher/xf$c;

    sget-object v2, Lcom/vungle/publisher/cz$b;->d:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/vungle/publisher/xr$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/xf$c;->c:Lcom/vungle/publisher/xf$c;

    sget-object v2, Lcom/vungle/publisher/cz$b;->j:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/vungle/publisher/xr$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/xf$c;->d:Lcom/vungle/publisher/xf$c;

    sget-object v2, Lcom/vungle/publisher/cz$b;->f:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/vungle/publisher/xr$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/xf$c;->e:Lcom/vungle/publisher/xf$c;

    sget-object v2, Lcom/vungle/publisher/cz$b;->c:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/vungle/publisher/xr$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/xf$c;->f:Lcom/vungle/publisher/xf$c;

    sget-object v2, Lcom/vungle/publisher/cz$b;->l:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/vungle/publisher/xr$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/xf$c;->g:Lcom/vungle/publisher/xf$c;

    sget-object v2, Lcom/vungle/publisher/cz$b;->m:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/vungle/publisher/xr$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/xf$c;->h:Lcom/vungle/publisher/xf$c;

    sget-object v2, Lcom/vungle/publisher/cz$b;->q:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/vungle/publisher/xr$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/xf$c;->i:Lcom/vungle/publisher/xf$c;

    sget-object v2, Lcom/vungle/publisher/cz$b;->e:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/vungle/publisher/xr$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/xf$c;->j:Lcom/vungle/publisher/xf$c;

    sget-object v2, Lcom/vungle/publisher/cz$b;->n:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/vungle/publisher/xr$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/xf$c;->l:Lcom/vungle/publisher/xf$c;

    sget-object v2, Lcom/vungle/publisher/cz$b;->s:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/vungle/publisher/xr$a;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/vungle/publisher/xf$c;->k:Lcom/vungle/publisher/xf$c;

    sget-object v2, Lcom/vungle/publisher/cz$b;->t:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/xf;Lcom/vungle/publisher/xm;)Lcom/vungle/publisher/xr;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/vungle/publisher/yu;

    invoke-direct {v0}, Lcom/vungle/publisher/yu;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/publisher/xr$a;->a(Lcom/vungle/publisher/xf;Lcom/vungle/publisher/xm;Lcom/vungle/publisher/yu;)Lcom/vungle/publisher/xr;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/xf;Lcom/vungle/publisher/xm;Lcom/vungle/publisher/yu;)Lcom/vungle/publisher/xr;
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vungle/publisher/xr$a;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/xr;

    .line 105
    iput-object p1, v0, Lcom/vungle/publisher/xr;->a:Lcom/vungle/publisher/xf;

    .line 106
    iput-object p2, v0, Lcom/vungle/publisher/xr;->b:Lcom/vungle/publisher/xm;

    .line 107
    sget-object v1, Lcom/vungle/publisher/xr$a;->a:Ljava/util/EnumMap;

    invoke-virtual {p1}, Lcom/vungle/publisher/xf;->a()Lcom/vungle/publisher/xf$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/cz$b;

    .line 108
    if-nez v1, :cond_0

    .line 109
    const-string v1, "VungleNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "missing mapping for HttpTransaction requestType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/publisher/xf;->a()Lcom/vungle/publisher/xf$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/publisher/xf$c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v1, Lcom/vungle/publisher/cz$b;->p:Lcom/vungle/publisher/cz$b;

    .line 112
    :cond_0
    iput-object v1, v0, Lcom/vungle/publisher/xr;->d:Lcom/vungle/publisher/cz$b;

    .line 113
    iput-object p3, v0, Lcom/vungle/publisher/xr;->c:Lcom/vungle/publisher/yu;

    .line 114
    return-object v0
.end method
