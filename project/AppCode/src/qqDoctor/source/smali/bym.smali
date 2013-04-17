.class public final Lbym;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field public a:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

.field public b:Z

.field public c:Ljava/lang/Object;

.field public d:Z

.field public e:Ljava/lang/Object;

.field private f:Landroid/content/Context;

.field private g:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private h:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

.field private i:Lbyk;

.field private j:[B

.field private k:Z

.field private l:Z

.field private m:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    new-array v0, v2, [B

    iput-object v0, p0, Lbym;->j:[B

    iput-boolean v2, p0, Lbym;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbym;->c:Ljava/lang/Object;

    iput-boolean v2, p0, Lbym;->d:Z

    iput-boolean v2, p0, Lbym;->l:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbym;->e:Ljava/lang/Object;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "music"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dcim"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "weibo"

    aput-object v2, v0, v1

    iput-object v0, p0, Lbym;->m:[Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V
    .locals 2

    iget-object v1, p0, Lbym;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lbym;->b:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanPaused()V

    :cond_0
    iget-object v0, p0, Lbym;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanContinue()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbym;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lbym;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lbym;->b:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lbym;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lbym;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbym;->l:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanFinished(Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/AnalyseInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AnalyseInfo;

    iget-object v4, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v5, v0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget-object v5, v5, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    iget-object v5, v0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget v5, v5, LQQPIM/FeatureKey;->fileSize:I

    if-ne v4, v5, :cond_2

    iget-object v4, v0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget v4, v4, LQQPIM/CloudCheck;->safeType:I

    if-eqz v4, :cond_2

    iget-object v4, v0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget v4, v4, LQQPIM/CloudCheck;->safeType:I

    iput v4, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    iget-object v4, v0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget v4, v4, LQQPIM/CloudCheck;->handleAdvice:I

    iput v4, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    iget-object v4, v0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget-object v4, v4, LQQPIM/CloudCheck;->virusName:Ljava/lang/String;

    iput-object v4, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iget-object v4, v0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget-object v4, v4, LQQPIM/CloudCheck;->short_desc:Ljava/lang/String;

    iput-object v4, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iget-object v4, v0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget v4, v4, LQQPIM/CloudCheck;->virusID:I

    iput v4, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    iget-object v0, v0, LQQPIM/AnalyseInfo;->cloudCheck:LQQPIM/CloudCheck;

    iget-object v0, v0, LQQPIM/CloudCheck;->handleUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    iget-object v0, p0, Lbym;->i:Lbyk;

    iget-object v4, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget v5, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    if-eqz v4, :cond_2

    iget-object v6, v0, Lbyk;->a:Landroid/os/Bundle;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v4, 0x1

    iput-boolean v4, v0, Lbyk;->b:Z

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;",
            "Ljava/util/List",
            "<",
            "LQQPIM/AnalyseInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LQQPIM/AnalyseInfo;

    invoke-virtual {v1}, LQQPIM/AnalyseInfo;->getUploadFileInfo()LQQPIM/UploadFileInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, LQQPIM/UploadFileInfo;->getVecUploadFile()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, LQQPIM/UploadFileInfo;->getVecUploadFile()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v5, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v6, v1, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget-object v6, v6, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    iget-object v6, v1, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget v6, v6, LQQPIM/FeatureKey;->fileSize:I

    if-ne v5, v6, :cond_2

    new-instance v5, Lbti;

    iget-object v6, p0, Lbym;->f:Landroid/content/Context;

    invoke-direct {v5, v6}, Lbti;-><init>(Landroid/content/Context;)V

    const-string v6, "http://uploadserver.3g.qq.com"

    iput-object v6, v5, Lbti;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lbti;->a(Ljava/lang/String;LQQPIM/UploadFileInfo;)I

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/AnalyseInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lbym;->f:Landroid/content/Context;

    const-string v2, "label_sa_cfg"

    const-string v3, "sa_cfg.dat"

    invoke-static {v0, v1, v2, v3}, Lbtd;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/AnalyseInfo;

    invoke-virtual {v0}, LQQPIM/AnalyseInfo;->getActionLevel()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, LQQPIM/SoftActionConfig;

    iget-object v4, v0, LQQPIM/AnalyseInfo;->featureKey:LQQPIM/FeatureKey;

    iget v0, v0, LQQPIM/AnalyseInfo;->actionLevel:I

    invoke-direct {v3, v4, v0}, LQQPIM/SoftActionConfig;-><init>(LQQPIM/FeatureKey;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v12

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    move v11, v2

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v11, v2, :cond_2

    move-object v2, v12

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lbym;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lbym;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v12

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->isApk()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lbym;->g:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v4, 0x9

    invoke-virtual {v3, v2, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_a

    const/4 v10, 0x0

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->isApk()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v10, 0x2

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lbym;->i:Lbyk;

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->getApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->getSize()J

    move-result-wide v6

    if-eqz v4, :cond_e

    iget-object v2, v2, Lbyk;->a:Landroid/os/Bundle;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    if-eqz v5, :cond_5

    if-nez v2, :cond_d

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_7

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->isApk()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v9, v3

    :goto_5
    if-eqz v9, :cond_a

    if-nez v9, :cond_10

    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lbym;->h:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    invoke-virtual {v3, v2}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->scanApk(Lcom/tencent/tmsecure/module/qscanner/ApkKey;)Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    move-result-object v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lbym;->a:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    invoke-virtual {v4, v3}, Lcom/tencent/tmsecure/module/qscanner/CertChecker;->checkCert(Lcom/tencent/tmsecure/module/qscanner/QScanResult;)Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    move-result-object v3

    :goto_7
    if-nez v3, :cond_12

    const/4 v4, 0x0

    :goto_8
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->getApkkey()Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getCertMd5()Ljava/lang/String;

    move-result-object v3

    :goto_9
    iput-object v3, v2, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lbym;->i:Lbyk;

    if-eqz v2, :cond_6

    iget-object v5, v3, Lbyk;->a:Landroid/os/Bundle;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v2, 0x1

    iput-boolean v2, v3, Lbyk;->b:Z

    :cond_6
    move-object v2, v4

    :cond_7
    if-eqz v2, :cond_9

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_9

    iget v3, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    if-eqz v3, :cond_8

    iget v3, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    :cond_8
    add-int/lit8 v3, v11, 0x1

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onPackageScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V

    :cond_9
    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v13

    const-wide/16 v4, 0x14

    cmp-long v4, v2, v4

    if-gez v4, :cond_a

    const-wide/16 v4, 0x14

    sub-long v2, v4, v2

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_b
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lbym;->g:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v4, 0x49

    invoke-virtual {v3, v2, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v3

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v10, 0x1

    goto/16 :goto_3

    :cond_d
    new-instance v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    invoke-direct {v4}, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;-><init>()V

    iget-object v6, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iput-object v6, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iput-object v6, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iget-object v6, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    iput-object v6, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    iget v6, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->versionCode:I

    iput v6, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->versionCode:I

    iget-object v6, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    iput-object v6, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    iget v6, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    iput v6, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    iput v10, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    iput-object v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    iget v5, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    iput v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    iget v5, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    iput v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    iget v5, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    iput v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    iget-object v5, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iget-object v5, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->label:Ljava/lang/String;

    iget-object v5, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    iput-object v2, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    move-object v2, v4

    goto/16 :goto_4

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lbym;->g:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v2

    move-object v9, v2

    goto/16 :goto_5

    :cond_10
    new-instance v2, Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v9}, Lcom/tencent/tmsecure/module/software/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/tencent/tmsecure/module/software/AppEntity;->getCertMD5()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/tencent/tmsecure/module/software/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/tencent/tmsecure/module/software/AppEntity;->getVersionCode()I

    move-result v7

    invoke-virtual {v9}, Lcom/tencent/tmsecure/module/software/AppEntity;->getSize()J

    move-result-wide v15

    long-to-int v8, v15

    invoke-virtual {v9}, Lcom/tencent/tmsecure/module/software/AppEntity;->getApkPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/tmsecure/utils/StringUtil;->assertNotNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v10}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    goto/16 :goto_6

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_12
    new-instance v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    invoke-direct {v4}, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;-><init>()V

    iget-object v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getPkgName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getSoftName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iget-object v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getVersion()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    iget-object v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->getVersionCode()I

    move-result v5

    iput v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->versionCode:I

    iget-object v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget-object v5, v5, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->path:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    iget-object v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget v5, v5, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->apkType:I

    iput v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    iget-object v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget-object v5, v5, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    iget-object v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget v5, v5, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    iput v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    iget v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    iput v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    iget v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    iput v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    iget v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->malwareid:I

    iput v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    iget-object v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->name:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->label:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->label:Ljava/lang/String;

    iget-object v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iget-object v5, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->url:Ljava/lang/String;

    iput-object v5, v4, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    goto/16 :goto_8

    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_14
    iget v3, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    add-int/lit8 v3, v11, 0x1

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onSdcardScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V

    goto/16 :goto_a

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_b
.end method

.method private b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lbym;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lbym;->d:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lbym;->l:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanCanceled()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lbym;->l:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 12
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

    const/4 v8, 0x1

    invoke-direct {p0, p2}, Lbym;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V

    invoke-direct {p0, p2}, Lbym;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lbsv;->a()Lbsv;

    move-result-object v0

    invoke-virtual {v0}, Lbsv;->b()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TMS licence expired! Please contact TMS(Tencent Mobile Secure) group."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onCloudScan()V

    :cond_3
    invoke-direct {p0, p2}, Lbym;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V

    invoke-direct {p0, p2}, Lbym;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v10, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getAnalyseInfo(Ljava/util/List;Ljava/util/ArrayList;)I

    move-result v0

    invoke-direct {p0, p2}, Lbym;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)V

    invoke-direct {p0, p2}, Lbym;->b(Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_7

    invoke-direct {p0, p1, v1}, Lbym;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, v1}, Lbym;->a(Ljava/util/ArrayList;Ljava/util/List;)V

    iget-object v0, p0, Lbym;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbyj;->a(Landroid/content/Context;)Lbyj;

    move-result-object v0

    invoke-virtual {v0}, Lbyj;->a()I

    invoke-direct {p0, v1}, Lbym;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    if-nez v7, :cond_5

    const/4 v0, 0x0

    :goto_2
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v9, LQQPIM/SoftFeature;

    invoke-direct {v9}, LQQPIM/SoftFeature;-><init>()V

    new-instance v0, LQQPIM/FeatureKey;

    iget-object v1, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iget-object v2, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iget-object v3, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    iget v4, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->versionCode:I

    iget-object v5, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    iget v6, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->size:I

    invoke-direct/range {v0 .. v6}, LQQPIM/FeatureKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v9, v0}, LQQPIM/SoftFeature;->setFeatureKey(LQQPIM/FeatureKey;)V

    invoke-virtual {v9, v8}, LQQPIM/SoftFeature;->setRequestType(I)V

    iget v0, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    if-ne v0, v8, :cond_6

    move v0, v8

    :goto_3
    invoke-virtual {v9, v0}, LQQPIM/SoftFeature;->setIsBuildIn(Z)V

    const/4 v0, 0x2

    invoke-virtual {v9, v0}, LQQPIM/SoftFeature;->setEngineVersion(I)V

    iget v0, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    invoke-virtual {v9, v0}, LQQPIM/SoftFeature;->setLocalSafeType(I)V

    iget v0, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    invoke-virtual {v9, v0}, LQQPIM/SoftFeature;->setLocalVirusID(I)V

    iget-object v0, v7, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    invoke-virtual {v9, v0}, LQQPIM/SoftFeature;->setLocalVirusName(Ljava/lang/String;)V

    move-object v0, v9

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onCloudScanError(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;
    .locals 3
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

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanStarted()V

    :cond_0
    invoke-virtual {p0}, Lbym;->a()V

    iget-object v1, p0, Lbym;->j:[B

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lbym;->k:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1, p2}, Lbym;->c(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lbym;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lbym;->b()V

    iget-object v1, p0, Lbym;->j:[B

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lbym;->k:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method public final declared-synchronized a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;",
            "Lcom/tencent/tmsecure/module/qscanner/QScanListener;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanStarted()V

    :cond_0
    invoke-virtual {p0}, Lbym;->a()V

    iget-object v1, p0, Lbym;->j:[B

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lbym;->k:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1, p2}, Lbym;->b(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-direct {p0, v0, p2}, Lbym;->c(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    invoke-direct {p0, p2, v0}, Lbym;->a(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lbym;->b()V

    iget-object v1, p0, Lbym;->j:[B

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lbym;->k:Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method public final a(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 4
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

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1, p2, p3}, Lbym;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lbym;->i:Lbyk;

    if-nez v0, :cond_0

    invoke-static {}, Lbyk;->a()Lbyk;

    move-result-object v0

    iput-object v0, p0, Lbym;->i:Lbyk;

    :cond_0
    iget-object v0, p0, Lbym;->h:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbym;->f:Landroid/content/Context;

    const-string v1, "qv_base.amf"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbtd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    iget-object v2, p0, Lbym;->f:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lbym;->h:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    :cond_1
    iget-object v0, p0, Lbym;->a:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    iget-object v1, p0, Lbym;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/module/qscanner/CertChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbym;->a:Lcom/tencent/tmsecure/module/qscanner/CertChecker;

    :cond_2
    return-void
.end method

.method public final b(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    .locals 5
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

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1, p2, p3}, Lbym;->a(Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->setApkFlag(Z)V

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setApkPath(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lbym;->j:[B

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lbym;->k:Z

    if-eqz v0, :cond_1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-exit v1

    invoke-static {}, Lbyk;->b()V

    iput-object v2, p0, Lbym;->i:Lbyk;

    iget-object v0, p0, Lbym;->h:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbym;->h:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->finalize()V

    iput-object v2, p0, Lbym;->h:Lcom/tencent/tmsecure/module/qscanner/AmScanner;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lbym;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbym;->m:[Ljava/lang/String;

    invoke-static {v0}, Lbtd;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->setApkFlag(Z)V

    invoke-virtual {v3, v0}, Lcom/tencent/tmsecure/module/software/AppEntity;->setApkPath(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lbym;->b()V

    return-void
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lbym;->f:Landroid/content/Context;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lbym;->g:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v0, "qv_base.amf"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lbtd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
