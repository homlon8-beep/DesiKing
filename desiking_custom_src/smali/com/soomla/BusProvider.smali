.class public final Lcom/soomla/BusProvider;
.super Ljava/lang/Object;
.source "BusProvider.java"


# static fields
.field private static final BUS:Lcom/soomla/AndroidBus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/soomla/AndroidBus;

    invoke-direct {v0}, Lcom/soomla/AndroidBus;-><init>()V

    sput-object v0, Lcom/soomla/BusProvider;->BUS:Lcom/soomla/AndroidBus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/soomla/AndroidBus;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/soomla/BusProvider;->BUS:Lcom/soomla/AndroidBus;

    return-object v0
.end method
