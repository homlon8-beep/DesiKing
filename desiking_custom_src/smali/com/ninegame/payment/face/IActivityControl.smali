.class public interface abstract Lcom/ninegame/payment/face/IActivityControl;
.super Ljava/lang/Object;


# virtual methods
.method public abstract finish()V
.end method

.method public abstract getAssets()Landroid/content/res/AssetManager;
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getSystemService(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract isFinishing()Z
.end method

.method public abstract managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
.end method

.method public abstract runOnUiThread(Ljava/lang/Runnable;)V
.end method

.method public abstract setListener(Lcom/ninegame/payment/face/listener/CallbackListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ninegame/payment/face/listener/CallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterReceiver(Landroid/content/BroadcastReceiver;)V
.end method
