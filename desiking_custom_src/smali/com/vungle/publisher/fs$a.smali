.class abstract Lcom/vungle/publisher/fs$a;
.super Lcom/vungle/publisher/kv$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/fs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/dp;",
        "V:",
        "Lcom/vungle/publisher/fs",
        "<TA;TV;>;R:",
        "Lcom/vungle/publisher/aej;",
        ">",
        "Lcom/vungle/publisher/kv$a",
        "<TA;TV;TR;>;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/hn$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/vungle/publisher/kv$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/fs;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/database/Cursor;",
            "Z)TV;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/kv$a;->a(Lcom/vungle/publisher/kv;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kv;

    .line 278
    iget-object v0, p1, Lcom/vungle/publisher/fs;->g:Lcom/vungle/publisher/hn;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/hn;->a(Landroid/database/Cursor;)V

    .line 279
    if-eqz p3, :cond_0

    .line 280
    invoke-virtual {p1}, Lcom/vungle/publisher/fs;->q()[Lcom/vungle/publisher/eh;

    .line 282
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 260
    check-cast p1, Lcom/vungle/publisher/fs;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/fs$a;->a(Lcom/vungle/publisher/fs;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fs;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;Lcom/vungle/publisher/fr$b;)Lcom/vungle/publisher/fs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;",
            "Lcom/vungle/publisher/fr$b;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/kv$a;->a(Lcom/vungle/publisher/dp;Lcom/vungle/publisher/aej;)Lcom/vungle/publisher/kv;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fs;

    .line 269
    if-eqz v0, :cond_0

    .line 270
    iput-object p3, v0, Lcom/vungle/publisher/fs;->r:Lcom/vungle/publisher/fr$b;

    .line 272
    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/kv;Landroid/database/Cursor;Z)Lcom/vungle/publisher/kv;
    .locals 1

    .prologue
    .line 260
    check-cast p1, Lcom/vungle/publisher/fs;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/fs$a;->a(Lcom/vungle/publisher/fs;Landroid/database/Cursor;Z)Lcom/vungle/publisher/fs;

    move-result-object v0

    return-object v0
.end method
