.class public final Lcom/vungle/publisher/agy;
.super Ljava/lang/Object;
.source "vungle"


# direct methods
.method public static a([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    if-nez p0, :cond_0

    .line 33
    new-array v0, v0, [Ljava/lang/String;

    .line 39
    :goto_0
    return-object v0

    .line 35
    :cond_0
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/String;

    .line 36
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 37
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 39
    goto :goto_0
.end method
