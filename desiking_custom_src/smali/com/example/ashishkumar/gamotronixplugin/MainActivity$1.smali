.class final Lcom/example/ashishkumar/gamotronixplugin/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/ashishkumar/gamotronixplugin/MainActivity;->PlayStoreVersion()F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field str:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const-string v0, ""

    iput-object v0, p0, Lcom/example/ashishkumar/gamotronixplugin/MainActivity$1;->str:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 263
    :try_start_0
    const-string v3, "https://play.google.com/store/apps/details?id=com.fingersoft.hillclimb&hl=en"

    invoke-static {v3}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v3

    invoke-interface {v3}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 264
    .local v0, "doc":Lorg/jsoup/nodes/Document;
    const-string v3, ""

    iput-object v3, p0, Lcom/example/ashishkumar/gamotronixplugin/MainActivity$1;->str:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0    # "doc":Lorg/jsoup/nodes/Document;
    :goto_0
    iget-object v2, p0, Lcom/example/ashishkumar/gamotronixplugin/MainActivity$1;->str:Ljava/lang/String;

    .line 269
    .local v2, "finalStr":Ljava/lang/String;
    return-void

    .line 265
    .end local v2    # "finalStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, ","

    iput-object v3, p0, Lcom/example/ashishkumar/gamotronixplugin/MainActivity$1;->str:Ljava/lang/String;

    goto :goto_0
.end method
