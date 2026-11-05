.class public interface abstract Lcom/soomla/store/billing/IabCallbacks$OnFetchSkusDetailsListener;
.super Ljava/lang/Object;
.source "IabCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/store/billing/IabCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFetchSkusDetailsListener"
.end annotation


# virtual methods
.method public abstract fail(Ljava/lang/String;)V
.end method

.method public abstract success(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/billing/IabSkuDetails;",
            ">;)V"
        }
    .end annotation
.end method
