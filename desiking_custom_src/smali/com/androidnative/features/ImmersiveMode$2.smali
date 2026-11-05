.class Lcom/androidnative/features/ImmersiveMode$2;
.super Ljava/lang/Object;
.source "ImmersiveMode.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnative/features/ImmersiveMode;->enableImmersiveMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 50
    invoke-static {p1}, Lcom/androidnative/features/ImmersiveMode;->onWindowFocusChanged(Z)V

    .line 51
    return-void
.end method
