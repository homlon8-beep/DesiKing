.class public final Lcom/vungle/publisher/lt;
.super Lcom/vungle/publisher/dw;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/fi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/lt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dw",
        "<",
        "Lcom/vungle/publisher/lt;",
        "Lcom/vungle/publisher/lo;",
        "Lcom/vungle/publisher/lu;",
        "Lcom/vungle/publisher/ky;",
        ">;",
        "Lcom/vungle/publisher/fi;"
    }
.end annotation


# instance fields
.field public v:Lcom/vungle/publisher/eu;

.field public w:Ljava/lang/String;

.field x:Lcom/vungle/publisher/lt$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vungle/publisher/dw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/vungle/publisher/dw;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/vungle/publisher/lt;->v:Lcom/vungle/publisher/eu;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/eu;->a(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 58
    if-eqz p1, :cond_0

    .line 59
    const-string v1, "template_id"

    iget-object v2, p0, Lcom/vungle/publisher/lt;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vungle/publisher/lt;->x:Lcom/vungle/publisher/lt$a;

    return-object v0
.end method

.method public final a_(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/lt;->v:Lcom/vungle/publisher/eu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/eu;->a(Ljava/lang/Long;)V

    .line 48
    return-void
.end method

.method public final bridge synthetic b()Lcom/vungle/publisher/dw$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vungle/publisher/lt;->x:Lcom/vungle/publisher/lt$a;

    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/dv$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vungle/publisher/lt;->x:Lcom/vungle/publisher/lt$a;

    iget-object v0, v0, Lcom/vungle/publisher/lt$a;->e:Lcom/vungle/publisher/lo$a;

    return-object v0
.end method
