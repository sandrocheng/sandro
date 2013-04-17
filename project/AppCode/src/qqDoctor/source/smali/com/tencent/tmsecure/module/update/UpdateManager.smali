.class public final Lcom/tencent/tmsecure/module/update/UpdateManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbzc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final addObserver(ILcom/tencent/tmsecure/module/update/IUpdateObserver;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Lbzc;

    iget-object v1, v0, Lbzc;->e:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, v0, Lbzc;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Lbzc;

    iget-object v0, v0, Lbzc;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final check(ILcom/tencent/tmsecure/module/update/ICheckListener;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Lbzc;

    iget-object v0, v3, Lbzc;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v4, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;

    invoke-direct {v4, p2}, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;-><init>(Lcom/tencent/tmsecure/module/update/ICheckListener;)V

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->onCheckStarted()V

    invoke-static {p1}, Lcom/tencent/tmsecure/module/update/UpdateConfig;->prepareCheckFlag(I)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lbsv;->a()Lbsv;

    move-result-object v0

    invoke-virtual {v0}, Lbsv;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/module/update/CheckResult;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/update/CheckResult;-><init>()V

    const-string v1, "\u63d0\u793a"

    iput-object v1, v0, Lcom/tencent/tmsecure/module/update/CheckResult;->mTitle:Ljava/lang/String;

    const-string v1, "TMS\u6a21\u5757\u5df2\u7ecf\u8fc7\u671f\uff0c\u8bf7\u8054\u7cfb\u4f9b\u5e94\u5546"

    iput-object v1, v0, Lcom/tencent/tmsecure/module/update/CheckResult;->mMessage:Ljava/lang/String;

    iput-object v6, v0, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-virtual {v4, v0}, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, v3, Lbzc;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->onCheckCanceled()V

    invoke-interface {v4, v12}, Lcom/tencent/tmsecure/module/update/ICheckListener;->onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/tencent/tmsecure/module/update/UpdateConfig;->UPDATE_FLAGS:[I

    array-length v9, v8

    move v1, v2

    :goto_1
    if-lt v1, v9, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v3, v3, Lbzc;->d:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v3, v7, v0, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getConfigV3CPT(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_3
    new-instance v2, Lcom/tencent/tmsecure/module/update/CheckResult;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/update/CheckResult;-><init>()V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/TipInfo;

    if-eqz v0, :cond_e

    iget-object v1, v0, LQQPIM/TipInfo;->strTitle:Ljava/lang/String;

    :goto_3
    iput-object v1, v2, Lcom/tencent/tmsecure/module/update/CheckResult;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, v0, LQQPIM/TipInfo;->strTips:Ljava/lang/String;

    :goto_4
    iput-object v0, v2, Lcom/tencent/tmsecure/module/update/CheckResult;->mMessage:Ljava/lang/String;

    iput-object v6, v2, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-virtual {v4, v2}, Lcom/tencent/tmsecure/module/update/ICheckListener$Proxy;->onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V

    goto :goto_0

    :cond_4
    aget v10, v8, v1

    and-int v0, v10, v5

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    if-ne v10, v0, :cond_7

    iget-object v0, v3, Lbzc;->a:Landroid/content/Context;

    invoke-virtual {v3, v10}, Lbzc;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getSmsCheckerConfInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v0

    :goto_5
    if-nez v0, :cond_5

    new-instance v0, LQQPIM/ConfInfo;

    invoke-direct {v0}, LQQPIM/ConfInfo;-><init>()V

    invoke-static {v10}, Lcom/tencent/tmsecure/module/update/UpdateConfig;->getFileNameByFlag(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, LQQPIM/ConfInfo;->filename:Ljava/lang/String;

    const-string v10, ""

    iput-object v10, v0, LQQPIM/ConfInfo;->checksum:Ljava/lang/String;

    iput v2, v0, LQQPIM/ConfInfo;->timestamp:I

    :cond_5
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_7
    const/16 v0, 0x8

    if-ne v10, v0, :cond_8

    iget-object v0, v3, Lbzc;->a:Landroid/content/Context;

    invoke-virtual {v3, v10}, Lbzc;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getVirusConfInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v0

    goto :goto_5

    :cond_8
    const/4 v0, 0x2

    if-ne v10, v0, :cond_9

    invoke-virtual {v3, v10}, Lbzc;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getLocationConfInfo(Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v0

    goto :goto_5

    :cond_9
    invoke-virtual {v3, v10}, Lbzc;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getFileConfInfo(Ljava/lang/String;)LQQPIM/ConfInfo;

    move-result-object v0

    goto :goto_5

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ConfSrc;

    if-eqz v0, :cond_2

    new-instance v5, Lcom/tencent/tmsecure/module/update/UpdateInfo;

    invoke-direct {v5}, Lcom/tencent/tmsecure/module/update/UpdateInfo;-><init>()V

    iget v7, v0, LQQPIM/ConfSrc;->isincreupdate:I

    if-nez v7, :cond_b

    invoke-virtual {v0}, LQQPIM/ConfSrc;->getFilename()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/tencent/tmsecure/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    :goto_6
    invoke-virtual {v0}, LQQPIM/ConfSrc;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/tmsecure/module/update/UpdateConfig;->getFlagByFileName(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/tencent/tmsecure/module/update/UpdateInfo;->flag:I

    iput v2, v5, Lcom/tencent/tmsecure/module/update/UpdateInfo;->type:I

    invoke-virtual {v0}, LQQPIM/ConfSrc;->getUrl()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/tencent/tmsecure/module/update/UpdateInfo;->url:Ljava/lang/String;

    iput-object v0, v5, Lcom/tencent/tmsecure/module/update/UpdateInfo;->data1:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, LQQPIM/ConfSrc;->getFilename()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".patch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/tencent/tmsecure/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    goto :goto_6

    :cond_c
    if-eqz v3, :cond_d

    invoke-interface {v4, v3}, Lcom/tencent/tmsecure/module/update/ICheckListener;->onCheckEvent(I)V

    :cond_d
    invoke-interface {v4, v12}, Lcom/tencent/tmsecure/module/update/ICheckListener;->onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V

    goto/16 :goto_0

    :cond_e
    const-string v1, ""

    goto/16 :goto_3

    :cond_f
    const-string v0, ""

    goto/16 :goto_4
.end method

.method public final getFileSavePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Lbzc;

    iget-object v0, v0, Lbzc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbzc;

    invoke-direct {v0}, Lbzc;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Lbzc;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Lbzc;

    invoke-virtual {v0, p1}, Lbzc;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Lbzc;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/update/UpdateManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final removeObserver(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Lbzc;

    iget-object v1, v0, Lbzc;->e:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lbzc;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final update(Ljava/util/List;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/update/UpdateInfo;",
            ">;",
            "Lcom/tencent/tmsecure/module/update/IUpdateListener;",
            ")V"
        }
    .end annotation

    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tencent/tmsecure/module/update/UpdateManager;->a:Lbzc;

    iget-object v0, v5, Lbzc;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v6, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;

    invoke-direct {v6, p2}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;-><init>(Lcom/tencent/tmsecure/module/update/IUpdateListener;)V

    invoke-virtual {v6}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onUpdateStarted()V

    invoke-static {}, Lbsv;->a()Lbsv;

    move-result-object v0

    invoke-virtual {v0}, Lbsv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v5, Lbzc;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onUpdateCanceled()V

    :cond_0
    :goto_0
    invoke-virtual {v6}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onUpdateFinished()V

    return-void

    :cond_1
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move v2, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v11, :cond_4

    const/16 v1, 0x32

    invoke-virtual {v6, v0, v1}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onProgressChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V

    :goto_2
    iget v1, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->flag:I

    if-ne v1, v12, :cond_5

    iget-object v1, v5, Lbzc;->a:Landroid/content/Context;

    invoke-virtual {v5, v12}, Lbzc;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/tmsecure/utils/UpdateUtil;->getVirusClientInfo(Landroid/content/Context;Ljava/lang/String;)LQQPIM/VirusClientInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, LQQPIM/VirusClientInfo;->setEngine_version(I)V

    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v5, Lbzc;->d:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v4, v1, v8, v9}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getVirusInfos(LQQPIM/VirusClientInfo;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQQPIM/VirusServerInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, LQQPIM/VirusServerInfo;->getBUpdate()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    invoke-virtual {v5, v12}, Lbzc;->a(I)Ljava/lang/String;

    move-result-object v8

    iget-object v10, v5, Lbzc;->a:Landroid/content/Context;

    invoke-static {v10, v8, v1, v9}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->updateBase(Landroid/content/Context;Ljava/lang/String;LQQPIM/VirusServerInfo;Ljava/util/List;)I

    :cond_2
    move v1, v4

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v7, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    :goto_4
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v5, v0}, Lbzc;->a(Lcom/tencent/tmsecure/module/update/UpdateInfo;)V

    iget-object v0, v5, Lbzc;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v6}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onUpdateCanceled()V

    goto :goto_0

    :cond_4
    int-to-float v1, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v6, v0, v1}, Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;->onProgressChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;I)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->url:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Lbth;

    iget-object v4, v5, Lbzc;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Lbth;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v8, v5, Lbzc;->b:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lbth;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    iput-object v4, v1, Lbth;->g:Ljava/lang/String;

    new-instance v4, Lbtf$a;

    invoke-direct {v4, v6, v0, v7}, Lbtf$a;-><init>(Lcom/tencent/tmsecure/module/update/IUpdateListener$UpdateListener;Lcom/tencent/tmsecure/module/update/UpdateInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iput-object v4, v1, Lbtf;->e:Lbtf$a;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->url:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "?m=def"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v11}, Lbth;->a(Ljava/lang/String;Z)V

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->flag:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    iget-object v1, v5, Lbzc;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tccdb/TelNumberLocator;->getDefault(Landroid/content/Context;)Lcom/tencent/tccdb/TelNumberLocator;

    move-result-object v4

    iget-object v1, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->data1:Ljava/lang/Object;

    check-cast v1, LQQPIM/ConfSrc;

    iget v8, v1, LQQPIM/ConfSrc;->isincreupdate:I

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v5, Lbzc;->b:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, LQQPIM/ConfSrc;->getIuchecksum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Lcom/tencent/tccdb/TelNumberLocator;->patchLocation(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v4}, Lcom/tencent/tccdb/TelNumberLocator;->reload()V

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_8
    move v1, v3

    goto/16 :goto_3
.end method
