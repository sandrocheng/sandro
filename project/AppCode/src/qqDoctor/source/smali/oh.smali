.class final Loh;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lof;


# direct methods
.method constructor <init>(Lof;)V
    .locals 0

    iput-object p1, p0, Loh;->a:Lof;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Loh;Lkv;Z)LQQPIM/DownSoftInfo;
    .locals 11

    const/4 v3, 0x3

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v4, LQQPIM/DownSoftInfo;

    invoke-direct {v4}, LQQPIM/DownSoftInfo;-><init>()V

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setNProductId(I)V

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setNSoftId(I)V

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setNFileId(I)V

    if-eqz p2, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setNSuccess(B)V

    iget v0, p1, Lkv;->mSpeed:I

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setNAvgSpeed(I)V

    iget v0, p1, Lkv;->b:I

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setCategoryid(I)V

    iget v0, p1, Lkv;->c:I

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setPos(I)V

    iget-object v0, p1, Lkv;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setUrl(Ljava/lang/String;)V

    iget v0, p1, Lkv;->mErrorCode:I

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setErrorcode(I)V

    iget-object v0, p1, Lkv;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setDownnetname(Ljava/lang/String;)V

    iget-object v0, p1, Lkv;->mNetworkType:LQQPIM/ConnectType;

    invoke-virtual {v0}, LQQPIM/ConnectType;->value()I

    move-result v0

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setDownnettype(I)V

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setReportnetname(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/ConnectType;->value()I

    move-result v0

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setReportnettype(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lkv;->mParentPath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p1, Lkv;->mName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".tmp"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setNDownSize(I)V

    iget-wide v5, p1, Lkv;->mSize:J

    long-to-int v5, v5

    invoke-virtual {v4, v5}, LQQPIM/DownSoftInfo;->setFilesize(I)V

    iget-object v5, p1, Lkv;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, LQQPIM/DownSoftInfo;->setErrormsg(Ljava/lang/String;)V

    iget v5, p1, Lkv;->mErrorRssi:I

    invoke-virtual {v4, v5}, LQQPIM/DownSoftInfo;->setRssi(I)V

    iget-wide v5, p1, Lkv;->mSize:J

    int-to-long v7, v0

    sub-long/2addr v5, v7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v7, "mounted"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setSdcardstatus(I)V

    iget-object v0, p1, Lkv;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setHostaddress(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lkv;->mParentPath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p1, Lkv;->mName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setIsvalid(I)V

    iget-object v0, p1, Lkv;->d:Lkw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Loh;->a:Lof;

    invoke-static {v0}, Lof;->d(Lof;)Lcom/tencent/tmsecure/module/software/SoftwareManager;

    move-result-object v0

    iget-object v5, p1, Lkv;->d:Lkw;

    invoke-virtual {v5}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x49

    invoke-virtual {v0, v5, v6}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_3
    int-to-byte v0, v2

    invoke-virtual {v4, v0}, LQQPIM/DownSoftInfo;->setNDownType(B)V

    :cond_1
    iget-object v2, p1, Lkv;->d:Lkw;

    if-eqz v2, :cond_6

    new-instance v5, Lcom/tencent/tmsecure/module/market/RequestInfo;

    invoke-direct {v5}, Lcom/tencent/tmsecure/module/market/RequestInfo;-><init>()V

    iput v1, v5, Lcom/tencent/tmsecure/module/market/RequestInfo;->type:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, LQQPIM/SoftFeature;

    invoke-direct {v7}, LQQPIM/SoftFeature;-><init>()V

    new-instance v8, LQQPIM/FeatureKey;

    invoke-direct {v8}, LQQPIM/FeatureKey;-><init>()V

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v8, v0}, LQQPIM/FeatureKey;->setUniCode(Ljava/lang/String;)V

    invoke-virtual {v2}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    invoke-virtual {v8, v0}, LQQPIM/FeatureKey;->setSoftName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {v8, v0}, LQQPIM/FeatureKey;->setVersion(Ljava/lang/String;)V

    invoke-virtual {v2}, Lkw;->getVersionCode()I

    move-result v0

    invoke-virtual {v8, v0}, LQQPIM/FeatureKey;->setVersionCode(I)V

    invoke-virtual {v2}, Lkw;->getCertMD5()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    invoke-virtual {v8, v0}, LQQPIM/FeatureKey;->setCert(Ljava/lang/String;)V

    invoke-virtual {v2}, Lkw;->getSize()J

    move-result-wide v9

    long-to-int v0, v9

    invoke-virtual {v8, v0}, LQQPIM/FeatureKey;->setFileSize(I)V

    invoke-virtual {v7, v8}, LQQPIM/SoftFeature;->setFeatureKey(LQQPIM/FeatureKey;)V

    invoke-virtual {v7, v1}, LQQPIM/SoftFeature;->setEngineVersion(I)V

    invoke-virtual {v7, v3}, LQQPIM/SoftFeature;->setRequestType(I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    new-instance v1, Loj;

    invoke-direct {v1, v8, v4}, Loj;-><init>(LQQPIM/FeatureKey;LQQPIM/DownSoftInfo;)V

    invoke-virtual {v0, v5, v6, v1}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchAnalyseInfo(Lcom/tencent/tmsecure/module/market/RequestInfo;Ljava/util/List;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    :cond_6
    return-object v4

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    invoke-static {}, La;->b()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x2

    goto/16 :goto_1

    :cond_9
    new-instance v0, Lft$a;

    invoke-direct {v0}, Lft$a;-><init>()V

    invoke-static {v0}, Lft;->a(Lft$a;)V

    iget-wide v7, v0, Lft$a;->a:J

    cmp-long v0, v7, v5

    if-gez v0, :cond_a

    move v0, v3

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto/16 :goto_2

    :cond_c
    move v2, v1

    goto/16 :goto_3
.end method

.method private a(Lkv;Z)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqr;->a(Landroid/content/Context;)Lqr;

    move-result-object v4

    invoke-virtual {v4, v0}, Lqr;->c(Ljava/lang/String;)LQQPIM/CloudInfoRes;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v0, 0x3

    invoke-virtual {v5, v0}, LQQPIM/CloudInfoRes;->setPhase(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    long-to-int v0, v0

    invoke-virtual {v5, v0}, LQQPIM/CloudInfoRes;->setTime(I)V

    invoke-virtual {v5}, LQQPIM/CloudInfoRes;->getCmdres()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudCmdRes;

    if-eqz p2, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, LQQPIM/CloudCmdRes;->setRes(I)V

    :cond_2
    if-eqz p2, :cond_4

    :goto_2
    invoke-virtual {v5, v2}, LQQPIM/CloudInfoRes;->setRes(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v0}, Lqr;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Loi;

    invoke-direct {v1, p0, p1, p2}, Loi;-><init>(Loh;Lkv;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Loh;->a:Lof;

    invoke-static {v0}, Lof;->c(Lof;)Lov;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkv;

    invoke-virtual {v1, v0}, Lov;->a(Lkv;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkv;

    iget v1, v0, Lkv;->mProgress:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Loh;->a:Lof;

    invoke-static {v1}, Lof;->c(Lof;)Lov;

    move-result-object v1

    invoke-virtual {v1, v0}, Lov;->a(Lkv;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkv;

    iget-object v1, p0, Loh;->a:Lof;

    invoke-static {v1}, Lof;->c(Lof;)Lov;

    move-result-object v1

    iget-object v2, v0, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lov;->e(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Loh;->a(Lkv;Z)V

    invoke-static {v0}, Lof;->d(Lkv;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Loh;->a:Lof;

    invoke-static {v1}, Lof;->d(Lof;)Lcom/tencent/tmsecure/module/software/SoftwareManager;

    move-result-object v1

    invoke-static {v0}, Lof;->d(Lkv;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->installApp(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-static {}, Lof;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lof;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Ljava/lang/Class;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b5

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Loh;->a:Lof;

    invoke-static {v0}, Lof;->c(Lof;)Lov;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkv;

    invoke-virtual {v1, v0}, Lov;->b(Lkv;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkv;

    iget-object v2, p0, Loh;->a:Lof;

    invoke-static {v2}, Lof;->c(Lof;)Lov;

    move-result-object v2

    invoke-virtual {v2, v0}, Lov;->c(Lkv;)V

    new-instance v2, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;

    invoke-direct {v2}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;-><init>()V

    invoke-static {v2}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getStorageCardSize(Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;)V

    iget-wide v2, v2, Lcom/tencent/tmsecure/utils/PhoneInfoUtil$SizeInfo;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, v0, v1}, Loh;->a(Lkv;Z)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Loh;->a:Lof;

    invoke-static {v0}, Lof;->c(Lof;)Lov;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lov;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move v2, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkv;

    iget-boolean v1, v1, Lkv;->isWaitingToPaused:Z

    if-eqz v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Loh;->a:Lof;

    invoke-static {v1}, Lof;->c(Lof;)Lov;

    move-result-object v1

    invoke-virtual {v1, v0}, Lov;->b(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Loh;->a:Lof;

    invoke-static {v0}, Lof;->c(Lof;)Lov;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lov;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
