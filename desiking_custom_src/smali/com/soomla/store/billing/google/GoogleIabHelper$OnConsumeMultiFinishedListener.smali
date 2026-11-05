.class public interface abstract Lcom/soomla/store/billing/google/GoogleIabHelper$OnConsumeMultiFinishedListener;
.super Ljava/lang/Object;
.source "GoogleIabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/store/billing/google/GoogleIabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConsumeMultiFinishedListener"
.end annotation


# virtual methods
.method public abstract onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/billing/IabPurchase;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/store/billing/IabResult;",
            ">;)V"
        }
    .end annotation
.end method
