.class public final Lcom/tencent/tmsecure/module/optimize/OptimizeManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbxf;

.field private b:Lbxc;

.field private c:Lbxe;

.field private d:Lbxd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final closeProcess(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Lbxf;

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lay;->g()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lbxf;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final closeProcess(Ljava/lang/String;ZZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Lbxf;

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->provider$24edfebd()Lay;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lay;->g()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lbxf;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final closeProcess(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Lbxf;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Lbxf;->a(Ljava/util/List;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final closeProcess(Ljava/util/List;ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Lbxf;

    invoke-virtual {v0, p1, p2, p3}, Lbxf;->a(Ljava/util/List;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final getAllRunningProcess(Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/optimize/ProcessEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Lbxf;

    invoke-virtual {v0, p1}, Lbxf;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized getAutoBootHelper()Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->b:Lbxc;

    if-nez v0, :cond_0

    new-instance v0, Lbxc;

    invoke-direct {v0}, Lbxc;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->b:Lbxc;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->b:Lbxc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Lbxf;

    invoke-virtual {v0}, Lbxf;->a()Lcom/tencent/tmsecure/module/optimize/IAutoBootHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCpuHelper()Lcom/tencent/tmsecure/module/optimize/ICpuHelper;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Lbxf;

    iget-object v1, v0, Lbxf;->b:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;

    iget-object v2, v0, Lbxf;->a:Landroid/content/Context;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;-><init>()V

    iput-object v1, v0, Lbxf;->b:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    :cond_0
    iget-object v0, v0, Lbxf;->b:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->d:Lbxd;

    if-nez v1, :cond_1

    new-instance v1, Lbxd;

    invoke-direct {v1, v0}, Lbxd;-><init>(Lcom/tencent/tmsecure/module/optimize/ICpuHelper;)V

    iput-object v1, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->d:Lbxd;

    :cond_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->d:Lbxd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Lbxf;

    iget-object v1, v0, Lbxf;->b:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    if-nez v1, :cond_3

    new-instance v1, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;

    iget-object v2, v0, Lbxf;->a:Landroid/content/Context;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/optimize/CpuHelperImpl;-><init>()V

    iput-object v1, v0, Lbxf;->b:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;

    :cond_3
    iget-object v0, v0, Lbxf;->b:Lcom/tencent/tmsecure/module/optimize/ICpuHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMemoryHelper()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Lbxf;

    invoke-virtual {v0}, Lbxf;->b()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->c:Lbxe;

    if-nez v1, :cond_0

    new-instance v1, Lbxe;

    invoke-direct {v1, v0}, Lbxe;-><init>(Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;)V

    iput-object v1, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->c:Lbxe;

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->c:Lbxe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Lbxf;

    invoke-virtual {v0}, Lbxf;->b()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbxf;

    invoke-direct {v0}, Lbxf;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Lbxf;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Lbxf;

    invoke-virtual {v0, p1}, Lbxf;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->a:Lbxf;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
