.class public Lcom/soomla/SoomlaConfig;
.super Ljava/lang/Object;
.source "SoomlaConfig.java"


# static fields
.field public static final DB_DELETE:Z = false

.field public static final DB_INITIALIZED:Ljava/lang/String; = "db_initialized"

.field public static final DB_KEY_PREFIX:Ljava/lang/String; = "soomla."

.field public static final PREFS_NAME:Ljava/lang/String; = "store.prefs"

.field public static SOOMLA_VERSION:I

.field public static logDebug:Z

.field public static final obfuscationSalt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/soomla/SoomlaConfig;->SOOMLA_VERSION:I

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/soomla/SoomlaConfig;->logDebug:Z

    .line 37
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/soomla/SoomlaConfig;->obfuscationSalt:[B

    return-void

    :array_0
    .array-data 1
        0x40t
        -0x36t
        -0x71t
        -0x2ft
        0x62t
        -0x34t
        0x57t
        -0x66t
        -0x41t
        -0x7ft
        0x59t
        0x33t
        -0xbt
        -0x23t
        0x1et
        0x4dt
        -0x2dt
        0x4bt
        -0x1at
        0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
