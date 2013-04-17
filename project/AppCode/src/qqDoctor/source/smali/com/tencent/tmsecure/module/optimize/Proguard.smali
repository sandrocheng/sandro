.class public final Lcom/tencent/tmsecure/module/optimize/Proguard;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callAllMethods()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-class v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getAllRunningProcess(Z)Ljava/util/ArrayList;

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->closeProcess(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getAutoBootHelper()Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;->getAllAutoBootApps()Ljava/util/ArrayList;

    invoke-interface {v1, v2, v3}, Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;->setAutoBootEnable(Ljava/lang/String;Z)Z

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getMemoryHelper()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->clearAllCacheData()Z

    invoke-interface {v1, v2}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getAllAppPackageStats(Ljava/util/List;)Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getAppPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getFreeMemery()J

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getTotalMemery()J

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getCpuHelper()Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/ICpuHelper;->getCpuInfoMaxFreq()I

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/ICpuHelper;->getScalingAvaliableGovernors()[Ljava/lang/String;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/ICpuHelper;->getScalingAvaliableFrequencies()[I

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
