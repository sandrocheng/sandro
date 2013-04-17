.class public final Lbos;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/tmsecure/common/BaseServiceConnection;

.field private c:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

.field private d:Lkw;

.field private e:LQQPIM/FeatureKey;

.field private f:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private g:Lkv;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const v0, 0x7f0300d8

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lkw;

    invoke-direct {v0}, Lkw;-><init>()V

    iput-object v0, p0, Lbos;->d:Lkw;

    iput-object p1, p0, Lbos;->a:Landroid/content/Context;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lbos;->f:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v0, p0, Lbos;->b:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/tmsecure/common/BaseServiceConnection;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/common/BaseServiceConnection;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lbos;->b:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    new-instance v0, Lof;

    invoke-direct {v0}, Lof;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    const-class v0, Lof;

    iget-object v1, p0, Lbos;->b:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->bindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iput-object v0, p0, Lbos;->c:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    :cond_0
    iget-object v0, p0, Lbos;->d:Lkw;

    iget-object v1, p0, Lbos;->a:Landroid/content/Context;

    const v2, 0x7f0b00c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkw;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lbos;->d:Lkw;

    iget-object v1, p0, Lbos;->a:Landroid/content/Context;

    const v2, 0x7f0b00c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkw;->setAppName(Ljava/lang/String;)V

    iget-object v0, p0, Lbos;->d:Lkw;

    const-string v1, "http://fwd.3g.qq.com:8080/forward.jsp?bid=902&g_f=20244&imei=&imsi="

    invoke-virtual {v0, v1}, Lkw;->d(Ljava/lang/String;)V

    new-instance v0, LQQPIM/FeatureKey;

    iget-object v1, p0, Lbos;->d:Lkw;

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    iget-object v2, p0, Lbos;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbos;->d:Lkw;

    invoke-virtual {v3}, Lkw;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbos;->d:Lkw;

    invoke-virtual {v4}, Lkw;->D()I

    move-result v4

    iget-object v5, p0, Lbos;->d:Lkw;

    invoke-virtual {v5}, Lkw;->getCertMD5()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lbos;->d:Lkw;

    invoke-virtual {v6}, Lkw;->getSize()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct/range {v0 .. v6}, LQQPIM/FeatureKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lbos;->e:LQQPIM/FeatureKey;

    iget-object v0, p0, Lbos;->e:LQQPIM/FeatureKey;

    iget-object v0, v0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    iget-object v1, p0, Lbos;->c:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->getAllTasks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lof;->a(Ljava/lang/String;Ljava/util/List;)Lkv;

    move-result-object v0

    iput-object v0, p0, Lbos;->g:Lkv;

    iget-object v0, p0, Lbos;->g:Lkv;

    if-nez v0, :cond_2

    iget-object v0, p0, Lbos;->e:LQQPIM/FeatureKey;

    iget-object v0, v0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    invoke-static {v0}, Lof;->a(Ljava/lang/String;)Lkv;

    move-result-object v0

    iput-object v0, p0, Lbos;->g:Lkv;

    :cond_2
    iget-object v0, p0, Lbos;->g:Lkv;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbos;->g:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Lkv;

    iget-object v1, p0, Lbos;->d:Lkw;

    invoke-direct {v0, v1}, Lkv;-><init>(Lkw;)V

    iput-object v0, p0, Lbos;->g:Lkv;

    :cond_4
    invoke-virtual {p0}, Lbos;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "isStartDownloadImmediatly"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lbos;->a()V

    invoke-virtual {p0}, Lbos;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :cond_5
    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lbos;->g:Lkv;

    iget v0, v0, Lkv;->mState:I

    iget-object v1, p0, Lbos;->g:Lkv;

    const/4 v2, -0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_0
    invoke-static {v1}, Lof;->d(Lkv;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lbos;->f:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->installApp(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b5

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbos;->a:Landroid/content/Context;

    const v1, 0x7f0b088e

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lbos;->c:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->continueTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_1

    invoke-static {v1}, Lof;->a(Lkv;)V

    iget-object v0, p0, Lbos;->c:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->startTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    iget-object v0, p0, Lbos;->a:Landroid/content/Context;

    const v1, 0x7f0b00c3

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public final createOperatingBarDataList()Ljava/util/List;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b0550

    invoke-direct {v1, v3, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setStyle(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b00c2

    invoke-direct {v1, v4, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-virtual {v1, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setStyle(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final onBackClick()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbos;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncAssistantActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "isReturnFromDownload"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lbos;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lbos;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f0802a9

    invoke-virtual {p0, v0}, Lbos;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbos;->h:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbos;->a:Landroid/content/Context;

    const v2, 0x7f0b00d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<font color=\'#047ecb\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbos;->a:Landroid/content/Context;

    const v2, 0x7f0b00d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u3001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbos;->a:Landroid/content/Context;

    const v2, 0x7f0b00d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u3001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbos;->a:Landroid/content/Context;

    const v2, 0x7f0b00d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbos;->a:Landroid/content/Context;

    const v2, 0x7f0b00db

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iget-object v1, p0, Lbos;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lbos;->b:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    if-eqz v0, :cond_0

    const-class v0, Lof;

    iget-object v1, p0, Lbos;->b:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->unBindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbos;->b:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {}, Lof;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lof;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Ljava/lang/Class;)Z

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    return-void
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 4

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbos;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncAssistantActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "isReturnFromDownload"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lbos;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lbos;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void

    :pswitch_0
    const/16 v1, 0x66a6

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lbos;->a()V

    const/16 v1, 0x66a7

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const v0, 0x7f0b032b

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    return-void
.end method
