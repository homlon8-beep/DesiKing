.class public abstract Lcom/vungle/publisher/aei$a;
.super Lcom/vungle/publisher/acl$c;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Lcom/vungle/publisher/aei",
        "<TQ;>;>",
        "Lcom/vungle/publisher/acl$c",
        "<TQ;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vungle/publisher/acl$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/vungle/publisher/acl;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/vungle/publisher/aei$a;->c()Lcom/vungle/publisher/aei;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/vungle/publisher/aei;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQ;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0}, Lcom/vungle/publisher/acl$c;->a()Lcom/vungle/publisher/acl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aei;

    return-object v0
.end method
