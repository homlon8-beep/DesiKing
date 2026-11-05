.class public Lcom/soomla/util/AESObfuscator$ValidationException;
.super Ljava/lang/Exception;
.source "AESObfuscator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/util/AESObfuscator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ValidationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/soomla/util/AESObfuscator;


# direct methods
.method public constructor <init>(Lcom/soomla/util/AESObfuscator;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/soomla/util/AESObfuscator$ValidationException;->this$0:Lcom/soomla/util/AESObfuscator;

    .line 163
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/soomla/util/AESObfuscator;Ljava/lang/String;)V
    .locals 0
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/soomla/util/AESObfuscator$ValidationException;->this$0:Lcom/soomla/util/AESObfuscator;

    .line 167
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 168
    return-void
.end method
