.class public final Lcom/tencent/tmsecure/module/qscanner/QScannerManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbym;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method

.method public static getVirusBaseVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "qv_base.amf"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lbtd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getVirusClientInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/VirusClientInfo;

    move-result-object v2

    const-wide/16 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LQQPIM/VirusClientInfo;->getTimestamp()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_1

    const-string v0, "B"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "A"

    goto :goto_0
.end method


# virtual methods
.method public final cancelScan()V
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    iget-object v1, v0, Lbym;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lbym;->d:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, v0, Lbym;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, v0, Lbym;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final cloudScan(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    invoke-virtual {v0, p1, p2}, Lbym;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final continueScan()V
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    iget-object v1, v0, Lbym;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lbym;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final freeScanner()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    invoke-virtual {v0}, Lbym;->b()V

    goto :goto_0
.end method

.method public final getApkClass(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    iget-object v2, v1, Lbym;->a:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lbym;->a:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/qscanner/CertChecker;->getApkClass(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final initScanner()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    invoke-virtual {v0}, Lbym;->a()V

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbym;

    invoke-direct {v0}, Lbym;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    invoke-virtual {v0, p1}, Lbym;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final pauseScan()V
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    iget-object v1, v0, Lbym;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lbym;->b:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final scanApks(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    invoke-virtual {v0, p1, p2, p3}, Lbym;->b(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanGlobal(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    invoke-virtual {v0}, Lbym;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lbym;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1, p1, p2}, Lbym;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanInstalledPackages(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    invoke-virtual {v0}, Lbym;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lbym;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanPackages(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    invoke-virtual {v0, p1, p2, p3}, Lbym;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanSdcardApks(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->a:Lbym;

    invoke-virtual {v0}, Lbym;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lbym;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method
