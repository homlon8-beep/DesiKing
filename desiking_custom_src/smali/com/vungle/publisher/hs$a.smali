.class public final Lcom/vungle/publisher/hs$a;
.super Lcom/vungle/publisher/er$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/hs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/er$a",
        "<",
        "Lcom/vungle/publisher/hs;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/qs;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/ra;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/hs;",
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
    .line 138
    invoke-direct {p0}, Lcom/vungle/publisher/er$a;-><init>()V

    return-void
.end method

.method private a()Lcom/vungle/publisher/hs;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/vungle/publisher/hs$a;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hs;

    return-object v0
.end method

.method private static a(Lcom/vungle/publisher/hs;Landroid/database/Cursor;)Lcom/vungle/publisher/hs;
    .locals 4

    .prologue
    .line 181
    const-string v0, "insert_timestamp_millis"

    invoke-static {p1, v0}, Lcom/vungle/publisher/dh;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/publisher/hs;->a:J

    .line 182
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/vungle/publisher/dh;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vungle/publisher/hs;->c:I

    .line 183
    const-string v0, "tag"

    invoke-static {p1, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/hs;->d:Ljava/lang/String;

    .line 184
    const-string v0, "log_message"

    invoke-static {p1, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/hs;->e:Ljava/lang/String;

    .line 185
    const-string v0, "class"

    invoke-static {p1, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/hs;->f:Ljava/lang/String;

    .line 186
    const-string v0, "android_version"

    invoke-static {p1, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/hs;->g:Ljava/lang/String;

    .line 187
    const-string v0, "sdk_version"

    invoke-static {p1, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/hs;->h:Ljava/lang/String;

    .line 188
    const-string v0, "play_services_version"

    invoke-static {p1, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/hs;->i:Ljava/lang/String;

    .line 189
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/vungle/publisher/dh;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/hs;->t:Ljava/lang/Object;

    .line 191
    :try_start_0
    const-string v0, "stack_trace"

    invoke-static {p1, v0}, Lcom/vungle/publisher/dh;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    iput-object v0, p0, Lcom/vungle/publisher/hs;->b:[Ljava/lang/String;

    .line 195
    :goto_0
    return-object p0

    .line 191
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string v1, "VungleDatabase"

    const-string v2, "could not parse stack trace string"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 149
    invoke-static {p2, p3, p4}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    iget-object v0, p0, Lcom/vungle/publisher/hs$a;->b:Lcom/vungle/publisher/ra;

    invoke-virtual {v0}, Lcom/vungle/publisher/ra;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/vungle/publisher/hs$a;->h()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    .line 152
    invoke-direct {p0}, Lcom/vungle/publisher/hs$a;->a()Lcom/vungle/publisher/hs;

    move-result-object v2

    iput-object p2, v2, Lcom/vungle/publisher/hs;->d:Ljava/lang/String;

    iput-object p3, v2, Lcom/vungle/publisher/hs;->e:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/vungle/publisher/hs;->f:Ljava/lang/String;

    iput p1, v2, Lcom/vungle/publisher/hs;->c:I

    iget-object v0, p0, Lcom/vungle/publisher/hs$a;->a:Lcom/vungle/publisher/qs;

    invoke-interface {v0}, Lcom/vungle/publisher/qs;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/vungle/publisher/hs;->g:Ljava/lang/String;

    const-string v0, "VungleDroid/4.0.2"

    iput-object v0, v2, Lcom/vungle/publisher/hs;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/vungle/publisher/hs$a;->a:Lcom/vungle/publisher/qs;

    invoke-interface {v0}, Lcom/vungle/publisher/qs;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/vungle/publisher/hs;->i:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v0, v3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    iput-object v0, v2, Lcom/vungle/publisher/hs;->b:[Ljava/lang/String;

    .line 153
    invoke-virtual {v2}, Lcom/vungle/publisher/hs;->v()Ljava/lang/Object;

    .line 158
    :cond_2
    :goto_1
    return-void

    .line 155
    :cond_3
    const-string v0, "could not insert logged exception... too many already!"

    invoke-static {p2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/List;)I
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/vungle/publisher/er$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/er;Landroid/database/Cursor;)Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 122
    check-cast p1, Lcom/vungle/publisher/hs;

    invoke-static {p1, p2}, Lcom/vungle/publisher/hs$a;->a(Lcom/vungle/publisher/hs;Landroid/database/Cursor;)Lcom/vungle/publisher/hs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/er$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/vungle/publisher/hs$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 122
    new-array v0, p1, [Lcom/vungle/publisher/hs;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/vungle/publisher/hs$a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 122
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "logged_exceptions"

    return-object v0
.end method

.method public final bridge synthetic c(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/vungle/publisher/er$a;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/er;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/vungle/publisher/hs$a;->a()Lcom/vungle/publisher/hs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j_()Ljava/util/List;
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/vungle/publisher/er$a;->j_()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
