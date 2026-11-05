.class Lcom/soomla/Schedule$1;
.super Ljava/util/ArrayList;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/Schedule;-><init>(Ljava/util/Date;Ljava/util/Date;Lcom/soomla/Schedule$Recurrence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/soomla/Schedule$DateTimeRange;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/Schedule;

.field final synthetic val$endTime:Ljava/util/Date;

.field final synthetic val$startTime:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/soomla/Schedule;Ljava/util/Date;Ljava/util/Date;)V
    .locals 4

    .prologue
    .line 57
    iput-object p1, p0, Lcom/soomla/Schedule$1;->this$0:Lcom/soomla/Schedule;

    iput-object p2, p0, Lcom/soomla/Schedule$1;->val$startTime:Ljava/util/Date;

    iput-object p3, p0, Lcom/soomla/Schedule$1;->val$endTime:Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/soomla/Schedule$DateTimeRange;

    iget-object v1, p0, Lcom/soomla/Schedule$1;->this$0:Lcom/soomla/Schedule;

    iget-object v2, p0, Lcom/soomla/Schedule$1;->val$startTime:Ljava/util/Date;

    iget-object v3, p0, Lcom/soomla/Schedule$1;->val$endTime:Ljava/util/Date;

    invoke-direct {v0, v1, v2, v3}, Lcom/soomla/Schedule$DateTimeRange;-><init>(Lcom/soomla/Schedule;Ljava/util/Date;Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lcom/soomla/Schedule$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
