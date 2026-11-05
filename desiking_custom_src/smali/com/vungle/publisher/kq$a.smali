.class public abstract Lcom/vungle/publisher/kq$a;
.super Lcom/vungle/publisher/dp$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/kq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/kq",
        "<TA;TV;TR;>;V:",
        "Lcom/vungle/publisher/kp",
        "<TA;>;R:",
        "Lcom/vungle/publisher/afi;",
        ">",
        "Lcom/vungle/publisher/dp$a",
        "<TA;TR;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/vungle/publisher/dp$a;-><init>()V

    return-void
.end method

.method private b(Lcom/vungle/publisher/kq;Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)TA;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/dp$a;->a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/dp;

    .line 129
    invoke-virtual {p2}, Lcom/vungle/publisher/afi;->c()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p2}, Lcom/vungle/publisher/afi;->e()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iput-object v1, p1, Lcom/vungle/publisher/kq;->z:Ljava/lang/String;

    .line 138
    :goto_0
    return-object p1

    .line 135
    :cond_0
    iput-object v0, p1, Lcom/vungle/publisher/kq;->z:Ljava/lang/String;

    .line 136
    iput-object v1, p1, Lcom/vungle/publisher/kq;->A:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/kq;Lcom/vungle/publisher/afi;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)I"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/kq$a;->b(Lcom/vungle/publisher/kq;Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kq;

    .line 122
    invoke-virtual {p1}, Lcom/vungle/publisher/kq;->B()Lcom/vungle/publisher/kp;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/vungle/publisher/kp$a;->a(Lcom/vungle/publisher/kp;Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/kp;->b_()I

    .line 123
    iget-object v0, p1, Lcom/vungle/publisher/kq;->C:Lcom/vungle/publisher/kn;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/kn;->a(Lcom/vungle/publisher/aej;)Ljava/util/Map;

    .line 124
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/dp$a;->b(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/dp;
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/vungle/publisher/afi;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/kq$a;->a(Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kq;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/vungle/publisher/kq;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/kq$a;->a(Lcom/vungle/publisher/kq;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kq;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/dp;
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/vungle/publisher/kq;

    check-cast p2, Lcom/vungle/publisher/afi;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/kq$a;->b(Lcom/vungle/publisher/kq;Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kq;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/vungle/publisher/kq;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/publisher/kq$a;->a(Lcom/vungle/publisher/kq;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kq;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/vungle/publisher/kq;Z)Lcom/vungle/publisher/kp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;Z)TV;"
        }
    .end annotation

    .prologue
    .line 155
    iget-boolean v0, p1, Lcom/vungle/publisher/kq;->D:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p1, Lcom/vungle/publisher/kq;->B:Lcom/vungle/publisher/kp;

    .line 162
    :goto_0
    return-object v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/publisher/kq$a;->f()Lcom/vungle/publisher/kp$a;

    move-result-object v1

    iget-object v0, p1, Lcom/vungle/publisher/kq;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Lcom/vungle/publisher/kp$a;->a(Ljava/lang/String;Z)Lcom/vungle/publisher/kp;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kq;->B:Lcom/vungle/publisher/kp;

    .line 160
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/vungle/publisher/kq;->D:Z

    goto :goto_0
.end method

.method public a(Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TA;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/vungle/publisher/dp$a;->a(Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/kq;

    .line 113
    invoke-virtual {p0}, Lcom/vungle/publisher/kq$a;->e()Lcom/vungle/publisher/kn$a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/kn$a;->a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/kn;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/kq;->C:Lcom/vungle/publisher/kn;

    .line 114
    invoke-virtual {p0}, Lcom/vungle/publisher/kq$a;->f()Lcom/vungle/publisher/kp$a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/kp$a;->a(Lcom/vungle/publisher/kq;Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kp;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/kq;->B:Lcom/vungle/publisher/kp;

    .line 115
    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/kq;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Landroid/database/Cursor;",
            "Z)TA;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/dp$a;->a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;

    .line 144
    const-string v0, "call_to_action_final_url"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kq;->z:Ljava/lang/String;

    .line 145
    const-string v0, "call_to_action_url"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kq;->A:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/vungle/publisher/kq$a;->e()Lcom/vungle/publisher/kn$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/kn$a;->a(Lcom/vungle/publisher/dp;)Lcom/vungle/publisher/kn;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kq;->C:Lcom/vungle/publisher/kn;

    .line 147
    if-eqz p3, :cond_0

    .line 148
    invoke-virtual {p0, p1, p3}, Lcom/vungle/publisher/kq$a;->a(Lcom/vungle/publisher/kq;Z)Lcom/vungle/publisher/kp;

    .line 150
    :cond_0
    return-object p1
.end method

.method public final synthetic b(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)I
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/vungle/publisher/kq;

    check-cast p2, Lcom/vungle/publisher/afi;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/kq$a;->a(Lcom/vungle/publisher/kq;Lcom/vungle/publisher/afi;)I

    move-result v0

    return v0
.end method

.method protected abstract e()Lcom/vungle/publisher/kn$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/kn$a",
            "<*TA;TR;",
            "Lcom/vungle/publisher/kr;",
            "**>;"
        }
    .end annotation
.end method

.method protected abstract f()Lcom/vungle/publisher/kp$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/kp$a",
            "<TA;TV;TR;>;"
        }
    .end annotation
.end method
