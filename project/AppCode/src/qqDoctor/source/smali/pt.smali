.class public Lpt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpt$a;
    }
.end annotation


# static fields
.field private static a:Lpt;


# instance fields
.field private final b:Landroid/content/pm/PackageManager;

.field private final c:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

.field private final d:[Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lpt;->b:Landroid/content/pm/PackageManager;

    const-class v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getMemoryHelper()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    move-result-object v0

    iput-object v0, p0, Lpt;->c:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    invoke-static {}, Lho;->a()Lho;

    invoke-static {}, Lho;->au()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpt;->d:[Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lpt;)Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;
    .locals 1

    iget-object v0, p0, Lpt;->c:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    return-object v0
.end method

.method public static a()Lpt;
    .locals 2

    sget-object v0, Lpt;->a:Lpt;

    if-nez v0, :cond_1

    const-class v1, Lpt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lpt;->a:Lpt;

    if-nez v0, :cond_0

    new-instance v0, Lpt;

    invoke-direct {v0}, Lpt;-><init>()V

    sput-object v0, Lpt;->a:Lpt;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lpt;->a:Lpt;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lpt;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpt;->f:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/pm/IPackageDataObserver;)V
    .locals 1

    iget-boolean v0, p0, Lpt;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpt;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpt;->f:Z

    new-instance v0, Lpv;

    invoke-direct {v0, p0, p1}, Lpv;-><init>(Lpt;Landroid/content/pm/IPackageDataObserver;)V

    invoke-virtual {v0}, Lpv;->start()V

    goto :goto_0
.end method

.method public final a(Lpt$a;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpt;->e:Z

    new-instance v0, Lpu;

    invoke-direct {v0, p0, p1}, Lpu;-><init>(Lpt;Lpt$a;)V

    invoke-virtual {v0}, Lpu;->start()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpt;->e:Z

    return-void
.end method

.method public final b(Lpt$a;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lpt;->e:Z

    iget-object v0, p0, Lpt;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    invoke-interface {p1}, Lpt$a;->a()V

    const-class v4, Lpt;

    monitor-enter v4

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lpt;->e:Z

    if-nez v1, :cond_3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_3
    :try_start_1
    iget-object v6, p0, Lpt;->d:[Ljava/lang/String;

    array-length v7, v6

    move v1, v3

    :goto_3
    if-ge v1, v7, :cond_7

    aget-object v8, v6, v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v1, v2

    :goto_4
    if-nez v1, :cond_2

    iget-object v1, p0, Lpt;->c:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    invoke-interface {v1, v0}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getAppPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    new-instance v6, Lkw;

    invoke-direct {v6}, Lkw;-><init>()V

    if-eqz v1, :cond_4

    iget-wide v7, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-virtual {v6, v7, v8}, Lkw;->f(J)V

    :cond_4
    invoke-virtual {v6, v0}, Lkw;->setPackageName(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lpt$a;->a(Lkw;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpt;->e:Z

    invoke-interface {p1}, Lpt$a;->b()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_7
    move v1, v3

    goto :goto_4
.end method
