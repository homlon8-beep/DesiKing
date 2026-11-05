.class public abstract Lcom/vungle/publisher/adj$a;
.super Lcom/vungle/publisher/acl$c;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/adj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/vungle/publisher/dv",
        "<TT;TP;*>;O:",
        "Lcom/vungle/publisher/adj;",
        "T:",
        "Lcom/vungle/publisher/dw",
        "<TT;TP;*TA;>;A:",
        "Lcom/vungle/publisher/dp;",
        ">",
        "Lcom/vungle/publisher/acl$c",
        "<TO;>;"
    }
.end annotation


# instance fields
.field protected f:Lcom/vungle/publisher/acy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/vungle/publisher/acl$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/dw;)Lcom/vungle/publisher/adj;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TO;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-super {p0}, Lcom/vungle/publisher/acl$c;->a()Lcom/vungle/publisher/acl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/adj;

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/vungle/publisher/dw;->h()Lcom/vungle/publisher/dp;

    move-result-object v2

    .line 120
    invoke-virtual {p1}, Lcom/vungle/publisher/dw;->r()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adj;->i:Ljava/lang/Long;

    .line 121
    invoke-virtual {v2}, Lcom/vungle/publisher/dp;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adj;->j:Ljava/lang/String;

    .line 122
    invoke-virtual {v2}, Lcom/vungle/publisher/dp;->w()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/adj;->k:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/vungle/publisher/dw;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adj;->l:Ljava/lang/Integer;

    .line 124
    invoke-virtual {p1}, Lcom/vungle/publisher/dw;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adj;->m:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/vungle/publisher/dw;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adj;->n:Ljava/lang/Boolean;

    .line 126
    invoke-virtual {p1}, Lcom/vungle/publisher/dw;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adj;->o:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/vungle/publisher/adj$a;->c()Lcom/vungle/publisher/adg$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vungle/publisher/dw;->t()[Lcom/vungle/publisher/dv;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vungle/publisher/adg$a;->a([Lcom/vungle/publisher/dv;)[Lcom/vungle/publisher/adg;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adj;->p:[Lcom/vungle/publisher/adg;

    .line 128
    invoke-virtual {p1}, Lcom/vungle/publisher/dw;->f()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adj;->q:Ljava/util/List;

    .line 129
    invoke-virtual {v2}, Lcom/vungle/publisher/dp;->f()Lcom/vungle/publisher/p;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adj;->r:Lcom/vungle/publisher/p;

    .line 130
    invoke-virtual {p1}, Lcom/vungle/publisher/dw;->i()Lcom/vungle/publisher/fp;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/publisher/acy$a;->b(Ljava/util/Map;)Lcom/vungle/publisher/acy;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/adj;->g:Lcom/vungle/publisher/acy;

    .line 132
    :cond_0
    return-object v0
.end method

.method protected abstract c()Lcom/vungle/publisher/adg$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/adg$a",
            "<TP;**>;"
        }
    .end annotation
.end method
