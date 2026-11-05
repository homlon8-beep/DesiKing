.class Lcom/soomla/AndroidBus$1;
.super Ljava/lang/Object;
.source "AndroidBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/AndroidBus;

.field final synthetic val$event:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/soomla/AndroidBus;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/soomla/AndroidBus$1;->this$0:Lcom/soomla/AndroidBus;

    iput-object p2, p0, Lcom/soomla/AndroidBus$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/soomla/AndroidBus$1;->this$0:Lcom/soomla/AndroidBus;

    iget-object v1, p0, Lcom/soomla/AndroidBus$1;->val$event:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 44
    return-void
.end method
