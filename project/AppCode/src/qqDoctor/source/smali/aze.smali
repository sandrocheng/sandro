.class public final Laze;
.super Lblt;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laze$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lblt",
        "<",
        "Lla;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private a:Ljt;

.field private b:Lho;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lblt;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laze;->d:Z

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lazf;

    invoke-direct {v1, p0}, Lazf;-><init>(Laze;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Laze;->f:Landroid/os/Handler;

    new-instance v0, Lazi;

    invoke-direct {v0, p0}, Lazi;-><init>(Laze;)V

    iput-object v0, p0, Laze;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Ljava/util/List;)J
    .locals 9

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-wide v1

    :cond_1
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lla;

    invoke-virtual {v0}, Lla;->j()J

    move-result-wide v5

    cmp-long v0, v1, v5

    if-gtz v0, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lla;

    invoke-virtual {v0}, Lla;->j()J

    move-result-wide v0

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-wide v7, v0

    move-wide v1, v7

    goto :goto_0

    :cond_2
    move-wide v0, v1

    goto :goto_1
.end method

.method static synthetic a(Laze;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laze;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Laze;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Laze;->mDataList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Laze;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Laze;->mDataList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Laze;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laze;->d:Z

    return v0
.end method

.method static synthetic c(Laze;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laze;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private d()Lajs;
    .locals 7

    new-instance v0, Lazg;

    invoke-direct {v0, p0}, Lazg;-><init>(Laze;)V

    invoke-virtual {p0, v0}, Laze;->setOnRefreshListener(Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;)V

    new-instance v0, Laka;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Laze;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, p0, v1}, Laka;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic d(Laze;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laze;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Laze;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laze;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Laze;)Ljt;
    .locals 1

    iget-object v0, p0, Laze;->a:Ljt;

    return-object v0
.end method

.method static synthetic g(Laze;)Lho;
    .locals 1

    iget-object v0, p0, Laze;->b:Lho;

    return-object v0
.end method

.method static synthetic h(Laze;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laze;->mDataList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lla;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Laze;->mDataList:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-direct {p0}, Laze;->d()Lajs;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 1

    invoke-direct {p0}, Laze;->d()Lajs;

    move-result-object v0

    return-object v0
.end method

.method protected final createOperatingBarDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFooterView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Laze;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030118

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 4

    iget-object v0, p0, Laze;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Laze;->b:Lho;

    invoke-virtual {v0}, Lho;->bm()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-object v2, p0, Laze;->b:Lho;

    invoke-virtual {v2}, Lho;->bq()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-boolean v0, p0, Laze;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Laze;->a:Ljt;

    invoke-virtual {v0}, Ljt;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laze;->mDataList:Ljava/util/List;

    iget-object v0, p0, Laze;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    new-instance v1, Lcom/tencent/tmsecure/module/market/RequestInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/RequestInfo;-><init>()V

    const/16 v2, 0xb

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->type:I

    iget-object v2, p0, Laze;->b:Lho;

    invoke-virtual {v2}, Lho;->bn()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->time:Ljava/lang/String;

    new-instance v2, Lazh;

    invoke-direct {v2, p0}, Lazh;-><init>(Laze;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchCategoryList(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    :cond_1
    iget-object v0, p0, Laze;->mDataList:Ljava/util/List;

    new-instance v1, Laze$a;

    invoke-direct {v1, p0}, Laze$a;-><init>(Laze;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Laze;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lblt;->onCreate()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Laze;->b:Lho;

    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    iput-object v0, p0, Laze;->a:Ljt;

    iget-object v0, p0, Laze;->mFooterView:Landroid/view/View;

    const v1, 0x7f080365

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laze;->e:Landroid/view/View;

    iget-object v0, p0, Laze;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laze;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Laze;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laze;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laze;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laze;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Laze;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Laze;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laze;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laze;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Laze;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    invoke-virtual {p0}, Laze;->isHasRefreshHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p3, p3, -0x1

    :cond_0
    iget-object v0, p0, Laze;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Laze;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laze;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Laze;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SpecialCategoryDetailActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Laze;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lla;

    const-string v2, "title"

    invoke-virtual {v0}, Lla;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "count"

    invoke-virtual {v0}, Lla;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "id"

    invoke-virtual {v0}, Lla;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "descript"

    invoke-virtual {v0}, Lla;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Laze;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final onOptionClick(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laze;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Laze;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    iput-boolean v2, p0, Laze;->d:Z

    iget-object v0, p0, Laze;->g:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Laze;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Laze;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {p1}, La;->b(Landroid/view/Menu;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lblt;->onResume()V

    invoke-virtual {p0}, Laze;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laze;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laze;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final onRetry()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laze;->setReloadData(Z)V

    iget-object v0, p0, Laze;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    invoke-virtual {p0}, Laze;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public final refreshListData()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Laze;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Laze;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Laze;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Laze;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laze;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Laze;->mContext:Landroid/content/Context;

    const v2, 0x7f0b099a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Laze;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Laze;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Laze;->hideEmptyView()V

    invoke-virtual {p0, v5}, Laze;->setReloadData(Z)V

    :cond_1
    invoke-virtual {p0}, Laze;->isHasRefreshHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Laze;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->onRefreshComplete()V

    :cond_2
    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 3

    const v0, 0x7f0b029c

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    invoke-virtual {p0}, Laze;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Laze;->mContext:Landroid/content/Context;

    const v2, 0x7f0b099b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    return-void
.end method
