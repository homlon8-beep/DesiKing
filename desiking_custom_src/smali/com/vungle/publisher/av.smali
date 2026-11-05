.class public final Lcom/vungle/publisher/av;
.super Lcom/vungle/publisher/ri;
.source "vungle"


# instance fields
.field public final a:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vungle/publisher/ri;-><init>()V

    .line 13
    const-string v0, "https://www.vungle.com/privacy/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/av;->a:Landroid/net/Uri;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/ri;-><init>()V

    .line 17
    const-string v0, "https://www.vungle.com/privacy/"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ahe;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/av;->a:Landroid/net/Uri;

    .line 18
    return-void
.end method
