.class public abstract Lcom/vungle/publisher/oa$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/oa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/oa",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/vungle/publisher/oa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/vungle/publisher/mq;Lcom/vungle/publisher/a;)Lcom/vungle/publisher/oa;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/mq;",
            "Lcom/vungle/publisher/a;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/oa$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/oa;

    .line 110
    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/vungle/publisher/oa$a;->a()Lcom/vungle/publisher/oa;

    move-result-object v0

    .line 113
    :cond_0
    iput-object p3, v0, Lcom/vungle/publisher/oa;->f:Lcom/vungle/publisher/mq;

    iput-object p2, v0, Lcom/vungle/publisher/oa;->h:Ljava/lang/String;

    iput-object p4, v0, Lcom/vungle/publisher/oa;->i:Lcom/vungle/publisher/a;

    return-object v0
.end method

.method protected abstract b()Ljava/lang/String;
.end method
