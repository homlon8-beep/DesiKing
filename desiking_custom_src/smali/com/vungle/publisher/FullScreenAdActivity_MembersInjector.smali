.class public final Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/FullScreenAdActivity;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/qs;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/rq;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/dc;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/rd;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/dp$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/mx;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/hs$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/oj$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/qs;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/rq;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/dc;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/rd;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/dp$b;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/mx;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/hs$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/oj$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/v;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "deviceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/qs;>;"
    .local p2, "eventBusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/rq;>;"
    .local p3, "uiExecutorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/dc;>;"
    .local p4, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/rd;>;"
    .local p5, "adMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/dp$b;>;"
    .local p6, "audioHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/mx;>;"
    .local p7, "loggedExceptionFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/hs$a;>;"
    .local p8, "adPresenterMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/oj$a;>;"
    .local p9, "adConfigFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/v;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-boolean v0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->b:Ljavax/inject/Provider;

    .line 52
    sget-boolean v0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_1
    iput-object p2, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->c:Ljavax/inject/Provider;

    .line 54
    sget-boolean v0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_2
    iput-object p3, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->d:Ljavax/inject/Provider;

    .line 56
    sget-boolean v0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_3
    iput-object p4, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->e:Ljavax/inject/Provider;

    .line 58
    sget-boolean v0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_4
    iput-object p5, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->f:Ljavax/inject/Provider;

    .line 60
    sget-boolean v0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_5
    iput-object p6, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->g:Ljavax/inject/Provider;

    .line 62
    sget-boolean v0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_6
    iput-object p7, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->h:Ljavax/inject/Provider;

    .line 64
    sget-boolean v0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_7
    iput-object p8, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->i:Ljavax/inject/Provider;

    .line 66
    sget-boolean v0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_8

    if-nez p9, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_8
    iput-object p9, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->j:Ljavax/inject/Provider;

    .line 68
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/qs;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/rq;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/dc;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/rd;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/dp$b;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/mx;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/hs$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/oj$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/v;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "deviceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/qs;>;"
    .local p1, "eventBusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/rq;>;"
    .local p2, "uiExecutorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/dc;>;"
    .local p3, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/rd;>;"
    .local p4, "adMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/dp$b;>;"
    .local p5, "audioHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/mx;>;"
    .local p6, "loggedExceptionFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/hs$a;>;"
    .local p7, "adPresenterMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/oj$a;>;"
    .local p8, "adConfigFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/v;>;"
    new-instance v0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAdConfigFactory(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/FullScreenAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/v;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "adConfigFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/v;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/v;

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->j:Lcom/vungle/publisher/v;

    .line 152
    return-void
.end method

.method public static injectAdMediator(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/FullScreenAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/dp$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "adMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/dp$b;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dp$b;

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->f:Lcom/vungle/publisher/dp$b;

    .line 130
    return-void
.end method

.method public static injectAdPresenterMediator(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/FullScreenAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/oj$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "adPresenterMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/oj$a;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/oj$a;

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->i:Lcom/vungle/publisher/oj$a;

    .line 147
    return-void
.end method

.method public static injectAudioHelper(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/FullScreenAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/mx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "audioHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/mx;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/mx;

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/mx;

    .line 135
    return-void
.end method

.method public static injectDevice(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/FullScreenAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/qs;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "deviceProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/qs;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/qs;

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/qs;

    .line 110
    return-void
.end method

.method public static injectEventBus(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/FullScreenAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/rq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "eventBusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/rq;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/rq;

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->c:Lcom/vungle/publisher/rq;

    .line 115
    return-void
.end method

.method public static injectLoggedExceptionFactory(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/FullScreenAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/hs$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "loggedExceptionFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/hs$a;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hs$a;

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->h:Lcom/vungle/publisher/hs$a;

    .line 141
    return-void
.end method

.method public static injectSdkState(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/FullScreenAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/rd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/rd;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/rd;

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->e:Lcom/vungle/publisher/rd;

    .line 125
    return-void
.end method

.method public static injectUiExecutor(Lcom/vungle/publisher/FullScreenAdActivity;Ljavax/inject/Provider;)V
    .locals 1
    .param p0, "instance"    # Lcom/vungle/publisher/FullScreenAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/FullScreenAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/dc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "uiExecutorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/dc;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dc;

    iput-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->d:Lcom/vungle/publisher/dc;

    .line 120
    return-void
.end method


# virtual methods
.method public final injectMembers(Lcom/vungle/publisher/FullScreenAdActivity;)V
    .locals 2
    .param p1, "instance"    # Lcom/vungle/publisher/FullScreenAdActivity;

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/qs;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/qs;

    .line 98
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/rq;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->c:Lcom/vungle/publisher/rq;

    .line 99
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dc;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->d:Lcom/vungle/publisher/dc;

    .line 100
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/rd;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->e:Lcom/vungle/publisher/rd;

    .line 101
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dp$b;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->f:Lcom/vungle/publisher/dp$b;

    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/mx;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/mx;

    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hs$a;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->h:Lcom/vungle/publisher/hs$a;

    .line 104
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/oj$a;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->i:Lcom/vungle/publisher/oj$a;

    .line 105
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/v;

    iput-object v0, p1, Lcom/vungle/publisher/FullScreenAdActivity;->j:Lcom/vungle/publisher/v;

    .line 106
    return-void
.end method

.method public final bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lcom/vungle/publisher/FullScreenAdActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/FullScreenAdActivity_MembersInjector;->injectMembers(Lcom/vungle/publisher/FullScreenAdActivity;)V

    return-void
.end method
