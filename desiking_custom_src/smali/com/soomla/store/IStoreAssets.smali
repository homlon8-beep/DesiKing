.class public interface abstract Lcom/soomla/store/IStoreAssets;
.super Ljava/lang/Object;
.source "IStoreAssets.java"


# virtual methods
.method public abstract getCategories()[Lcom/soomla/store/domain/VirtualCategory;
.end method

.method public abstract getCurrencies()[Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrency;
.end method

.method public abstract getCurrencyPacks()[Lcom/soomla/store/domain/virtualCurrencies/VirtualCurrencyPack;
.end method

.method public abstract getGoods()[Lcom/soomla/store/domain/virtualGoods/VirtualGood;
.end method

.method public abstract getVersion()I
.end method
