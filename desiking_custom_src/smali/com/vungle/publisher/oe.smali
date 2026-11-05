.class public final Lcom/vungle/publisher/oe;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/oe$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/vungle/publisher/a;Lcom/vungle/publisher/oe$a;)Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-interface {p2}, Lcom/vungle/publisher/a;->getIncentivizedCancelDialogTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 31
    invoke-interface {p2}, Lcom/vungle/publisher/a;->getIncentivizedCancelDialogBodyText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 32
    invoke-interface {p2}, Lcom/vungle/publisher/a;->getIncentivizedCancelDialogKeepWatchingButtonText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vungle/publisher/oe$1;

    invoke-direct {v2, p0, p3}, Lcom/vungle/publisher/oe$1;-><init>(Lcom/vungle/publisher/oe;Lcom/vungle/publisher/oe$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    invoke-interface {p2}, Lcom/vungle/publisher/a;->getIncentivizedCancelDialogCloseButtonText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vungle/publisher/oe$2;

    invoke-direct {v2, p0, p3}, Lcom/vungle/publisher/oe$2;-><init>(Lcom/vungle/publisher/oe;Lcom/vungle/publisher/oe$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    new-instance v1, Lcom/vungle/publisher/oe$3;

    invoke-direct {v1, p0, p3}, Lcom/vungle/publisher/oe$3;-><init>(Lcom/vungle/publisher/oe;Lcom/vungle/publisher/oe$a;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
