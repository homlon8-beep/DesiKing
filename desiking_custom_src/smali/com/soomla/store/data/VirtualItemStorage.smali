.class public abstract Lcom/soomla/store/data/VirtualItemStorage;
.super Ljava/lang/Object;
.source "VirtualItemStorage.java"


# instance fields
.field protected mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const-string v0, "SOOMLA VirtualItemStorage"

    iput-object v0, p0, Lcom/soomla/store/data/VirtualItemStorage;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)I
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "amount"    # I

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/soomla/store/data/VirtualItemStorage;->add(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/String;IZ)I
    .locals 6
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "amount"    # I
    .param p3, "notify"    # Z

    .prologue
    .line 118
    iget-object v3, p0, Lcom/soomla/store/data/VirtualItemStorage;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/soomla/store/data/VirtualItemStorage;->getBalance(Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "balance":I
    if-gez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 123
    const/4 p2, 0x0

    .line 125
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v4, v0, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "balanceStr":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/soomla/store/data/VirtualItemStorage;->keyBalance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/soomla/data/KeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-eqz p3, :cond_1

    .line 130
    add-int v3, v0, p2

    invoke-virtual {p0, p1, v3, p2}, Lcom/soomla/store/data/VirtualItemStorage;->postBalanceChangeEvent(Ljava/lang/String;II)V

    .line 133
    :cond_1
    add-int v3, v0, p2

    return v3
.end method

.method public getBalance(Ljava/lang/String;)I
    .locals 6
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v3, p0, Lcom/soomla/store/data/VirtualItemStorage;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetching balance for virtual item with itemId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/soomla/store/data/VirtualItemStorage;->keyBalance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lcom/soomla/data/KeyValueStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "val":Ljava/lang/String;
    const/4 v0, 0x0

    .line 48
    .local v0, "balance":I
    if-eqz v2, :cond_0

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/soomla/store/data/VirtualItemStorage;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the balance for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return v0
.end method

.method protected abstract keyBalance(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract postBalanceChangeEvent(Ljava/lang/String;II)V
.end method

.method public remove(Ljava/lang/String;I)I
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "amount"    # I

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/soomla/store/data/VirtualItemStorage;->remove(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;IZ)I
    .locals 6
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "amount"    # I
    .param p3, "notify"    # Z

    .prologue
    .line 157
    iget-object v3, p0, Lcom/soomla/store/data/VirtualItemStorage;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/soomla/store/data/VirtualItemStorage;->getBalance(Ljava/lang/String;)I

    move-result v3

    sub-int v0, v3, p2

    .line 160
    .local v0, "balance":I
    if-gez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 162
    const/4 p2, 0x0

    .line 164
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "balanceStr":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/soomla/store/data/VirtualItemStorage;->keyBalance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/soomla/data/KeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-eqz p3, :cond_1

    .line 169
    mul-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, p1, v0, v3}, Lcom/soomla/store/data/VirtualItemStorage;->postBalanceChangeEvent(Ljava/lang/String;II)V

    .line 172
    :cond_1
    return v0
.end method

.method public setBalance(Ljava/lang/String;I)I
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "balance"    # I

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/soomla/store/data/VirtualItemStorage;->setBalance(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public setBalance(Ljava/lang/String;IZ)I
    .locals 6
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "balance"    # I
    .param p3, "notify"    # Z

    .prologue
    .line 78
    iget-object v3, p0, Lcom/soomla/store/data/VirtualItemStorage;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting balance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/soomla/store/data/VirtualItemStorage;->getBalance(Ljava/lang/String;)I

    move-result v2

    .line 81
    .local v2, "oldBalance":I
    if-ne v2, p2, :cond_1

    .line 94
    :cond_0
    :goto_0
    return p2

    .line 85
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "balanceStr":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/soomla/store/data/VirtualItemStorage;->keyBalance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/soomla/data/KeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-eqz p3, :cond_0

    .line 91
    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/soomla/store/data/VirtualItemStorage;->postBalanceChangeEvent(Ljava/lang/String;II)V

    goto :goto_0
.end method
