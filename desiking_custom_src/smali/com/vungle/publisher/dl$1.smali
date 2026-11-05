.class public final Lcom/vungle/publisher/dl$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/dl;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/dl;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/vungle/publisher/dl$1;->a:Lcom/vungle/publisher/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "VungleDatabase"

    const-string v1, "initializing database vungle"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/vungle/publisher/dl$1;->a:Lcom/vungle/publisher/dl;

    invoke-virtual {v0}, Lcom/vungle/publisher/dl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 127
    const-string v0, "VungleDatabase"

    const-string v1, "done initializing database vungle"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/vungle/publisher/dl$1;->a:Lcom/vungle/publisher/dl;

    iget-object v0, v0, Lcom/vungle/publisher/dl;->b:Lcom/vungle/publisher/rq;

    new-instance v1, Lcom/vungle/publisher/do;

    invoke-direct {v1}, Lcom/vungle/publisher/do;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rq;->a(Ljava/lang/Object;)V

    .line 129
    return-void
.end method
