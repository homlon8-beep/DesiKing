.class Lcom/soomla/store/SoomlaStore$6;
.super Ljava/util/HashMap;
.source "SoomlaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/store/SoomlaStore;->handleSuccessfulPurchase(Lcom/soomla/store/billing/IabPurchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/store/SoomlaStore;

.field final synthetic val$orderId:Ljava/lang/String;

.field final synthetic val$originalJson:Ljava/lang/String;

.field final synthetic val$signature:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/soomla/store/SoomlaStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 543
    iput-object p1, p0, Lcom/soomla/store/SoomlaStore$6;->this$0:Lcom/soomla/store/SoomlaStore;

    iput-object p2, p0, Lcom/soomla/store/SoomlaStore$6;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/soomla/store/SoomlaStore$6;->val$orderId:Ljava/lang/String;

    iput-object p4, p0, Lcom/soomla/store/SoomlaStore$6;->val$originalJson:Ljava/lang/String;

    iput-object p5, p0, Lcom/soomla/store/SoomlaStore$6;->val$signature:Ljava/lang/String;

    iput-object p6, p0, Lcom/soomla/store/SoomlaStore$6;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 544
    const-string v0, "token"

    iget-object v1, p0, Lcom/soomla/store/SoomlaStore$6;->val$token:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/soomla/store/SoomlaStore$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v0, "orderId"

    iget-object v1, p0, Lcom/soomla/store/SoomlaStore$6;->val$orderId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/soomla/store/SoomlaStore$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v0, "originalJson"

    iget-object v1, p0, Lcom/soomla/store/SoomlaStore$6;->val$originalJson:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/soomla/store/SoomlaStore$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v0, "signature"

    iget-object v1, p0, Lcom/soomla/store/SoomlaStore$6;->val$signature:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/soomla/store/SoomlaStore$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string v0, "userId"

    iget-object v1, p0, Lcom/soomla/store/SoomlaStore$6;->val$userId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/soomla/store/SoomlaStore$6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    return-void
.end method
