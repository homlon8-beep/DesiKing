.class public final Lcom/vungle/publisher/hy;
.super Lcom/vungle/publisher/es;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/et;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/hy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/es;",
        "Lcom/vungle/publisher/et",
        "<",
        "Lcom/vungle/publisher/hy;",
        ">;"
    }
.end annotation


# instance fields
.field q:Ljava/lang/String;

.field r:Lcom/vungle/publisher/hy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field v:Lcom/vungle/publisher/mt$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vungle/publisher/es;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/vungle/publisher/es;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 56
    const-string v1, "html_content"

    iget-object v2, p0, Lcom/vungle/publisher/hy;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method public final bridge synthetic a()Lcom/vungle/publisher/dp$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/publisher/hy;->r:Lcom/vungle/publisher/hy$a;

    return-object v0
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/publisher/hy;->r:Lcom/vungle/publisher/hy$a;

    return-object v0
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic c()Lcom/vungle/publisher/dp;
    .locals 0

    .prologue
    .line 20
    return-object p0
.end method

.method public final synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/vungle/publisher/es;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final g_()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/hm",
            "<",
            "Lcom/vungle/publisher/hy;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final h_()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic q()Lcom/vungle/publisher/mq;
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/publisher/hy;->v:Lcom/vungle/publisher/mt$a;

    iget-object v1, p0, Lcom/vungle/publisher/hy;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/mt$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/mt;

    move-result-object v0

    return-object v0
.end method
