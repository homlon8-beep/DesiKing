.class public final Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;
.super Ljava/lang/Object;
.source "MoPubExtras.java"

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# instance fields
.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;->eraseExtras()Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;

    .line 46
    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-object p0
.end method

.method public eraseExtras()Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;->mExtras:Ljava/util/Map;

    .line 50
    return-object p0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;->mExtras:Ljava/util/Map;

    return-object v0
.end method

.method public setExtras(Ljava/util/Map;)Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Extras cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/MoPubExtras;->mExtras:Ljava/util/Map;

    .line 62
    return-object p0
.end method
