.class public interface abstract Lcom/soomla/store/billing/IabCallbacks$OnConsumeListener;
.super Ljava/lang/Object;
.source "IabCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/store/billing/IabCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConsumeListener"
.end annotation


# virtual methods
.method public abstract fail(Ljava/lang/String;)V
.end method

.method public abstract success(Lcom/soomla/store/billing/IabPurchase;)V
.end method
