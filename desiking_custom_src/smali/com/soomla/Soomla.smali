.class public Lcom/soomla/Soomla;
.super Ljava/lang/Object;
.source "Soomla.java"


# static fields
.field public static SECRET:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "SOOMLA_SEC"

    sput-object v0, Lcom/soomla/Soomla;->SECRET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Ljava/lang/String;)V
    .locals 0
    .param p0, "secret"    # Ljava/lang/String;

    .prologue
    .line 8
    sput-object p0, Lcom/soomla/Soomla;->SECRET:Ljava/lang/String;

    .line 9
    return-void
.end method
