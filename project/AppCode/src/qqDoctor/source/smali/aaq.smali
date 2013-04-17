.class public final Laaq;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;

.field b:Lkw;

.field protected c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

.field private f:Z

.field private g:Lho;

.field private h:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

.field private i:Lcom/tencent/tmsecure/common/BaseServiceConnection;

.field private j:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener",
            "<",
            "Lkv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laaq;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laaq;->f:Z

    new-instance v0, Lcom/tencent/tmsecure/common/BaseServiceConnection;

    const-class v1, Lss;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/common/BaseServiceConnection;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Laaq;->i:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    new-instance v0, Laar;

    invoke-direct {v0, p0}, Laar;-><init>(Laaq;)V

    iput-object v0, p0, Laaq;->j:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    iput-object p2, p0, Laaq;->d:Ljava/lang/String;

    iput-object p1, p0, Laaq;->a:Landroid/content/Context;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Laaq;->g:Lho;

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    iput-object v0, p0, Laaq;->e:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    return-void
.end method

.method public static a(Landroid/content/Context;LQQPIM/CloudInfo;)Lcom/tencent/tmsecure/module/update/CheckResult;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lcom/tencent/tmsecure/module/update/CheckResult;

    invoke-direct {v3}, Lcom/tencent/tmsecure/module/update/CheckResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-virtual {p1}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, LQQPIM/TipsInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/tmsecure/module/update/CheckResult;->mTitle:Ljava/lang/String;

    invoke-virtual {v4}, LQQPIM/TipsInfo;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/tmsecure/module/update/CheckResult;->mMessage:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, LQQPIM/CloudInfo;->getCloudcmds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudCmd;

    invoke-virtual {v0}, LQQPIM/CloudCmd;->getCmdid()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    if-eqz v4, :cond_6

    invoke-virtual {v4}, LQQPIM/TipsInfo;->getAtype()I

    move-result v4

    if-ne v4, v1, :cond_4

    :goto_1
    new-instance v4, Lcom/tencent/tmsecure/module/update/UpdateInfo;

    invoke-direct {v4}, Lcom/tencent/tmsecure/module/update/UpdateInfo;-><init>()V

    iput v1, v4, Lcom/tencent/tmsecure/module/update/UpdateInfo;->type:I

    const/high16 v1, 0x20

    iput v1, v4, Lcom/tencent/tmsecure/module/update/UpdateInfo;->flag:I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/tmsecure/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    iget-object v1, v3, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, LQQPIM/CloudCmd;->getParam()[B

    move-result-object v0

    new-instance v1, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v0, "cloudcmd"

    new-instance v4, LQQPIM/SoftUpdateInfo;

    invoke-direct {v4}, LQQPIM/SoftUpdateInfo;-><init>()V

    invoke-virtual {v1, v0, v4}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/SoftUpdateInfo;

    if-eqz v0, :cond_3

    iget-object v1, v3, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/update/UpdateInfo;

    invoke-virtual {v0}, LQQPIM/SoftUpdateInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmsecure/module/update/UpdateInfo;->url:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, LQQPIM/SoftUpdateInfo;->getNewfeature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v4, 0x7f0b0615

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, LQQPIM/SoftUpdateInfo;->getNewversion()LQQPIM/ProductVersion;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4}, LQQPIM/ProductVersion;->getPversion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, LQQPIM/ProductVersion;->getCversion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, LQQPIM/ProductVersion;->getHotfix()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/tmsecure/module/update/UpdateInfo;->data1:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const v1, 0x7f0b0616

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, LQQPIM/SoftUpdateInfo;->getPkg_size()I

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0xa

    shl-long/2addr v0, v4

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    const-string v0, "0"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/tmsecure/module/update/CheckResult;->mMessage:Ljava/lang/String;

    :cond_3
    move-object v0, v3

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto/16 :goto_1

    :cond_5
    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move v1, v2

    goto/16 :goto_1
.end method

.method static synthetic a(Laaq;)V
    .locals 3

    new-instance v0, Lof;

    invoke-direct {v0}, Lof;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    const-class v0, Lof;

    iget-object v1, p0, Laaq;->i:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->bindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iput-object v0, p0, Laaq;->h:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v0, p0, Laaq;->b:Lkw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laaq;->h:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b086d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b0a2a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->h:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Laaq;->j:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->registListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V

    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laaq;->h:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->getAllTasks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lof;->a(Ljava/lang/String;Ljava/util/List;)Lkv;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lkv;->d:Lkw;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lkv;->d:Lkw;

    invoke-virtual {v1}, Lkw;->getVersionCode()I

    move-result v1

    iget-object v2, p0, Laaq;->b:Lkw;

    invoke-virtual {v2}, Lkw;->getVersionCode()I

    move-result v2

    if-ge v1, v2, :cond_3

    :cond_2
    new-instance v0, Lkv;

    iget-object v1, p0, Laaq;->b:Lkw;

    invoke-direct {v0, v1}, Lkv;-><init>(Lkw;)V

    move-object v1, v0

    :goto_1
    iget v0, v1, Lkv;->mState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Laaq;->h:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->startTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Laaq;->h:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->continueTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto :goto_0

    :pswitch_3
    :try_start_0
    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v1}, Lof;->d(Lkv;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->installApp(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b5

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Laaq;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Laaq;->h:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laaq;->h:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Laaq;->j:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->unregistListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V

    iput-object v2, p0, Laaq;->h:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    :cond_0
    const-class v0, Lof;

    iget-object v1, p0, Laaq;->i:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->unBindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)V

    iput-object v2, p0, Laaq;->i:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/tmsecure/module/update/ICheckListener;)Lcom/tencent/tmsecure/module/update/CheckResult;
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x3

    iput-boolean v2, p0, Laaq;->f:Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/tencent/tmsecure/module/update/ICheckListener;->onCheckStarted()V

    :cond_0
    new-instance v1, Lcom/tencent/tmsecure/module/update/CheckResult;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/update/CheckResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, LQQPIM/ClientVersionInfo;

    const/4 v6, 0x7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "buildno="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "build"

    invoke-static {v8}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&version="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "softversion"

    invoke-static {v8}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&productid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "product"

    invoke-static {v8}, Lcom/tencent/tmsecure/common/TMSApplication;->getIntFromEnvMap(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-direct {v5, v6, v3, v7, v8}, LQQPIM/ClientVersionInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v5, p0, Laaq;->f:Z

    if-eqz v5, :cond_2

    move v0, v4

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_4

    invoke-interface {p1, v0}, Lcom/tencent/tmsecure/module/update/ICheckListener;->onCheckEvent(I)V

    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/tencent/tmsecure/module/update/ICheckListener;->onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V

    :cond_1
    :goto_2
    return-object v1

    :cond_2
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v5, p0, Laaq;->e:Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v5, v0, v6}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->getUpdatesV2(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/ServerCmdInfo;

    if-eqz v0, :cond_8

    iget-boolean v6, p0, Laaq;->f:Z

    if-eqz v6, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, LQQPIM/ServerCmdInfo;->getCloudinfos()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Laaq;->a(Landroid/content/Context;LQQPIM/CloudInfo;)Lcom/tencent/tmsecure/module/update/CheckResult;

    move-result-object v0

    :goto_3
    iget-boolean v1, p0, Laaq;->f:Z

    if-eqz v1, :cond_6

    move-object v1, v0

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    invoke-interface {p1, v1}, Lcom/tencent/tmsecure/module/update/ICheckListener;->onCheckFinished(Lcom/tencent/tmsecure/module/update/CheckResult;)V

    goto :goto_2

    :cond_6
    move-object v1, v0

    move v0, v5

    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_3

    :cond_8
    move v0, v5

    goto :goto_0
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Laaq;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/tencent/tmsecure/module/update/CheckResult;)V
    .locals 4

    iget-object v0, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;

    iget v1, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Laaq;->g:Lho;

    invoke-virtual {v1}, Lho;->aP()V

    iget-object v1, p0, Laaq;->g:Lho;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/update/CheckResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lho;->l(Ljava/lang/String;)V

    :cond_1
    const-class v1, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v2, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x79

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v1

    invoke-static {v1}, La;->a(Lcom/tencent/tmsecure/module/software/AppEntity;)Lkw;

    move-result-object v1

    iput-object v1, p0, Laaq;->b:Lkw;

    iget-object v1, p0, Laaq;->b:Lkw;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/update/UpdateInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lkw;->d(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->b:Lkw;

    iget-object v1, p0, Laaq;->b:Lkw;

    invoke-virtual {v1}, Lkw;->getVersionCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lkw;->setVersionCode(I)V

    iget-object v0, p0, Laaq;->b:Lkw;

    iget-object v1, p0, Laaq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkw;->h(Ljava/lang/String;)V

    iget-object v0, p0, Laaq;->c:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Laat;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Laat;-><init>(Laaq;Landroid/os/Looper;)V

    iput-object v0, p0, Laaq;->c:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Laaq;->c:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
