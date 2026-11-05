.class public abstract Lcom/vungle/publisher/adj;
.super Lcom/vungle/publisher/acl;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/adj$a;
    }
.end annotation


# instance fields
.field protected g:Lcom/vungle/publisher/acy;

.field protected h:Ljava/lang/Integer;

.field protected i:Ljava/lang/Long;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/Integer;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/Boolean;

.field protected o:Ljava/lang/String;

.field protected p:[Lcom/vungle/publisher/adg;

.field protected q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/dq;",
            ">;"
        }
    .end annotation
.end field

.field protected r:Lcom/vungle/publisher/p;

.field protected s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vungle/publisher/acl;-><init>()V

    .line 108
    return-void
.end method

.method private c()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/vungle/publisher/adj;->p:[Lcom/vungle/publisher/adg;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vungle/publisher/adj;->p:[Lcom/vungle/publisher/adg;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 85
    sget-object v0, Lcom/vungle/publisher/ku$a;->m:Lcom/vungle/publisher/ku$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/ku$a;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    iget-object v5, p0, Lcom/vungle/publisher/adj;->p:[Lcom/vungle/publisher/adg;

    array-length v6, v5

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v0, v5, v2

    .line 87
    iget-object v7, v0, Lcom/vungle/publisher/adg;->c:[Lcom/vungle/publisher/adg$b;

    .line 88
    if-eqz v7, :cond_1

    .line 89
    array-length v8, v7

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_1

    aget-object v9, v7, v0

    .line 90
    iget-object v10, v9, Lcom/vungle/publisher/adg$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 91
    iget-object v9, v9, Lcom/vungle/publisher/adg$b;->a:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 98
    :cond_2
    return-object v3
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0}, Lcom/vungle/publisher/acl;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 63
    const-string v0, "adType"

    iget-object v2, p0, Lcom/vungle/publisher/adj;->r:Lcom/vungle/publisher/p;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v0, "ttDownload"

    iget-object v2, p0, Lcom/vungle/publisher/adj;->h:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v0, "adStartTime"

    iget-object v2, p0, Lcom/vungle/publisher/adj;->i:Ljava/lang/Long;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v0, "app_id"

    iget-object v2, p0, Lcom/vungle/publisher/adj;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v0, "campaign"

    iget-object v2, p0, Lcom/vungle/publisher/adj;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v0, "adDuration"

    iget-object v2, p0, Lcom/vungle/publisher/adj;->l:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/vungle/publisher/adj;->n:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "name"

    iget-object v2, p0, Lcom/vungle/publisher/adj;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_0
    const-string v2, "incentivized"

    iget-object v0, p0, Lcom/vungle/publisher/adj;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v0, "placement"

    iget-object v2, p0, Lcom/vungle/publisher/adj;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v0, "plays"

    iget-object v2, p0, Lcom/vungle/publisher/adj;->p:[Lcom/vungle/publisher/adg;

    invoke-static {v2}, Lcom/vungle/publisher/ti;->a([Lcom/vungle/publisher/acj;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v0, "clickedThrough"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/vungle/publisher/adj;->c()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v0, "id"

    iget-object v2, p0, Lcom/vungle/publisher/adj;->s:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v0, "errors"

    iget-object v2, p0, Lcom/vungle/publisher/adj;->q:Ljava/util/List;

    invoke-static {v2}, Lcom/vungle/publisher/ti;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v0, "extraInfo"

    iget-object v2, p0, Lcom/vungle/publisher/adj;->g:Lcom/vungle/publisher/acy;

    invoke-static {v2}, Lcom/vungle/publisher/ti;->a(Lcom/vungle/publisher/acj;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    return-object v1

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vungle/publisher/adj;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
