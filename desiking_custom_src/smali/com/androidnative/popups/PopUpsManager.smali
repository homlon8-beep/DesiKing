.class public Lcom/androidnative/popups/PopUpsManager;
.super Ljava/lang/Object;
.source "PopUpsManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field private static KeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private static currentDialog:Landroid/app/AlertDialog;

.field private static dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private static progress:Landroid/app/ProgressDialog;

.field private static rateDialogListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/androidnative/popups/PopUpsManager;->progress:Landroid/app/ProgressDialog;

    .line 137
    new-instance v0, Lcom/androidnative/popups/PopUpsManager$1;

    invoke-direct {v0}, Lcom/androidnative/popups/PopUpsManager$1;-><init>()V

    sput-object v0, Lcom/androidnative/popups/PopUpsManager;->dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 159
    new-instance v0, Lcom/androidnative/popups/PopUpsManager$2;

    invoke-direct {v0}, Lcom/androidnative/popups/PopUpsManager$2;-><init>()V

    sput-object v0, Lcom/androidnative/popups/PopUpsManager;->KeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 174
    new-instance v0, Lcom/androidnative/popups/PopUpsManager$3;

    invoke-direct {v0}, Lcom/androidnative/popups/PopUpsManager$3;-><init>()V

    sput-object v0, Lcom/androidnative/popups/PopUpsManager;->rateDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 198
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HideCurrentPopup()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/androidnative/popups/PopUpsManager;->currentDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/androidnative/popups/PopUpsManager;->currentDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 97
    :cond_0
    return-void
.end method

.method public static HidePreloader()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "AndroidNative"

    const-string v1, "HidePreloader: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v0, Lcom/androidnative/popups/PopUpsManager;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/androidnative/popups/PopUpsManager;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 133
    :cond_0
    return-void
.end method

.method public static OpenAppRatingPage(Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public static ShowDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "yes"    # Ljava/lang/String;
    .param p3, "no"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "theme":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 51
    const v1, 0x1030239

    .line 56
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    sget-object v2, Lcom/androidnative/popups/PopUpsManager;->dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    sget-object v2, Lcom/androidnative/popups/PopUpsManager;->dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    sget-object v2, Lcom/androidnative/popups/PopUpsManager;->KeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/androidnative/popups/PopUpsManager;->currentDialog:Landroid/app/AlertDialog;

    .line 66
    return-void

    .line 53
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    const v1, 0x103006f

    goto :goto_0
.end method

.method public static ShowMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "ok"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v2, "AndroidNative"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ShowMessage: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v1, 0x0

    .line 30
    .local v1, "theme":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 31
    const v1, 0x1030239

    .line 36
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 38
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 39
    sget-object v2, Lcom/androidnative/popups/PopUpsManager;->dialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    sget-object v2, Lcom/androidnative/popups/PopUpsManager;->KeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 43
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/androidnative/popups/PopUpsManager;->currentDialog:Landroid/app/AlertDialog;

    .line 45
    return-void

    .line 33
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    const v1, 0x103006f

    goto :goto_0
.end method

.method public static ShowPreloader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v1, "AndroidNative"

    const-string v2, "ShowPreloader: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "theme":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 115
    const v0, 0x1030239

    .line 120
    :goto_0
    new-instance v1, Landroid/app/ProgressDialog;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/androidnative/popups/PopUpsManager;->progress:Landroid/app/ProgressDialog;

    .line 121
    sget-object v1, Lcom/androidnative/popups/PopUpsManager;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    sget-object v1, Lcom/androidnative/popups/PopUpsManager;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 123
    sget-object v1, Lcom/androidnative/popups/PopUpsManager;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 124
    sget-object v1, Lcom/androidnative/popups/PopUpsManager;->progress:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 126
    return-void

    .line 117
    :cond_0
    const v0, 0x103006f

    goto :goto_0
.end method

.method public static ShowRateDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "yes"    # Ljava/lang/String;
    .param p3, "laiter"    # Ljava/lang/String;
    .param p4, "no"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, "theme":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 74
    const v1, 0x1030239

    .line 79
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/androidnative/utils/NativeUtility;->GetLauncherActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    sget-object v2, Lcom/androidnative/popups/PopUpsManager;->rateDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    sget-object v2, Lcom/androidnative/popups/PopUpsManager;->rateDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 84
    sget-object v2, Lcom/androidnative/popups/PopUpsManager;->rateDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    sget-object v2, Lcom/androidnative/popups/PopUpsManager;->KeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/androidnative/popups/PopUpsManager;->currentDialog:Landroid/app/AlertDialog;

    .line 91
    return-void

    .line 76
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    const v1, 0x103006f

    goto :goto_0
.end method
