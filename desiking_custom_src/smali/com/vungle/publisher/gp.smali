.class public final Lcom/vungle/publisher/gp;
.super Lcom/vungle/publisher/kt;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/fi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/gp$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/kt",
        "<",
        "Lcom/vungle/publisher/gp;",
        "Lcom/vungle/publisher/gk;",
        "Lcom/vungle/publisher/gq;",
        "Lcom/vungle/publisher/fu;",
        "Lcom/vungle/publisher/ft;",
        ">;",
        "Lcom/vungle/publisher/fi;"
    }
.end annotation


# instance fields
.field v:Lcom/vungle/publisher/gp$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field w:Lcom/vungle/publisher/gk$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public x:Lcom/vungle/publisher/eu;


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vungle/publisher/kt;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/vungle/publisher/kt;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/vungle/publisher/gp;->x:Lcom/vungle/publisher/eu;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/eu;->a(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 56
    return-object v0
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vungle/publisher/gp;->v:Lcom/vungle/publisher/gp$a;

    return-object v0
.end method

.method public final a_(Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/gp;->x:Lcom/vungle/publisher/eu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/eu;->a(Ljava/lang/Long;)V

    .line 48
    return-void
.end method

.method public final bridge synthetic b()Lcom/vungle/publisher/dw$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vungle/publisher/gp;->v:Lcom/vungle/publisher/gp$a;

    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/vungle/publisher/dv$a;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vungle/publisher/gp;->w:Lcom/vungle/publisher/gk$a;

    return-object v0
.end method

.method public final n()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 63
    invoke-super {p0}, Lcom/vungle/publisher/kt;->n()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    const-string v1, "download_end_millis"

    iget-object v2, p0, Lcom/vungle/publisher/gp;->o:Ljava/lang/Long;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/er;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 65
    return-object v0
.end method
