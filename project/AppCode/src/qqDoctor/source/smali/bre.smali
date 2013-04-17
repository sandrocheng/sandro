.class public final Lbre;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Lkw;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lzo;

.field private final b:Lcom/tencent/tmsecure/module/software/SoftwareManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v0

    iput-object v0, p0, Lbre;->a:Lzo;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lbre;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    return-void
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 8

    new-instance v0, Lamc;

    iget-object v1, p0, Lbre;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lbre;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v5, p0, Lbre;->mDataList:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1, p0, v2, v3}, Lamc;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;Landroid/widget/ListView;Ljava/util/List;)V

    return-object v0
.end method

.method public final loadDataList()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lbre;->b:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getInstalledApp(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, La;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbre;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    new-instance v2, Lhg;

    invoke-direct {v2}, Lhg;-><init>()V

    iget-object v2, v2, Lhg;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lbre;->a:Lzo;

    invoke-virtual {v2, v0}, Lzo;->e(Lkw;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v4}, Lkw;->b(I)V

    iget-object v2, p0, Lbre;->mDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbre;->mDataList:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lbre;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

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

    iget-object v0, p0, Lbre;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SystemOptimizeActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_back_to_main"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onBackClick()V

    return-void
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x667b

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    invoke-virtual {p0}, Lbre;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lbre;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/systemoptimize/UserWhiteListSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lbre;->a:Lzo;

    iget-object v0, p0, Lbre;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lzo;->a(Lkw;Z)V

    iget-object v0, p0, Lbre;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lbre;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    iget-object v0, p0, Lbre;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onStart()V

    const v0, 0x7f0b0955

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    return-void
.end method

.method public final refreshListData()V
    .locals 6

    invoke-virtual {p0}, Lbre;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lbre;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbre;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbre;->setReloadData(Z)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0977

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const v0, 0x7f0b0978

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(I)V

    return-void
.end method
