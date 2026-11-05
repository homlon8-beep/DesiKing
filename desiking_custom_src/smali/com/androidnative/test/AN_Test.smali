.class public Lcom/androidnative/test/AN_Test;
.super Ljava/lang/Object;
.source "AN_Test.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StaticFunc()V
    .locals 2

    .prologue
    .line 9
    const-string v0, "AndroidNative"

    const-string v1, "StaticFunc got called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method
