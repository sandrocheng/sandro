.class public final Laqa;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

.field private c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private d:Lcom/tencent/tmsecure/common/BaseServiceConnection;

.field private e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f030057

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Laqa;)Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;
    .locals 1

    iget-object v0, p0, Laqa;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    return-object v0
.end method

.method static synthetic a(Laqa;Lkv;)V
    .locals 2

    invoke-static {p1}, Lof;->d(Lkv;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Laqa;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->installApp(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b5

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laqa;->mContext:Landroid/content/Context;

    const v1, 0x7f0b088e

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public final onBackClick()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "extra_back_to_main"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Laqa;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Laqa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Laqa;->a:Landroid/widget/ListView;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Laqa;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Laqa;->d:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    if-eqz v0, :cond_0

    const-class v0, Lof;

    iget-object v1, p0, Laqa;->d:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->unBindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Laqa;->d:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {}, Lof;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lof;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Ljava/lang/Class;)Z

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    iget-object v0, p0, Laqa;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move-object v0, v7

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laqa;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :sswitch_0
    const/16 v0, 0x65dd

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laqa;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/commontools/LocationQueryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x675d

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dQ()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lho;->dP()V

    :cond_1
    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v1, "com.tencent.benchmark"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laqa;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v1, "com.tencent.benchmark"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->startUpApp(Ljava/lang/String;)Z

    move-object v0, v7

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laqa;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/BenchmarkDownloadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x65de

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laqa;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/commontools/NumberQueryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x65dc

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laqa;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/commontools/IPCallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x65db

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laqa;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/commontools/ScreenShotListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x6603

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laqa;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncAssistantActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x660a

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Lxn;

    iget-object v1, p0, Laqa;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lxn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lxn;->a()V

    move-object v0, v7

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x6607

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laqa;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/smscheck/SMSChargeCheckActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x46

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v1, "com.tencent.token"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Laqa;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v1, "com.tencent.token"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->startUpApp(Ljava/lang/String;)Z

    move-object v0, v7

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Laqa;->d:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    if-nez v0, :cond_4

    new-instance v0, Lcom/tencent/tmsecure/common/BaseServiceConnection;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/common/BaseServiceConnection;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Laqa;->d:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    new-instance v0, Lof;

    invoke-direct {v0}, Lof;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    const-class v0, Lof;

    iget-object v1, p0, Laqa;->d:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->bindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iput-object v0, p0, Laqa;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    :cond_4
    new-instance v8, Lkw;

    invoke-direct {v8}, Lkw;-><init>()V

    const-string v0, "com.tencent.token"

    invoke-virtual {v8, v0}, Lkw;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Laqa;->mContext:Landroid/content/Context;

    const v1, 0x7f0b039b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lkw;->setAppName(Ljava/lang/String;)V

    const-string v0, "http://tools.3g.qq.com/j/MToken.apk"

    invoke-virtual {v8, v0}, Lkw;->d(Ljava/lang/String;)V

    new-instance v0, LQQPIM/FeatureKey;

    invoke-virtual {v8}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, ""

    :cond_5
    invoke-virtual {v8}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lkw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lkw;->D()I

    move-result v4

    invoke-virtual {v8}, Lkw;->getCertMD5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lkw;->getSize()J

    move-result-wide v9

    long-to-int v6, v9

    invoke-direct/range {v0 .. v6}, LQQPIM/FeatureKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object v1, v0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    iget-object v2, p0, Laqa;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->getAllTasks()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lof;->a(Ljava/lang/String;Ljava/util/List;)Lkv;

    move-result-object v1

    if-nez v1, :cond_17

    iget-object v0, v0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    invoke-static {v0}, Lof;->a(Ljava/lang/String;)Lkv;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    iget-object v1, v0, Lkv;->d:Lkw;

    if-nez v1, :cond_7

    :cond_6
    new-instance v0, Lkv;

    invoke-direct {v0, v8}, Lkv;-><init>(Lkw;)V

    :cond_7
    iget v3, v0, Lkv;->mState:I

    const/4 v2, 0x1

    const v1, 0x7f0b0065

    const/4 v4, -0x3

    if-eq v3, v4, :cond_8

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    :cond_8
    const v1, 0x7f0b0b2a

    :cond_9
    :goto_2
    new-instance v4, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v5, p0, Laqa;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Laqa;->mContext:Landroid/content/Context;

    const v6, 0x7f0b039b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Laqa;->mContext:Landroid/content/Context;

    const v6, 0x7f0b03a0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v5, Laqd;

    invoke-direct {v5, p0, v4, v3, v0}, Laqd;-><init>(Laqa;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;ILkv;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v1, v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0550

    new-instance v1, Laqe;

    invoke-direct {v1, v4}, Laqe;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v4, v0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setButtonEnable(IZ)V

    invoke-virtual {v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    move-object v0, v7

    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    if-eqz v3, :cond_b

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    :cond_b
    const v1, 0x7f0b06d5

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_9
    const/16 v0, 0x6666

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v2, "com.wandoujia.phoenix2"

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x66a3

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    iget-object v0, p0, Laqa;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const-string v1, "com.wandoujia.phoenix2"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->startUpApp(Ljava/lang/String;)Z

    move-object v0, v7

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Laqa;->d:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    if-nez v0, :cond_d

    new-instance v0, Lcom/tencent/tmsecure/common/BaseServiceConnection;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/common/BaseServiceConnection;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Laqa;->d:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    new-instance v0, Lof;

    invoke-direct {v0}, Lof;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    const-class v0, Lof;

    iget-object v1, p0, Laqa;->d:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->bindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iput-object v0, p0, Laqa;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    :cond_d
    new-instance v8, Lkw;

    invoke-direct {v8}, Lkw;-><init>()V

    const-string v0, "com.wandoujia.phoenix2"

    invoke-virtual {v8, v0}, Lkw;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Laqa;->mContext:Landroid/content/Context;

    const v1, 0x7f0b039a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lkw;->setAppName(Ljava/lang/String;)V

    const-string v0, "http://fwd.3g.qq.com:8080/forward.jsp?bid=898&g_f=18870&imei=&imsi="

    invoke-virtual {v8, v0}, Lkw;->d(Ljava/lang/String;)V

    new-instance v0, LQQPIM/FeatureKey;

    invoke-virtual {v8}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    const-string v1, ""

    :cond_e
    invoke-virtual {v8}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lkw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lkw;->D()I

    move-result v4

    invoke-virtual {v8}, Lkw;->getCertMD5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lkw;->getSize()J

    move-result-wide v9

    long-to-int v6, v9

    invoke-direct/range {v0 .. v6}, LQQPIM/FeatureKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object v1, v0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    iget-object v2, p0, Laqa;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->getAllTasks()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lof;->a(Ljava/lang/String;Ljava/util/List;)Lkv;

    move-result-object v1

    if-nez v1, :cond_16

    iget-object v0, v0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    invoke-static {v0}, Lof;->a(Ljava/lang/String;)Lkv;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_f

    iget-object v1, v0, Lkv;->d:Lkw;

    if-nez v1, :cond_10

    :cond_f
    new-instance v0, Lkv;

    invoke-direct {v0, v8}, Lkv;-><init>(Lkw;)V

    :cond_10
    iget v3, v0, Lkv;->mState:I

    const/4 v2, 0x1

    const v1, 0x7f0b0065

    const/4 v4, -0x3

    if-eq v3, v4, :cond_11

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    :cond_11
    const v1, 0x7f0b0b2a

    :cond_12
    :goto_4
    new-instance v4, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v5, p0, Laqa;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Laqa;->mContext:Landroid/content/Context;

    const v6, 0x7f0b039e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Laqa;->mContext:Landroid/content/Context;

    const v6, 0x7f0b039f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v5, Laqb;

    invoke-direct {v5, p0, v4, v3, v0}, Laqb;-><init>(Laqa;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;ILkv;)V

    const/4 v0, 0x1

    invoke-virtual {v4, v1, v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0550

    new-instance v1, Laqc;

    invoke-direct {v1, v4}, Laqc;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v4, v0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setButtonEnable(IZ)V

    invoke-virtual {v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    move-object v0, v7

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x1

    if-eq v3, v4, :cond_14

    if-eqz v3, :cond_14

    const/4 v4, -0x1

    if-eq v3, v4, :cond_14

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    :cond_14
    const v1, 0x7f0b06d5

    const/4 v2, 0x0

    goto :goto_4

    :sswitch_a
    const/16 v2, 0x66b3

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laqa;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/NotificationAdblockActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getmTagImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dm()V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x6736

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    const-string v1, "http://m.buy.qq.com/t/vb2c/buyMobile.xhtml?gcfa=11910151&_lp=1&icfaId=&o_icfa=&pgid=11-1&t=t&extWrap=1&extLogo=&extTag=doctor"

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Laqa;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "extra_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_title"

    const v2, 0x7f0b03a1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_15
    move-object v0, v1

    goto/16 :goto_0

    :cond_16
    move-object v0, v1

    goto/16 :goto_3

    :cond_17
    move-object v0, v1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0xe -> :sswitch_4
        0x29 -> :sswitch_8
        0x2a -> :sswitch_7
        0x2b -> :sswitch_5
        0x2c -> :sswitch_6
        0x2d -> :sswitch_a
        0x2f -> :sswitch_1
        0x3e9 -> :sswitch_9
        0x3ea -> :sswitch_b
    .end sparse-switch
.end method

.method public final onResume()V
    .locals 6

    const/4 v2, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    iget-object v1, p0, Laqa;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Laqa;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    iget-object v0, p0, Laqa;->a:Landroid/widget/ListView;

    iget-object v1, p0, Laqa;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Laqa;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gt-i9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lii;->a()Lii;

    move-result-object v0

    iget-object v0, v0, Lii;->a:Landroid/content/SharedPreferences;

    const-string v1, "set_sdk_flag"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManager;->getIpDialSetting()Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpDialMode()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/IpDialManagerSetting;->getIpHeader()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Laqa;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v2

    if-ne v1, v5, :cond_2

    iget-object v0, p0, Laqa;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lii;->a()Lii;

    move-result-object v0

    iget-object v0, v0, Lii;->a:Landroid/content/SharedPreferences;

    const-string v1, "auto"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lii;->a()Lii;

    move-result-object v0

    iget-object v0, v0, Lii;->a:Landroid/content/SharedPreferences;

    const-string v2, "number"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Laqa;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00a4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStart()V

    const v0, 0x7f0b0001

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const v0, 0x7f0b008a

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    return-void
.end method
