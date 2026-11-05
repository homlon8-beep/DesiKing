.class public abstract Lcom/vungle/publisher/kp$a;
.super Lcom/vungle/publisher/kv$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/kp;
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
        "Lcom/vungle/publisher/kv$a",
        "<TA;TV;TR;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/vungle/publisher/kv$a;-><init>()V

    return-void
.end method

.method static a(Lcom/vungle/publisher/kp;Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/vungle/publisher/afi;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/vungle/publisher/afi;->i()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/kp;->g:Ljava/lang/Integer;

    .line 143
    invoke-virtual {p1}, Lcom/vungle/publisher/afi;->f()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/kp;->k:Ljava/lang/Integer;

    .line 144
    invoke-virtual {p1}, Lcom/vungle/publisher/afi;->g()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/kp;->l:Ljava/lang/Integer;

    .line 145
    invoke-virtual {p1}, Lcom/vungle/publisher/afi;->h()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/kp;->m:Ljava/lang/Integer;

    .line 146
    invoke-virtual {p1}, Lcom/vungle/publisher/afi;->k()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/kp;->n:Ljava/lang/Integer;

    .line 147
    invoke-virtual {p1}, Lcom/vungle/publisher/afi;->d()Lcom/vungle/publisher/afi$a;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/vungle/publisher/afi$a;->c()Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/publisher/kp;->e:Ljava/lang/Float;

    .line 150
    invoke-virtual {v0}, Lcom/vungle/publisher/afi$a;->h()Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/publisher/kp;->f:Ljava/lang/Integer;

    .line 151
    invoke-virtual {v0}, Lcom/vungle/publisher/afi$a;->e()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/publisher/kp;->h:Ljava/lang/Boolean;

    .line 152
    invoke-virtual {v0}, Lcom/vungle/publisher/afi$a;->f()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/publisher/kp;->i:Ljava/lang/Boolean;

    .line 153
    invoke-virtual {v0}, Lcom/vungle/publisher/afi$a;->g()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/kp;->j:Ljava/lang/Integer;

    .line 155
    :cond_0
    return-object p0
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 121
    check-cast p1, Lcom/vungle/publisher/kp;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/publisher/kp$a;->a(Lcom/vungle/publisher/kp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kp;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Lcom/vungle/publisher/fr$b;
.end method

.method protected a(Lcom/vungle/publisher/kp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/database/Cursor;",
            "Z)TV;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/kv$a;->a(Lcom/vungle/publisher/kv;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kv;

    .line 165
    const-string v0, "cta_clickable_percent"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->b(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kp;->e:Ljava/lang/Float;

    .line 166
    const-string v0, "enable_cta_delay_seconds"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kp;->f:Ljava/lang/Integer;

    .line 167
    const-string v0, "height"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kp;->g:Ljava/lang/Integer;

    .line 168
    const-string v0, "is_cta_enabled"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kp;->h:Ljava/lang/Boolean;

    .line 169
    const-string v0, "is_cta_shown_on_touch"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kp;->i:Ljava/lang/Boolean;

    .line 170
    const-string v0, "show_cta_delay_seconds"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kp;->j:Ljava/lang/Integer;

    .line 171
    const-string v0, "show_close_delay_incentivized_seconds"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kp;->k:Ljava/lang/Integer;

    .line 172
    const-string v0, "show_close_delay_interstitial_seconds"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kp;->l:Ljava/lang/Integer;

    .line 173
    const-string v0, "show_countdown_delay_seconds"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kp;->m:Ljava/lang/Integer;

    .line 174
    const-string v0, "width"

    invoke-static {p2, v0}, Lcom/vungle/publisher/dh;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/kp;->n:Ljava/lang/Integer;

    .line 175
    return-object p1
.end method

.method protected a(Lcom/vungle/publisher/kq;Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)TV;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/kv$a;->a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/kv;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/kp;

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-static {v0, p2}, Lcom/vungle/publisher/kp$a;->a(Lcom/vungle/publisher/kp;Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kp;

    .line 133
    :cond_0
    return-object v0
.end method

.method protected final a(Ljava/lang/String;Z)Lcom/vungle/publisher/kp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/vungle/publisher/kp$a;->a()Lcom/vungle/publisher/fr$b;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/vungle/publisher/kp$a;->a(Ljava/lang/String;Lcom/vungle/publisher/fr$b;Z)Lcom/vungle/publisher/kv;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/kp;

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/kv;
    .locals 1

    .prologue
    .line 121
    check-cast p1, Lcom/vungle/publisher/kq;

    check-cast p2, Lcom/vungle/publisher/afi;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/kp$a;->a(Lcom/vungle/publisher/kq;Lcom/vungle/publisher/afi;)Lcom/vungle/publisher/kp;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/kv;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kv;
    .locals 1

    .prologue
    .line 121
    check-cast p1, Lcom/vungle/publisher/kp;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/kp$a;->a(Lcom/vungle/publisher/kp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kp;

    move-result-object v0

    return-object v0
.end method
