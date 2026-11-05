.class final Lcom/vungle/publisher/pu$b;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/pu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/pu;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/pu;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/vungle/publisher/pu$b;->a:Lcom/vungle/publisher/pu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 633
    const-string v0, "VungleAd"

    const-string v1, "close clicked"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/vungle/publisher/pu$b;->a:Lcom/vungle/publisher/pu;

    invoke-static {v0}, Lcom/vungle/publisher/pu;->b(Lcom/vungle/publisher/pu;)V

    .line 635
    return-void
.end method
