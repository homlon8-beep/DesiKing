.class public final Lcom/vungle/publisher/adv$a;
.super Lcom/vungle/publisher/adj$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/adv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/adj$a",
        "<",
        "Lcom/vungle/publisher/ie;",
        "Lcom/vungle/publisher/adv;",
        "Lcom/vungle/publisher/ij;",
        "Lcom/vungle/publisher/hy;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/adc$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vungle/publisher/adj$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    new-array v0, p1, [Lcom/vungle/publisher/adv;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/vungle/publisher/adv;

    invoke-direct {v0}, Lcom/vungle/publisher/adv;-><init>()V

    return-object v0
.end method

.method protected final c()Lcom/vungle/publisher/adg$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/adg$a",
            "<",
            "Lcom/vungle/publisher/ie;",
            "**>;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vungle/publisher/adv$a;->g:Lcom/vungle/publisher/adc$a;

    return-object v0
.end method
