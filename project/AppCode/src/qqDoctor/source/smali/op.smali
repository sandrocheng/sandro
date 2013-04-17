.class public final Lop;
.super Ljava/lang/Object;


# static fields
.field private static a:Lop;


# instance fields
.field private b:Lov;

.field private c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

.field private d:Lzs;

.field private e:Lhh;

.field private f:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

.field private g:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

.field private h:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

.field private i:Lio;

.field private j:Liq;

.field private k:Lho;

.field private l:Lki;

.field private m:Ljp;

.field private n:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llt;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private q:Llt;

.field private r:Landroid/database/ContentObserver;

.field private s:Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;

.field private t:Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lop;->a:Lop;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lop;->n:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lop;->o:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lop;->p:Ljava/util/Map;

    new-instance v0, Loq;

    invoke-direct {v0, p0}, Loq;-><init>(Lop;)V

    iput-object v0, p0, Lop;->q:Llt;

    new-instance v0, Lor;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lor;-><init>(Lop;Landroid/os/Handler;)V

    iput-object v0, p0, Lop;->r:Landroid/database/ContentObserver;

    new-instance v0, Los;

    invoke-direct {v0, p0}, Los;-><init>(Lop;)V

    iput-object v0, p0, Lop;->s:Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;

    new-instance v0, Lou;

    invoke-direct {v0, p0}, Lou;-><init>(Lop;)V

    iput-object v0, p0, Lop;->t:Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;

    const-class v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    iput-object v0, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {}, Lhh;->a()Lhh;

    move-result-object v0

    iput-object v0, p0, Lop;->e:Lhh;

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    iput-object v0, p0, Lop;->l:Lki;

    new-instance v0, Ljp;

    const-string v1, "smslog"

    const-string v2, "mms_pdu"

    const-string v3, "mms_parts"

    invoke-direct {v0, v1, v2, v3}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lop;->m:Ljp;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lop;->k:Lho;

    new-instance v0, Lhq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    iput-object v0, p0, Lop;->f:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    new-instance v0, Lhq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    iput-object v0, p0, Lop;->g:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    invoke-static {}, Lim;->a()Lim;

    move-result-object v0

    iput-object v0, p0, Lop;->h:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    invoke-static {}, Lf;->g()Lio;

    move-result-object v0

    iput-object v0, p0, Lop;->i:Lio;

    invoke-static {}, Lf;->h()Liq;

    move-result-object v0

    iput-object v0, p0, Lop;->j:Liq;

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iput-object v0, p0, Lop;->b:Lov;

    new-instance v0, Lzs;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    invoke-direct {v0}, Lzs;-><init>()V

    iput-object v0, p0, Lop;->d:Lzs;

    return-void
.end method

.method static synthetic a(Lop;)Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;
    .locals 1

    iget-object v0, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    return-object v0
.end method

.method public static a()Lop;
    .locals 1

    sget-object v0, Lop;->a:Lop;

    if-nez v0, :cond_0

    new-instance v0, Lop;

    invoke-direct {v0}, Lop;-><init>()V

    sput-object v0, Lop;->a:Lop;

    :cond_0
    sget-object v0, Lop;->a:Lop;

    return-object v0
.end method

.method static synthetic b(Lop;)Lov;
    .locals 1

    iget-object v0, p0, Lop;->b:Lov;

    return-object v0
.end method

.method static synthetic c(Lop;)Lki;
    .locals 1

    iget-object v0, p0, Lop;->l:Lki;

    return-object v0
.end method

.method static synthetic d(Lop;)Lho;
    .locals 1

    iget-object v0, p0, Lop;->k:Lho;

    return-object v0
.end method

.method static synthetic e(Lop;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Lop;->g:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic f(Lop;)Lcom/tencent/tmsecure/module/aresengine/IContactDao;
    .locals 1

    iget-object v0, p0, Lop;->f:Lcom/tencent/tmsecure/module/aresengine/IContactDao;

    return-object v0
.end method

.method static synthetic g(Lop;)Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;
    .locals 1

    iget-object v0, p0, Lop;->h:Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;

    return-object v0
.end method

.method static synthetic h(Lop;)Lio;
    .locals 1

    iget-object v0, p0, Lop;->i:Lio;

    return-object v0
.end method

.method static synthetic i(Lop;)Liq;
    .locals 1

    iget-object v0, p0, Lop;->j:Liq;

    return-object v0
.end method

.method static synthetic j(Lop;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lop;->p:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic k(Lop;)Ljp;
    .locals 1

    iget-object v0, p0, Lop;->m:Ljp;

    return-object v0
.end method

.method static synthetic l(Lop;)Lzs;
    .locals 1

    iget-object v0, p0, Lop;->d:Lzs;

    return-object v0
.end method

.method static synthetic m(Lop;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lop;->o:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Llt;)V
    .locals 2

    iget-object v1, p0, Lop;->o:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lop;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lop;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Llt;)V
    .locals 2

    iget-object v1, p0, Lop;->o:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lop;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lop;->n:Z

    return v0
.end method

.method public final c()V
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lop;->n:Z

    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->createInComingSmsIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;

    move-result-object v0

    iget-object v1, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->addIntercepter(Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->createOutgoingSmsIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;

    move-result-object v0

    iget-object v1, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->addIntercepter(Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;)V

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->createInComingCallIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;

    move-result-object v0

    iget-object v1, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->addIntercepter(Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;)V

    invoke-static {}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;->createSystemCallLogIntercepterBuilder()Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;

    move-result-object v0

    iget-object v1, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->addIntercepter(Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;)V

    invoke-virtual {p0}, Lop;->d()V

    iget-object v0, p0, Lop;->q:Llt;

    invoke-virtual {p0, v0}, Lop;->a(Llt;)V

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lop;->r:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "incoming_sms"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilter;

    iget-object v1, p0, Lop;->s:Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilter;->setIntelligentSmsHandler(Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;)V

    iget-object v1, p0, Lop;->t:Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilter;->setSpecialSmsChecker(Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final declared-synchronized d()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->g()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->d()I

    move-result v3

    new-instance v4, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    const/16 v0, 0x100

    const/4 v5, 0x2

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v0, 0x1

    const/4 v5, 0x2

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    packed-switch v3, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v5, "incoming_sms"

    invoke-virtual {v0, v5}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilter;

    invoke-virtual {v0, v4}, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    iget-object v4, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v5, "outing_sms"

    invoke-virtual {v4, v5}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v4

    invoke-interface {v4}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    new-instance v4, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->h()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_1
    packed-switch v3, :pswitch_data_1

    :goto_2
    iget-object v0, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v5, "incoming_call"

    invoke-virtual {v0, v5}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    new-instance v4, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v4}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    const/4 v0, 0x1

    const/4 v5, 0x2

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    packed-switch v3, :pswitch_data_2

    :goto_3
    iget-object v0, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v1, "system_call"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    monitor-exit p0

    return-void

    :pswitch_0
    const/4 v0, 0x2

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v0, 0x4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x8

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x10

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x20

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x40

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x80

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    const/4 v0, 0x2

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v0, 0x4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x8

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x10

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x20

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x40

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x80

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v0, 0x2

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v0, 0x4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x8

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x10

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x20

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x40

    const/4 v5, 0x2

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x80

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_5
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_6
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_7
    if-eqz v0, :cond_3

    const/4 v0, 0x4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_8
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    move v0, v1

    :goto_9
    if-eqz v0, :cond_5

    const/16 v0, 0x8

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_a
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    move v0, v1

    :goto_b
    if-eqz v0, :cond_7

    const/16 v0, 0x10

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x20

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x40

    const/4 v5, 0x2

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x80

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_0

    :cond_0
    move v0, v2

    goto :goto_5

    :cond_1
    const/4 v0, 0x2

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_6

    :cond_2
    move v0, v2

    goto :goto_7

    :cond_3
    const/4 v0, 0x4

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_8

    :cond_4
    move v0, v2

    goto :goto_9

    :cond_5
    const/16 v0, 0x8

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_a

    :cond_6
    move v0, v2

    goto :goto_b

    :cond_7
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    move v0, v1

    :goto_c
    if-eqz v0, :cond_9

    const/16 v0, 0x10

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x20

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x40

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x80

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_c

    :cond_9
    const/16 v0, 0x10

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x20

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x40

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x80

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x1

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_1

    :pswitch_4
    const/4 v0, 0x2

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v0, 0x4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x8

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x10

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x20

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_2

    :pswitch_5
    const/4 v0, 0x2

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v0, 0x4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x8

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x10

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x20

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_2

    :pswitch_6
    const/4 v0, 0x2

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v0, 0x4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x8

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x10

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x20

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_2

    :pswitch_7
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    move v0, v1

    :goto_d
    if-eqz v0, :cond_c

    const/4 v0, 0x2

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_e
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    move v0, v1

    :goto_f
    if-eqz v0, :cond_e

    const/4 v0, 0x4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_10
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    move v0, v1

    :goto_11
    if-eqz v0, :cond_10

    const/16 v0, 0x8

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_12
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_11

    move v0, v1

    :goto_13
    if-eqz v0, :cond_12

    const/16 v0, 0x10

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x20

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_2

    :cond_b
    move v0, v2

    goto :goto_d

    :cond_c
    const/4 v0, 0x2

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_e

    :cond_d
    move v0, v2

    goto :goto_f

    :cond_e
    const/4 v0, 0x4

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_10

    :cond_f
    move v0, v2

    goto :goto_11

    :cond_10
    const/16 v0, 0x8

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_12

    :cond_11
    move v0, v2

    goto :goto_13

    :cond_12
    const/16 v0, 0x10

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x20

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_2

    :pswitch_8
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x40

    const/4 v1, 0x2

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_14
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x80

    const/4 v1, 0x2

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_15
    const/16 v0, 0x20

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_16
    const/16 v0, 0x100

    const/4 v1, 0x2

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_3

    :cond_13
    const/16 v0, 0x40

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_14

    :cond_14
    const/16 v0, 0x80

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_15

    :pswitch_9
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->c()Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x40

    const/4 v1, 0x2

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_17
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x80

    const/4 v1, 0x2

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_18
    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_16

    :cond_15
    const/16 v0, 0x40

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_17

    :cond_16
    const/16 v0, 0x80

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_18

    :pswitch_a
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->c()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x40

    const/4 v1, 0x2

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_19
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->f()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x80

    const/4 v1, 0x2

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_1a
    const/16 v0, 0x20

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_16

    :cond_17
    const/16 v0, 0x40

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_19

    :cond_18
    const/16 v0, 0x80

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_1a

    :pswitch_b
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    move v0, v1

    :goto_1b
    if-eqz v0, :cond_1a

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_1c
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b

    move v0, v1

    :goto_1d
    if-eqz v0, :cond_1c

    const/4 v0, 0x4

    const/4 v3, 0x1

    invoke-virtual {v4, v0, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_1e
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_1f
    if-eqz v0, :cond_1e

    const/16 v0, 0x8

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_20
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_21
    if-eqz v0, :cond_20

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_22
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->c()Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x40

    const/4 v1, 0x2

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_23
    iget-object v0, p0, Lop;->e:Lhh;

    invoke-virtual {v0}, Lhh;->f()Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x80

    const/4 v1, 0x2

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_16

    :cond_19
    move v0, v2

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x2

    const/4 v3, 0x3

    invoke-virtual {v4, v0, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_1c

    :cond_1b
    move v0, v2

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x4

    const/4 v3, 0x3

    invoke-virtual {v4, v0, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_1e

    :cond_1d
    move v0, v2

    goto :goto_1f

    :cond_1e
    const/16 v0, 0x8

    const/4 v3, 0x1

    invoke-virtual {v4, v0, v3}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_20

    :cond_1f
    move v0, v2

    goto :goto_21

    :cond_20
    const/16 v0, 0x10

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v0, 0x20

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_22

    :cond_21
    const/16 v0, 0x40

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto :goto_23

    :cond_22
    const/16 v0, 0x80

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    goto/16 :goto_16

    :cond_23
    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x10

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x20

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x40

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x80

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    iget-object v1, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v2, "incoming_sms"

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    iget-object v1, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v2, "outing_sms"

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    iget-object v1, p0, Lop;->e:Lhh;

    invoke-virtual {v1}, Lhh;->h()I

    move-result v1

    if-nez v1, :cond_24

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    :goto_24
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x10

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x20

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    iget-object v1, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v2, "incoming_call"

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x40

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x80

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x20

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    const/16 v1, 0x100

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V

    iget-object v1, p0, Lop;->c:Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    const-string v2, "system_call"

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->findIntercepter(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;->dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;->setConfig(Lcom/tencent/tmsecure/module/aresengine/FilterConfig;)V

    goto/16 :goto_4

    :cond_24
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;->set(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_24

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method
