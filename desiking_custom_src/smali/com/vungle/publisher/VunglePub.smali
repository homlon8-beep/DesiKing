.class public Lcom/vungle/publisher/VunglePub;
.super Lcom/vungle/publisher/VunglePubBase;
.source "vungle"


# static fields
.field public static final VERSION:Ljava/lang/String; = "VungleDroid/4.0.2"

.field private static final o:Lcom/vungle/publisher/VunglePub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/vungle/publisher/VunglePub;

    invoke-direct {v0}, Lcom/vungle/publisher/VunglePub;-><init>()V

    sput-object v0, Lcom/vungle/publisher/VunglePub;->o:Lcom/vungle/publisher/VunglePub;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vungle/publisher/VunglePub;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/vungle/publisher/VunglePub;->o:Lcom/vungle/publisher/VunglePub;

    return-object v0
.end method


# virtual methods
.method public varargs addEventListeners([Lcom/vungle/publisher/EventListener;)V
    .locals 0
    .param p1, "eventListeners"    # [Lcom/vungle/publisher/EventListener;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/vungle/publisher/VunglePubBase;->addEventListeners([Lcom/vungle/publisher/EventListener;)V

    .line 77
    return-void
.end method

.method public clearEventListeners()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/vungle/publisher/VunglePubBase;->clearEventListeners()V

    .line 85
    return-void
.end method

.method public getDemographic()Lcom/vungle/publisher/Demographic;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/vungle/publisher/VunglePubBase;->getDemographic()Lcom/vungle/publisher/Demographic;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vungleAppId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/VunglePubBase;->init(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public varargs removeEventListeners([Lcom/vungle/publisher/EventListener;)V
    .locals 0
    .param p1, "eventListeners"    # [Lcom/vungle/publisher/EventListener;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/vungle/publisher/VunglePubBase;->removeEventListeners([Lcom/vungle/publisher/EventListener;)V

    .line 106
    return-void
.end method

.method public varargs setEventListeners([Lcom/vungle/publisher/EventListener;)V
    .locals 0
    .param p1, "eventListeners"    # [Lcom/vungle/publisher/EventListener;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/vungle/publisher/VunglePubBase;->setEventListeners([Lcom/vungle/publisher/EventListener;)V

    .line 96
    return-void
.end method
