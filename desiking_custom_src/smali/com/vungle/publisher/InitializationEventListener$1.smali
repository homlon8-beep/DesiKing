.class final Lcom/vungle/publisher/InitializationEventListener$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/InitializationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/InitializationEventListener;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/InitializationEventListener;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/vungle/publisher/InitializationEventListener$1;->a:Lcom/vungle/publisher/InitializationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$1;->a:Lcom/vungle/publisher/InitializationEventListener;

    iget-object v0, v0, Lcom/vungle/publisher/InitializationEventListener;->e:Lcom/vungle/publisher/InitializationEventListener$b;

    invoke-virtual {v0}, Lcom/vungle/publisher/InitializationEventListener$b;->register()V

    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$1;->a:Lcom/vungle/publisher/InitializationEventListener;

    iget-object v0, v0, Lcom/vungle/publisher/InitializationEventListener;->f:Lcom/vungle/publisher/InitializationEventListener$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/InitializationEventListener$a;->register()V

    .line 104
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$1;->a:Lcom/vungle/publisher/InitializationEventListener;

    iget-object v0, v0, Lcom/vungle/publisher/InitializationEventListener;->g:Lcom/vungle/publisher/rd;

    invoke-virtual {v0, v7}, Lcom/vungle/publisher/rd;->a(Z)V

    .line 105
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$1;->a:Lcom/vungle/publisher/InitializationEventListener;

    iget-object v0, v0, Lcom/vungle/publisher/InitializationEventListener;->d:Lcom/vungle/publisher/agi;

    iget-object v1, v0, Lcom/vungle/publisher/agi;->b:Lcom/vungle/publisher/dw$b;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "status"

    sget-object v4, Lcom/vungle/publisher/dw$c;->d:Lcom/vungle/publisher/dw$c;

    invoke-virtual {v4}, Lcom/vungle/publisher/dw$c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/vungle/publisher/dw$b;->a:Lcom/vungle/publisher/dl;

    invoke-virtual {v1}, Lcom/vungle/publisher/dl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "ad_report"

    const-string v4, "status = ?"

    new-array v5, v7, [Ljava/lang/String;

    sget-object v6, Lcom/vungle/publisher/dw$c;->c:Lcom/vungle/publisher/dw$c;

    invoke-virtual {v6}, Lcom/vungle/publisher/dw$c;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, v0, Lcom/vungle/publisher/agi;->g:Lcom/vungle/publisher/rd;

    iget-object v1, v1, Lcom/vungle/publisher/rd;->l:Landroid/content/SharedPreferences;

    const-string v2, "IsVgAppInstalled"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VungleReport"

    const-string v2, "install already reported"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/vungle/publisher/agi;->a()V

    .line 106
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$1;->a:Lcom/vungle/publisher/InitializationEventListener;

    iget-object v6, v0, Lcom/vungle/publisher/InitializationEventListener;->a:Lcom/vungle/publisher/b;

    iget-object v0, v6, Lcom/vungle/publisher/b;->o:Lcom/vungle/publisher/kv$b;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    sget-object v3, Lcom/vungle/publisher/fr$a;->a:Lcom/vungle/publisher/fr$a;

    invoke-virtual {v3}, Lcom/vungle/publisher/fr$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vungle/publisher/kv$b;->a:Lcom/vungle/publisher/dl;

    invoke-virtual {v0}, Lcom/vungle/publisher/dl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "viewable"

    const-string v3, "status IN(?,?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Lcom/vungle/publisher/fr$a;->b:Lcom/vungle/publisher/fr$a;

    invoke-virtual {v5}, Lcom/vungle/publisher/fr$a;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    sget-object v5, Lcom/vungle/publisher/fr$a;->c:Lcom/vungle/publisher/fr$a;

    invoke-virtual {v5}, Lcom/vungle/publisher/fr$a;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updated "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/vungle/publisher/fr$a;->c:Lcom/vungle/publisher/fr$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " viewables to status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/vungle/publisher/fr$a;->a:Lcom/vungle/publisher/fr$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/vungle/publisher/b;->b(Z)V

    iget-object v0, v6, Lcom/vungle/publisher/b;->j:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/b$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/b$a;->register()V

    .line 107
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$1;->a:Lcom/vungle/publisher/InitializationEventListener;

    iget-object v0, v0, Lcom/vungle/publisher/InitializationEventListener;->c:Lcom/vungle/publisher/zb;

    invoke-virtual {v0}, Lcom/vungle/publisher/zb;->a()V

    .line 108
    return-void

    .line 105
    :cond_0
    const-string v1, "VungleReport"

    const-string v2, "reporting install"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/vungle/publisher/agi;->f:Lcom/vungle/publisher/zb;

    new-instance v2, Lcom/vungle/publisher/yu;

    invoke-direct {v2}, Lcom/vungle/publisher/yu;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/zb;->c(Lcom/vungle/publisher/yu;)V

    goto/16 :goto_0
.end method
