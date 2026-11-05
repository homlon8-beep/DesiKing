.class final Lcom/vungle/publisher/b$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/b;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/vungle/publisher/b$2;->a:Lcom/vungle/publisher/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/vungle/publisher/b$2;->a:Lcom/vungle/publisher/b;

    iget-object v0, v0, Lcom/vungle/publisher/b;->t:Lcom/vungle/publisher/fd$b;

    invoke-virtual {v0}, Lcom/vungle/publisher/fd$b;->a()I

    .line 287
    return-void
.end method
