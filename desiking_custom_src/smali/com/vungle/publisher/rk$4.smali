.class final Lcom/vungle/publisher/rk$4;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/rk;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vungle/publisher/rk;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/rk;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/vungle/publisher/rk$4;->b:Lcom/vungle/publisher/rk;

    iput-object p2, p0, Lcom/vungle/publisher/rk$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vungle/publisher/rk$4;->b:Lcom/vungle/publisher/rk;

    iget-object v0, v0, Lcom/vungle/publisher/rk;->a:Lcom/vungle/publisher/EventListener;

    iget-object v1, p0, Lcom/vungle/publisher/rk$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/publisher/EventListener;->onAdUnavailable(Ljava/lang/String;)V

    .line 149
    return-void
.end method
