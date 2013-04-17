.class public final Lbrf;
.super Lbmd;


# instance fields
.field protected b:Landroid/os/Handler;

.field private d:Ljt;

.field private e:Ljk;

.field private f:Ljava/lang/String;

.field private g:Lkv;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lbmd;-><init>(Landroid/content/Context;)V

    new-instance v0, Lbrg;

    invoke-direct {v0, p0}, Lbrg;-><init>(Lbrf;)V

    iput-object v0, p0, Lbrf;->b:Landroid/os/Handler;

    new-instance v0, Lbrj;

    invoke-direct {v0, p0}, Lbrj;-><init>(Lbrf;)V

    iput-object v0, p0, Lbrf;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lbrf;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrf;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lbrf;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lbrf;->mDataList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lbrf;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbrf;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lbrf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbrf;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lbrf;)Ljt;
    .locals 1

    iget-object v0, p0, Lbrf;->d:Ljt;

    return-object v0
.end method

.method static synthetic e(Lbrf;)Ljk;
    .locals 1

    iget-object v0, p0, Lbrf;->e:Ljk;

    return-object v0
.end method

.method static synthetic f(Lbrf;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbrf;->mDataList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkv;",
            ">;>;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbrf;->mDataList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a_()V
    .locals 2

    invoke-virtual {p0}, Lbrf;->g()V

    iget-object v0, p0, Lbrf;->mDataList:Ljava/util/List;

    invoke-static {v0}, Lbrf;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbrf;->mDataList:Ljava/util/List;

    invoke-virtual {p0}, Lbrf;->f()Lala;

    move-result-object v0

    invoke-virtual {p0}, Lbrf;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lala;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbrf;->h()V

    iget-object v0, p0, Lbrf;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbrf;->setReloadData(Z)V

    :cond_0
    return-void
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    new-instance v1, Lcom/tencent/tmsecure/module/market/RequestInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/RequestInfo;-><init>()V

    iput v3, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->categoryID:I

    iput v4, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchOffset:I

    const/16 v2, 0x400

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchSize:I

    const/16 v2, 0xd

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->type:I

    iput v4, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->sort_type:I

    new-instance v2, Lbri;

    invoke-direct {v2, p0}, Lbri;-><init>(Lbrf;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchSpecialCategory(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IFetchSpecialCategoryListener;)V

    iget-object v0, p0, Lbrf;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrf;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lbrf;->d:Ljt;

    iget-object v1, p0, Lbrf;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljt;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbmd;->a:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-static {v0, v1, v3}, La;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbrf;->mDataList:Ljava/util/List;

    :cond_1
    invoke-virtual {p0}, Lbrf;->a_()V

    return-void
.end method

.method public final onBackClick()V
    .locals 4

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

    iget-object v0, p0, Lbrf;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_back_to_main"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Lbmd;->onBackClick()V

    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lbmd;->onCreate()V

    invoke-static {}, Lho;->a()Lho;

    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    iput-object v0, p0, Lbrf;->d:Ljt;

    new-instance v0, Ljk;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbrf;->e:Ljk;

    iget-object v0, p0, Lbrf;->mContext:Landroid/content/Context;

    const v1, 0x7f0b02b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbrf;->f:Ljava/lang/String;

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, -0x1

    invoke-virtual {p0}, Lbrf;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v1, v0, Lkv;->d:Lkw;

    invoke-virtual {v1}, Lkw;->o()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    :cond_0
    iget v1, v0, Lkv;->mState:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    iget v1, v0, Lkv;->mState:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-static {v0}, Lof;->a(Lkv;)V

    iput-object v0, p0, Lbrf;->g:Lkv;

    :cond_2
    iget v1, v0, Lkv;->mState:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    const-class v1, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v2, v0, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->startUpApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lbrf;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbrf;->mContext:Landroid/content/Context;

    const v3, 0x7f0b06af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {p0, v0, v4}, Lbrf;->a(Lkw;I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {p0, v0, v4}, Lbrf;->a(Lkw;I)V

    goto :goto_0
.end method

.method public final onOptionClick(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbrf;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lbrf;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v0, p0, Lbrf;->h:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbrf;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lbrf;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lbrf;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/DownloadManagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x36 -> :sswitch_1
    .end sparse-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lbrf;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {p1}, La;->a(Landroid/view/Menu;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lbmd;->onResume()V

    invoke-virtual {p0}, Lbrf;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrf;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbrf;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final onRetry()V
    .locals 2

    iget-object v0, p0, Lbrf;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lbmd;->onStart()V

    iget-object v0, p0, Lbrf;->g:Lkv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrf;->g:Lkv;

    invoke-static {v0}, Lof;->b(Lkv;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbrf;->g:Lkv;

    :cond_0
    const v0, 0x7f0b0070

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 2

    iget-object v0, p0, Lbrf;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbrf;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    return-void
.end method
