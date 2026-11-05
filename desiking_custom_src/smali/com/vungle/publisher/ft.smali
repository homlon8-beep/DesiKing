.class public final Lcom/vungle/publisher/ft;
.super Lcom/vungle/publisher/kp;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/hn$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ft$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kp",
        "<",
        "Lcom/vungle/publisher/fu;",
        ">;",
        "Lcom/vungle/publisher/hn$b",
        "<",
        "Lcom/vungle/publisher/fu;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field public b:Lcom/vungle/publisher/hn;

.field c:Lcom/vungle/publisher/fu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/ft$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vungle/publisher/kp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/vungle/publisher/kp;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/hn;->a(Landroid/content/ContentValues;)V

    .line 175
    const-string v1, "checksum"

    iget-object v2, p0, Lcom/vungle/publisher/ft;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/yu;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/hn;->a(Lcom/vungle/publisher/yu;)V

    .line 98
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    iput-object p1, v0, Lcom/vungle/publisher/hn;->c:Ljava/lang/Integer;

    .line 71
    return-void
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vungle/publisher/ft;->d:Lcom/vungle/publisher/ft$a;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vungle/publisher/ft;->u()Lcom/vungle/publisher/fr$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    iget-object v0, v0, Lcom/vungle/publisher/hn;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->e()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->f()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->h()Z

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/vungle/publisher/kp;->o()I

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->f()Z

    move-result v0

    return v0
.end method

.method protected final n()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 183
    invoke-super {p0}, Lcom/vungle/publisher/kp;->n()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/hn;->a(Ljava/lang/StringBuilder;)V

    .line 185
    const-string v1, "checksum"

    iget-object v2, p0, Lcom/vungle/publisher/ft;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 186
    return-object v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->d()I

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vungle/publisher/ft;->b:Lcom/vungle/publisher/hn;

    invoke-virtual {v1}, Lcom/vungle/publisher/hn;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic r()Lcom/vungle/publisher/dp$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vungle/publisher/ft;->c:Lcom/vungle/publisher/fu$a;

    return-object v0
.end method
