.class public abstract Lcom/vungle/publisher/ae;
.super Lcom/vungle/publisher/ri;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ad;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/dp;",
        ">",
        "Lcom/vungle/publisher/ri;",
        "Lcom/vungle/publisher/ad",
        "<TA;>;"
    }
.end annotation


# instance fields
.field protected final b:Lcom/vungle/publisher/dp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/dp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/vungle/publisher/ri;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/vungle/publisher/ae;->b:Lcom/vungle/publisher/dp;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/publisher/dp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vungle/publisher/ae;->b:Lcom/vungle/publisher/dp;

    return-object v0
.end method
