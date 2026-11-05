.class public final Lcom/vungle/publisher/em;
.super Lcom/vungle/publisher/kv;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/hn$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/em$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kv",
        "<",
        "Lcom/vungle/publisher/ky;",
        ">;",
        "Lcom/vungle/publisher/hn$b",
        "<",
        "Lcom/vungle/publisher/ky;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/hn;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/vungle/publisher/ki;

.field e:Lcom/vungle/publisher/ky$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/em$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vungle/publisher/kv;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/vungle/publisher/kv;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/vungle/publisher/em;->a:Lcom/vungle/publisher/hn;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/hn;->a(Landroid/content/ContentValues;)V

    .line 137
    const-string v1, "name"

    iget-object v2, p0, Lcom/vungle/publisher/em;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "extension"

    iget-object v2, p0, Lcom/vungle/publisher/em;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/yu;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vungle/publisher/em;->a:Lcom/vungle/publisher/hn;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/hn;->a(Lcom/vungle/publisher/yu;)V

    .line 76
    return-void
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vungle/publisher/em;->a:Lcom/vungle/publisher/hn;

    iput-object p1, v0, Lcom/vungle/publisher/hn;->c:Ljava/lang/Integer;

    .line 56
    return-void
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/em;->f:Lcom/vungle/publisher/em$a;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vungle/publisher/em;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/em;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vungle/publisher/em;->a:Lcom/vungle/publisher/hn;

    iget-object v0, v0, Lcom/vungle/publisher/hn;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/em;->a:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vungle/publisher/em;->a:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->e()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/em;->a:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->f()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vungle/publisher/em;->a:Lcom/vungle/publisher/hn;

    invoke-virtual {v0}, Lcom/vungle/publisher/hn;->b()Z

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/vungle/publisher/kv;->o()I

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public final q()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/vungle/publisher/kv;->v()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 127
    iget-object v1, p0, Lcom/vungle/publisher/em;->d:Lcom/vungle/publisher/ki;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/vungle/publisher/em;->d:Lcom/vungle/publisher/ki;

    invoke-virtual {v1}, Lcom/vungle/publisher/ki;->v()Ljava/lang/Object;

    .line 130
    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic r()Lcom/vungle/publisher/dp$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/em;->e:Lcom/vungle/publisher/ky$a;

    return-object v0
.end method

.method public final synthetic v()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/vungle/publisher/em;->q()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
