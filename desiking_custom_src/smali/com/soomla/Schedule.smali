.class public Lcom/soomla/Schedule;
.super Ljava/lang/Object;
.source "Schedule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soomla/Schedule$DateTimeRange;,
        Lcom/soomla/Schedule$Recurrence;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public mActivationLimit:I

.field public mRequiredRecurrence:Lcom/soomla/Schedule$Recurrence;

.field public mTimeRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/soomla/Schedule$DateTimeRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "SOOMLA Schedule"

    sput-object v0, Lcom/soomla/Schedule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "activationLimit"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    sget-object v1, Lcom/soomla/Schedule$Recurrence;->NONE:Lcom/soomla/Schedule$Recurrence;

    invoke-direct {p0, v0, v1, p1}, Lcom/soomla/Schedule;-><init>(Ljava/util/List;Lcom/soomla/Schedule$Recurrence;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Lcom/soomla/Schedule$Recurrence;I)V
    .locals 1
    .param p1, "startTime"    # Ljava/util/Date;
    .param p2, "endTime"    # Ljava/util/Date;
    .param p3, "recurrence"    # Lcom/soomla/Schedule$Recurrence;
    .param p4, "activationLimit"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/soomla/Schedule$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/soomla/Schedule$1;-><init>(Lcom/soomla/Schedule;Ljava/util/Date;Ljava/util/Date;)V

    .line 58
    .local v0, "ranges":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/Schedule$DateTimeRange;>;"
    iput-object v0, p0, Lcom/soomla/Schedule;->mTimeRanges:Ljava/util/List;

    .line 60
    iput-object p3, p0, Lcom/soomla/Schedule;->mRequiredRecurrence:Lcom/soomla/Schedule$Recurrence;

    .line 61
    iput p4, p0, Lcom/soomla/Schedule;->mActivationLimit:I

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/soomla/Schedule$Recurrence;I)V
    .locals 0
    .param p2, "recurrence"    # Lcom/soomla/Schedule$Recurrence;
    .param p3, "activationLimit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/Schedule$DateTimeRange;",
            ">;",
            "Lcom/soomla/Schedule$Recurrence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "timeRanges":Ljava/util/List;, "Ljava/util/List<Lcom/soomla/Schedule$DateTimeRange;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/soomla/Schedule;->mTimeRanges:Ljava/util/List;

    .line 68
    iput-object p2, p0, Lcom/soomla/Schedule;->mRequiredRecurrence:Lcom/soomla/Schedule$Recurrence;

    .line 69
    iput p3, p0, Lcom/soomla/Schedule;->mActivationLimit:I

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jsonSched"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v6, "schedRecurrence"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    invoke-static {}, Lcom/soomla/Schedule$Recurrence;->values()[Lcom/soomla/Schedule$Recurrence;

    move-result-object v6

    const-string v7, "schedRecurrence"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/soomla/Schedule;->mRequiredRecurrence:Lcom/soomla/Schedule$Recurrence;

    .line 80
    :goto_0
    const-string v6, "schedApprovals"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/soomla/Schedule;->mActivationLimit:I

    .line 82
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/soomla/Schedule;->mTimeRanges:Ljava/util/List;

    .line 83
    const-string v6, "schedTimeRanges"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 84
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/soomla/Schedule;->mTimeRanges:Ljava/util/List;

    .line 85
    const-string v6, "schedTimeRanges"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 86
    .local v2, "rangesObjs":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 87
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "schedTimeRangeStart"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 88
    .local v4, "tmpTimeMillis":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 89
    .local v3, "start":Ljava/util/Date;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "schedTimeRangeEnd"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 90
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 92
    .local v0, "end":Ljava/util/Date;
    iget-object v6, p0, Lcom/soomla/Schedule;->mTimeRanges:Ljava/util/List;

    new-instance v7, Lcom/soomla/Schedule$DateTimeRange;

    invoke-direct {v7, p0, v3, v0}, Lcom/soomla/Schedule$DateTimeRange;-><init>(Lcom/soomla/Schedule;Ljava/util/Date;Ljava/util/Date;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    .end local v0    # "end":Ljava/util/Date;
    .end local v1    # "i":I
    .end local v2    # "rangesObjs":Lorg/json/JSONArray;
    .end local v3    # "start":Ljava/util/Date;
    .end local v4    # "tmpTimeMillis":J
    :cond_0
    sget-object v6, Lcom/soomla/Schedule$Recurrence;->NONE:Lcom/soomla/Schedule$Recurrence;

    iput-object v6, p0, Lcom/soomla/Schedule;->mRequiredRecurrence:Lcom/soomla/Schedule$Recurrence;

    goto :goto_0

    .line 95
    :cond_1
    return-void
.end method

.method public static AnyTimeLimited(I)Lcom/soomla/Schedule;
    .locals 1
    .param p0, "activationLimit"    # I

    .prologue
    .line 43
    new-instance v0, Lcom/soomla/Schedule;

    invoke-direct {v0, p0}, Lcom/soomla/Schedule;-><init>(I)V

    return-object v0
.end method

.method public static AnyTimeOnce()Lcom/soomla/Schedule;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/soomla/Schedule;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/soomla/Schedule;-><init>(I)V

    return-object v0
.end method

.method public static AnyTimeUnLimited()Lcom/soomla/Schedule;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/soomla/Schedule;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/soomla/Schedule;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public approve(I)Z
    .locals 13
    .param p1, "activationTimes"    # I

    .prologue
    const/16 v12, 0xc

    const/16 v11, 0xa

    const/4 v10, 0x7

    const/4 v9, 0x5

    const/4 v6, 0x1

    .line 131
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 133
    .local v3, "now":Ljava/util/Date;
    iget v7, p0, Lcom/soomla/Schedule;->mActivationLimit:I

    if-ge v7, v6, :cond_1

    iget-object v7, p0, Lcom/soomla/Schedule;->mTimeRanges:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/soomla/Schedule;->mTimeRanges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 134
    :cond_0
    sget-object v7, Lcom/soomla/Schedule;->TAG:Ljava/lang/String;

    const-string v8, "There\'s no activation limit and no TimeRanges. APPROVED!"

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    return v6

    .line 138
    :cond_1
    iget v7, p0, Lcom/soomla/Schedule;->mActivationLimit:I

    if-lez v7, :cond_2

    iget v7, p0, Lcom/soomla/Schedule;->mActivationLimit:I

    if-lt p1, v7, :cond_2

    .line 139
    sget-object v6, Lcom/soomla/Schedule;->TAG:Ljava/lang/String;

    const-string v7, "Activation limit exceeded."

    invoke-static {v6, v7}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v6, 0x0

    goto :goto_0

    .line 143
    :cond_2
    iget-object v7, p0, Lcom/soomla/Schedule;->mTimeRanges:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/soomla/Schedule;->mTimeRanges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 144
    :cond_3
    sget-object v7, Lcom/soomla/Schedule;->TAG:Ljava/lang/String;

    const-string v8, "We have an activation limit that was not reached. Also, we don\'t have any time ranges. APPROVED!"

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_4
    iget-object v7, p0, Lcom/soomla/Schedule;->mTimeRanges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soomla/Schedule$DateTimeRange;

    .line 154
    .local v0, "dtr":Lcom/soomla/Schedule$DateTimeRange;
    iget-object v7, v0, Lcom/soomla/Schedule$DateTimeRange;->Start:Ljava/util/Date;

    invoke-virtual {v3, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/soomla/Schedule$DateTimeRange;->End:Ljava/util/Date;

    invoke-virtual {v3, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 155
    sget-object v7, Lcom/soomla/Schedule;->TAG:Ljava/lang/String;

    const-string v8, "We are just in one of the time spans, it can\'t get any better then that. APPROVED!"

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    .end local v0    # "dtr":Lcom/soomla/Schedule$DateTimeRange;
    :cond_6
    iget-object v7, p0, Lcom/soomla/Schedule;->mRequiredRecurrence:Lcom/soomla/Schedule$Recurrence;

    sget-object v8, Lcom/soomla/Schedule$Recurrence;->NONE:Lcom/soomla/Schedule$Recurrence;

    if-ne v7, v8, :cond_7

    .line 162
    const/4 v6, 0x0

    goto :goto_0

    .line 165
    :cond_7
    iget-object v7, p0, Lcom/soomla/Schedule;->mTimeRanges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soomla/Schedule$DateTimeRange;

    .line 166
    .restart local v0    # "dtr":Lcom/soomla/Schedule$DateTimeRange;
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    .line 167
    .local v4, "nowCalendar":Ljava/util/Calendar;
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 168
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    .line 169
    .local v5, "startCalendar":Ljava/util/Calendar;
    iget-object v7, v0, Lcom/soomla/Schedule$DateTimeRange;->Start:Ljava/util/Date;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 170
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 171
    .local v1, "endCalendar":Ljava/util/Calendar;
    iget-object v7, v0, Lcom/soomla/Schedule$DateTimeRange;->End:Ljava/util/Date;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 172
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-lt v7, v8, :cond_8

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-gt v7, v8, :cond_8

    .line 174
    sget-object v7, Lcom/soomla/Schedule;->TAG:Ljava/lang/String;

    const-string v8, "Now is in one of the time ranges\' minutes span."

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v7, p0, Lcom/soomla/Schedule;->mRequiredRecurrence:Lcom/soomla/Schedule$Recurrence;

    sget-object v8, Lcom/soomla/Schedule$Recurrence;->EVERY_HOUR:Lcom/soomla/Schedule$Recurrence;

    if-ne v7, v8, :cond_9

    .line 177
    sget-object v7, Lcom/soomla/Schedule;->TAG:Ljava/lang/String;

    const-string v8, "It\'s a EVERY_HOUR recurrence. APPROVED!"

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_9
    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-lt v7, v8, :cond_8

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-gt v7, v8, :cond_8

    .line 183
    sget-object v7, Lcom/soomla/Schedule;->TAG:Ljava/lang/String;

    const-string v8, "Now is in one of the time ranges\' hours span."

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v7, p0, Lcom/soomla/Schedule;->mRequiredRecurrence:Lcom/soomla/Schedule$Recurrence;

    sget-object v8, Lcom/soomla/Schedule$Recurrence;->EVERY_DAY:Lcom/soomla/Schedule$Recurrence;

    if-ne v7, v8, :cond_a

    .line 186
    sget-object v7, Lcom/soomla/Schedule;->TAG:Ljava/lang/String;

    const-string v8, "It\'s a EVERY_DAY recurrence. APPROVED!"

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 190
    :cond_a
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-lt v7, v8, :cond_8

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-gt v7, v8, :cond_8

    .line 192
    sget-object v7, Lcom/soomla/Schedule;->TAG:Ljava/lang/String;

    const-string v8, "Now is in one of the time ranges\' day-of-week span."

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v7, p0, Lcom/soomla/Schedule;->mRequiredRecurrence:Lcom/soomla/Schedule$Recurrence;

    sget-object v8, Lcom/soomla/Schedule$Recurrence;->EVERY_WEEK:Lcom/soomla/Schedule$Recurrence;

    if-ne v7, v8, :cond_b

    .line 195
    sget-object v7, Lcom/soomla/Schedule;->TAG:Ljava/lang/String;

    const-string v8, "It\'s a EVERY_WEEK recurrence. APPROVED!"

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :cond_b
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-lt v7, v8, :cond_8

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-gt v7, v8, :cond_8

    .line 201
    sget-object v7, Lcom/soomla/Schedule;->TAG:Ljava/lang/String;

    const-string v8, "Now is in one of the time ranges\' days span."

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v7, p0, Lcom/soomla/Schedule;->mRequiredRecurrence:Lcom/soomla/Schedule$Recurrence;

    sget-object v8, Lcom/soomla/Schedule$Recurrence;->EVERY_MONTH:Lcom/soomla/Schedule$Recurrence;

    if-ne v7, v8, :cond_8

    .line 204
    sget-object v7, Lcom/soomla/Schedule;->TAG:Ljava/lang/String;

    const-string v8, "It\'s a EVERY_MONTH recurrence. APPROVED!"

    invoke-static {v7, v8}, Lcom/soomla/SoomlaUtils;->LogDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    .end local v0    # "dtr":Lcom/soomla/Schedule$DateTimeRange;
    .end local v1    # "endCalendar":Ljava/util/Calendar;
    .end local v4    # "nowCalendar":Ljava/util/Calendar;
    .end local v5    # "startCalendar":Ljava/util/Calendar;
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public getActivationLimit()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/soomla/Schedule;->mActivationLimit:I

    return v0
.end method

.method public getRequiredRecurrence()Lcom/soomla/Schedule$Recurrence;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/soomla/Schedule;->mRequiredRecurrence:Lcom/soomla/Schedule$Recurrence;

    return-object v0
.end method

.method public getTimeRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/soomla/Schedule$DateTimeRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/soomla/Schedule;->mTimeRanges:Ljava/util/List;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 12

    .prologue
    .line 98
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v10, p0, Lcom/soomla/Schedule;->mRequiredRecurrence:Lcom/soomla/Schedule$Recurrence;

    if-eqz v10, :cond_0

    .line 102
    const-string v10, "schedRecurrence"

    iget-object v11, p0, Lcom/soomla/Schedule;->mRequiredRecurrence:Lcom/soomla/Schedule$Recurrence;

    invoke-virtual {v11}, Lcom/soomla/Schedule$Recurrence;->ordinal()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    :cond_0
    iget-object v10, p0, Lcom/soomla/Schedule;->mTimeRanges:Ljava/util/List;

    if-eqz v10, :cond_2

    .line 106
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 107
    .local v7, "rangesObjs":Lorg/json/JSONArray;
    iget-object v10, p0, Lcom/soomla/Schedule;->mTimeRanges:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/soomla/Schedule$DateTimeRange;

    .line 108
    .local v5, "range":Lcom/soomla/Schedule$DateTimeRange;
    iget-object v10, v5, Lcom/soomla/Schedule$DateTimeRange;->Start:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 109
    .local v8, "startMillis":J
    iget-object v10, v5, Lcom/soomla/Schedule$DateTimeRange;->End:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 110
    .local v2, "endMillis":J
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v6, "rangeObj":Lorg/json/JSONObject;
    const-string v10, "className"

    invoke-static {v5}, Lcom/soomla/SoomlaUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v10, "schedTimeRangeStart"

    invoke-virtual {v6, v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 113
    const-string v10, "schedTimeRangeEnd"

    invoke-virtual {v6, v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 114
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "endMillis":J
    .end local v5    # "range":Lcom/soomla/Schedule$DateTimeRange;
    .end local v6    # "rangeObj":Lorg/json/JSONObject;
    .end local v7    # "rangesObjs":Lorg/json/JSONArray;
    .end local v8    # "startMillis":J
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lorg/json/JSONException;
    sget-object v10, Lcom/soomla/Schedule;->TAG:Ljava/lang/String;

    const-string v11, "An error occurred while generating JSON object."

    invoke-static {v10, v11}, Lcom/soomla/SoomlaUtils;->LogError(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v4

    .line 116
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v7    # "rangesObjs":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    const-string v10, "schedTimeRanges"

    invoke-virtual {v4, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v7    # "rangesObjs":Lorg/json/JSONArray;
    :cond_2
    const-string v10, "schedApprovals"

    iget v11, p0, Lcom/soomla/Schedule;->mActivationLimit:I

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    const-string v10, "className"

    invoke-static {p0}, Lcom/soomla/SoomlaUtils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
