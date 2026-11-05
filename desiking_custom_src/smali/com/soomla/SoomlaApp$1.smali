.class Lcom/soomla/SoomlaApp$1;
.super Ljava/lang/Object;
.source "SoomlaApp.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/soomla/SoomlaApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/soomla/SoomlaApp;


# direct methods
.method constructor <init>(Lcom/soomla/SoomlaApp;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/soomla/SoomlaApp$1;->this$0:Lcom/soomla/SoomlaApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    invoke-static {}, Lcom/soomla/BusProvider;->getInstance()Lcom/soomla/AndroidBus;

    move-result-object v0

    new-instance v1, Lcom/soomla/events/AppToBackgroundEvent;

    invoke-direct {v1}, Lcom/soomla/events/AppToBackgroundEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/soomla/AndroidBus;->post(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/soomla/SoomlaApp$1;->this$0:Lcom/soomla/SoomlaApp;

    invoke-static {v0}, Lcom/soomla/SoomlaApp;->access$000(Lcom/soomla/SoomlaApp;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 59
    return-void
.end method
