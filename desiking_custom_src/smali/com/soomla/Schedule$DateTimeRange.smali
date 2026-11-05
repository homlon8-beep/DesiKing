.class public Lcom/soomla/Schedule$DateTimeRange;
.super Ljava/lang/Object;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/Schedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateTimeRange"
.end annotation


# instance fields
.field public End:Ljava/util/Date;

.field public Start:Ljava/util/Date;

.field final synthetic this$0:Lcom/soomla/Schedule;


# direct methods
.method public constructor <init>(Lcom/soomla/Schedule;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .param p2, "start"    # Ljava/util/Date;
    .param p3, "end"    # Ljava/util/Date;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/soomla/Schedule$DateTimeRange;->this$0:Lcom/soomla/Schedule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/soomla/Schedule$DateTimeRange;->Start:Ljava/util/Date;

    .line 34
    iput-object p3, p0, Lcom/soomla/Schedule$DateTimeRange;->End:Ljava/util/Date;

    .line 35
    return-void
.end method
