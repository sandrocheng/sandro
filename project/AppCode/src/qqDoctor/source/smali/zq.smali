.class public final Lzq;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;"
        }
    .end annotation
.end field

.field static c:Lzq;


# instance fields
.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmk;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field g:Landroid/os/Handler;

.field public h:Z

.field i:J


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lzq;->i:J

    iput-object p1, p0, Lzq;->g:Landroid/os/Handler;

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v0

    const-string v1, "nocharge_body_smslog"

    invoke-virtual {v0, v1}, Ljo;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzq;->a:Ljava/util/List;

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v0

    const-string v1, "nocharge_phonenum_smslog"

    invoke-virtual {v0, v1}, Ljo;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzq;->b:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a(Landroid/os/Handler;)Lzq;
    .locals 2

    const-class v1, Lzq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lzq;->c:Lzq;

    if-nez v0, :cond_0

    new-instance v0, Lzq;

    invoke-direct {v0, p0}, Lzq;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lzq;->c:Lzq;

    :cond_0
    sget-object v0, Lzq;->c:Lzq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lzq;Ljava/util/List;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    const-class v1, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getIntelligentSmsChecker()Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;->check(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker$CheckResult;->mInnterResult:Lcom/tencent/tccdb/MMatchSysResult;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/aresengine/AresEngineManager;->getIntelligentSmsChecker()Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/aresengine/IIntelligentSmsChecker;->isChartSms(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    move-result v1

    invoke-static {v0}, Lzq;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_3

    new-instance v2, Llb;

    invoke-direct {v2, p2, v0, v3}, Llb;-><init>(ZLmk;Lcom/tencent/tccdb/MMatchSysResult;)V

    iget-object v1, p0, Lzq;->g:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lzq;->f:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lmk;->read:I

    if-nez v1, :cond_1

    const-class v1, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v3, Lki;

    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v1

    check-cast v1, Lki;

    iget-wide v3, v0, Lmk;->date:J

    invoke-virtual {v1, v3, v4}, Lki;->a(J)Z

    :cond_1
    iget-object v0, p0, Lzq;->g:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lzq;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lzq;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzq;->g:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 10

    const/4 v4, 0x1

    const/16 v9, 0x8

    const/4 v2, 0x0

    sget-object v0, Lzq;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    sget-object v0, Lzq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lzq;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v0, v0, Lmk;->phonenum:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lzq;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-wide v5, v0, Lmk;->date:J

    iget-wide v7, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->date:J

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    move v2, v4

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lzq;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_2
    sget-object v0, Lzq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lzq;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v0, v0, Lmk;->phonenum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v9, :cond_3

    :goto_3
    iget-object v3, p0, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v9, :cond_4

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lzq;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzq;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzq;->h:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lzq;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lzq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lzq;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lzq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzr;

    invoke-direct {v1, p0}, Lzr;-><init>(Lzq;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
