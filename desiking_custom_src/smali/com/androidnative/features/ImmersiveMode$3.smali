.class Lcom/androidnative/features/ImmersiveMode$3;
.super Ljava/lang/Object;
.source "ImmersiveMode.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnative/features/ImmersiveMode;->UiChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 99
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    .line 100
    invoke-static {}, Lcom/androidnative/features/ImmersiveMode;->access$1()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/androidnative/features/ImmersiveMode;->access$2()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/androidnative/features/ImmersiveMode;->access$3()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/androidnative/features/ImmersiveMode;->access$4(Z)V

    .line 102
    invoke-static {}, Lcom/androidnative/features/ImmersiveMode;->access$5()V

    .line 107
    :goto_0
    const-string v0, "AndroidNative"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UiChangeListener isSystemUiShown: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/androidnative/features/ImmersiveMode;->access$6()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/androidnative/features/ImmersiveMode;->access$4(Z)V

    goto :goto_0
.end method
