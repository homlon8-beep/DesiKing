.class Lcom/soomla/AndroidBus$3;
.super Ljava/lang/Object;
.source "AndroidBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/AndroidBus;->unregister(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/AndroidBus;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/soomla/AndroidBus;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/soomla/AndroidBus$3;->this$0:Lcom/soomla/AndroidBus;

    iput-object p2, p0, Lcom/soomla/AndroidBus$3;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/soomla/AndroidBus$3;->this$0:Lcom/soomla/AndroidBus;

    iget-object v1, p0, Lcom/soomla/AndroidBus$3;->val$object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->unregister(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
