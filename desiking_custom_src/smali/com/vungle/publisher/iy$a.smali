.class public final Lcom/vungle/publisher/iy$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:[Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:[Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/vungle/publisher/iy$a;->c:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/publisher/iy$a;->d:[Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/vungle/publisher/iy$a;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/iy$a;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/iy$a;->c:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public final a([Ljava/lang/String;)Lcom/vungle/publisher/iy$a;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 91
    new-array v5, v7, [[Ljava/lang/String;

    iget-object v0, p0, Lcom/vungle/publisher/iy$a;->d:[Ljava/lang/String;

    aput-object v0, v5, v3

    const/4 v0, 0x1

    aput-object p1, v5, v0

    move v4, v3

    move-object v0, v2

    move v1, v3

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v6, v5, v4

    if-eqz v6, :cond_0

    array-length v0, v6

    add-int/2addr v1, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move v1, v3

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_4

    aget-object v4, v5, v2

    if-eqz v4, :cond_2

    array-length v6, v4

    invoke-static {v4, v3, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    add-int/2addr v1, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    :cond_4
    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/publisher/iy$a;->d:[Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public final a()Lcom/vungle/publisher/iy;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/vungle/publisher/iy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vungle/publisher/iy;-><init>(Lcom/vungle/publisher/iy$a;B)V

    return-object v0
.end method
