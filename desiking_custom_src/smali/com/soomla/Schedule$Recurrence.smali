.class public final enum Lcom/soomla/Schedule$Recurrence;
.super Ljava/lang/Enum;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soomla/Schedule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Recurrence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/soomla/Schedule$Recurrence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/soomla/Schedule$Recurrence;

.field public static final enum EVERY_DAY:Lcom/soomla/Schedule$Recurrence;

.field public static final enum EVERY_HOUR:Lcom/soomla/Schedule$Recurrence;

.field public static final enum EVERY_MONTH:Lcom/soomla/Schedule$Recurrence;

.field public static final enum EVERY_WEEK:Lcom/soomla/Schedule$Recurrence;

.field public static final enum NONE:Lcom/soomla/Schedule$Recurrence;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/soomla/Schedule$Recurrence;

    const-string v1, "EVERY_MONTH"

    invoke-direct {v0, v1, v2}, Lcom/soomla/Schedule$Recurrence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soomla/Schedule$Recurrence;->EVERY_MONTH:Lcom/soomla/Schedule$Recurrence;

    .line 23
    new-instance v0, Lcom/soomla/Schedule$Recurrence;

    const-string v1, "EVERY_WEEK"

    invoke-direct {v0, v1, v3}, Lcom/soomla/Schedule$Recurrence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soomla/Schedule$Recurrence;->EVERY_WEEK:Lcom/soomla/Schedule$Recurrence;

    .line 24
    new-instance v0, Lcom/soomla/Schedule$Recurrence;

    const-string v1, "EVERY_DAY"

    invoke-direct {v0, v1, v4}, Lcom/soomla/Schedule$Recurrence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soomla/Schedule$Recurrence;->EVERY_DAY:Lcom/soomla/Schedule$Recurrence;

    .line 25
    new-instance v0, Lcom/soomla/Schedule$Recurrence;

    const-string v1, "EVERY_HOUR"

    invoke-direct {v0, v1, v5}, Lcom/soomla/Schedule$Recurrence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soomla/Schedule$Recurrence;->EVERY_HOUR:Lcom/soomla/Schedule$Recurrence;

    .line 26
    new-instance v0, Lcom/soomla/Schedule$Recurrence;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/soomla/Schedule$Recurrence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/soomla/Schedule$Recurrence;->NONE:Lcom/soomla/Schedule$Recurrence;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/soomla/Schedule$Recurrence;

    sget-object v1, Lcom/soomla/Schedule$Recurrence;->EVERY_MONTH:Lcom/soomla/Schedule$Recurrence;

    aput-object v1, v0, v2

    sget-object v1, Lcom/soomla/Schedule$Recurrence;->EVERY_WEEK:Lcom/soomla/Schedule$Recurrence;

    aput-object v1, v0, v3

    sget-object v1, Lcom/soomla/Schedule$Recurrence;->EVERY_DAY:Lcom/soomla/Schedule$Recurrence;

    aput-object v1, v0, v4

    sget-object v1, Lcom/soomla/Schedule$Recurrence;->EVERY_HOUR:Lcom/soomla/Schedule$Recurrence;

    aput-object v1, v0, v5

    sget-object v1, Lcom/soomla/Schedule$Recurrence;->NONE:Lcom/soomla/Schedule$Recurrence;

    aput-object v1, v0, v6

    sput-object v0, Lcom/soomla/Schedule$Recurrence;->$VALUES:[Lcom/soomla/Schedule$Recurrence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/soomla/Schedule$Recurrence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/soomla/Schedule$Recurrence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/soomla/Schedule$Recurrence;

    return-object v0
.end method

.method public static values()[Lcom/soomla/Schedule$Recurrence;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/soomla/Schedule$Recurrence;->$VALUES:[Lcom/soomla/Schedule$Recurrence;

    invoke-virtual {v0}, [Lcom/soomla/Schedule$Recurrence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/soomla/Schedule$Recurrence;

    return-object v0
.end method
