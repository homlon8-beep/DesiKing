.class public final Lcom/vungle/publisher/fv$a;
.super Lcom/vungle/publisher/fs$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/fv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/fs$a",
        "<",
        "Lcom/vungle/publisher/fu;",
        "Lcom/vungle/publisher/fv;",
        "Lcom/vungle/publisher/aew;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/fv;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/vungle/publisher/fs$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/List;)I
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/vungle/publisher/fs$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method final bridge synthetic a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;Lcom/vungle/publisher/fr$b;)Lcom/vungle/publisher/fs;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcom/vungle/publisher/fu;

    check-cast p2, Lcom/vungle/publisher/aew;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/fv$a;->a(Lcom/vungle/publisher/fu;Lcom/vungle/publisher/aew;Lcom/vungle/publisher/fr$b;)Lcom/vungle/publisher/fv;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/vungle/publisher/fu;Lcom/vungle/publisher/aew;Lcom/vungle/publisher/fr$b;)Lcom/vungle/publisher/fv;
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    if-eqz p2, :cond_0

    .line 49
    sget-object v1, Lcom/vungle/publisher/fv$1;->a:[I

    invoke-virtual {p3}, Lcom/vungle/publisher/fr$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot create archive of type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :pswitch_0
    iget-object v1, p2, Lcom/vungle/publisher/aew;->k:Ljava/lang/String;

    .line 52
    if-eqz v1, :cond_0

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/fs$a;->a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;Lcom/vungle/publisher/fr$b;)Lcom/vungle/publisher/fs;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fv;

    .line 54
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/fv;->a(Ljava/lang/String;)V

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 58
    :pswitch_1
    iget-object v1, p2, Lcom/vungle/publisher/aew;->l:Ljava/lang/String;

    .line 59
    if-eqz v1, :cond_0

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/fs$a;->a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;Lcom/vungle/publisher/fr$b;)Lcom/vungle/publisher/fs;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fv;

    .line 61
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/fv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/fs$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 39
    new-array v0, p1, [Lcom/vungle/publisher/fv;

    return-object v0
.end method

.method public final bridge synthetic c(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/vungle/publisher/fs$a;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vungle/publisher/fv$a;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fv;

    iget-object v1, p0, Lcom/vungle/publisher/fv$a;->a:Lcom/vungle/publisher/hn$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/hn$a;->a(Lcom/vungle/publisher/hn$b;)Lcom/vungle/publisher/hn;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/fv;->g:Lcom/vungle/publisher/hn;

    return-object v0
.end method

.method public final bridge synthetic j_()Ljava/util/List;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/vungle/publisher/fs$a;->j_()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
