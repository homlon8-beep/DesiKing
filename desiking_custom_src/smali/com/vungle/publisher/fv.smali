.class public final Lcom/vungle/publisher/fv;
.super Lcom/vungle/publisher/fs;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/fv$1;,
        Lcom/vungle/publisher/fv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/fs",
        "<",
        "Lcom/vungle/publisher/fu;",
        "Lcom/vungle/publisher/fv;",
        ">;"
    }
.end annotation


# instance fields
.field h:Lcom/vungle/publisher/fu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/fv$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Lcom/vungle/publisher/mm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vungle/publisher/fs;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a_()Lcom/vungle/publisher/er$a;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/vungle/publisher/fv;->i:Lcom/vungle/publisher/fv$a;

    return-object v0
.end method

.method protected final bridge synthetic r()Lcom/vungle/publisher/dp$a;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/vungle/publisher/fv;->h:Lcom/vungle/publisher/fu$a;

    return-object v0
.end method
