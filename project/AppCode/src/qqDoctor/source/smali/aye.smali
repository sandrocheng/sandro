.class public final Laye;
.super Lawy;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lawy",
        "<",
        "Lkw;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:Ljt;

.field private n:Lho;

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lawy;-><init>(Landroid/content/Context;)V

    iput v1, p0, Laye;->g:I

    const/16 v0, 0xf

    iput v0, p0, Laye;->h:I

    iput v1, p0, Laye;->i:I

    iput v1, p0, Laye;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laye;->k:Z

    iput v1, p0, Laye;->l:I

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Layf;

    invoke-direct {v1, p0}, Layf;-><init>(Laye;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Laye;->o:Landroid/os/Handler;

    return-void
.end method

.method private a()Lajw;
    .locals 7

    new-instance v0, Layg;

    invoke-direct {v0, p0}, Layg;-><init>(Laye;)V

    invoke-virtual {p0, v0}, Laye;->setOnRefreshListener(Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;)V

    new-instance v0, Lajw;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Laye;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, p0, v1}, Lajw;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic a(Laye;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laye;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Laye;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Laye;->mDataList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Laye;Z)Z
    .locals 0

    iput-boolean p1, p0, Laye;->k:Z

    return p1
.end method

.method static synthetic b(Laye;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Laye;->mDataList:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic c(Laye;)V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Laye;->g:I

    const/16 v0, 0xf

    iput v0, p0, Laye;->h:I

    iput v1, p0, Laye;->j:I

    iput v1, p0, Laye;->l:I

    return-void
.end method

.method static synthetic d(Laye;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 3

    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    new-instance v1, Lcom/tencent/tmsecure/module/market/RequestInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/RequestInfo;-><init>()V

    iget v2, p0, Laye;->d:I

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->categoryID:I

    iget v2, p0, Laye;->g:I

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchOffset:I

    iget v2, p0, Laye;->h:I

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchSize:I

    const/4 v2, 0x4

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->type:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->sort_type:I

    new-instance v2, Layh;

    invoke-direct {v2, p0}, Layh;-><init>(Laye;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchSoftwareList(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    return-void
.end method

.method static synthetic e(Laye;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget v0, p0, Laye;->g:I

    iget v1, p0, Laye;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Laye;->g:I

    iget v0, p0, Laye;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laye;->j:I

    iget v0, p0, Laye;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laye;->l:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Layi;

    invoke-direct {v1, p0}, Layi;-><init>(Laye;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic f(Laye;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Laye;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laye;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Laye;)V
    .locals 2

    iget v0, p0, Laye;->g:I

    iget v1, p0, Laye;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Laye;->g:I

    iget v0, p0, Laye;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laye;->j:I

    iget v0, p0, Laye;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laye;->l:I

    return-void
.end method

.method static synthetic i(Laye;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Laye;)I
    .locals 1

    iget v0, p0, Laye;->h:I

    return v0
.end method

.method static synthetic k(Laye;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Laye;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laye;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Laye;)I
    .locals 1

    iget v0, p0, Laye;->j:I

    return v0
.end method

.method static synthetic n(Laye;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laye;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Laye;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laye;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic p(Laye;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laye;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Laye;)Ljt;
    .locals 1

    iget-object v0, p0, Laye;->m:Ljt;

    return-object v0
.end method

.method static synthetic r(Laye;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic s(Laye;)V
    .locals 0

    invoke-direct {p0}, Laye;->d()V

    return-void
.end method


# virtual methods
.method public final synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-direct {p0}, Laye;->a()Lajw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 1

    invoke-direct {p0}, Laye;->a()Lajw;

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

.method public final loadDataList()V
    .locals 4

    iget-object v0, p0, Laye;->m:Ljt;

    iget-object v1, p0, Laye;->e:Ljava/lang/String;

    iget-object v2, v0, Ljt;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-object v2, p0, Laye;->n:Lho;

    invoke-virtual {v2}, Lho;->bq()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Laye;->m:Ljt;

    iget-object v1, p0, Laye;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljt;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laye;->mDataList:Ljava/util/List;

    iget-object v0, p0, Laye;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lkw;->b(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laye;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Laye;->h:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laye;->k:Z

    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Laye;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Laye;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Laye;->d()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Laye;->d()V

    goto :goto_1
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lawy;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    return-void
.end method

.method public final onCreate()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lawy;->onCreate()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Laye;->n:Lho;

    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    iput-object v0, p0, Laye;->m:Ljt;

    invoke-virtual {p0}, Laye;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Laye;->d:I

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laye;->e:Ljava/lang/String;

    const-string v1, "count"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Laye;->f:I

    const-string v1, "cType"

    sget-object v2, LQQPIM/ECategoryPushType;->CPUSH_NONE:LQQPIM/ECategoryPushType;

    invoke-virtual {v2}, LQQPIM/ECategoryPushType;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    iget-object v0, p0, Laye;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Laye;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setFooterDividersEnabled(Z)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Laye;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {p1}, La;->d(Landroid/view/Menu;)V

    invoke-static {p1}, La;->b(Landroid/view/Menu;)V

    :cond_0
    const/4 v0, 0x1

    return v0
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

    const/4 v1, 0x0

    invoke-virtual {p0}, Laye;->isHasRefreshHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p3, p3, -0x1

    :cond_0
    iget-object v0, p0, Laye;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ne p3, v0, :cond_3

    iget-object v0, p0, Laye;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laye;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Laye;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laye;->k:Z

    iput v1, p0, Laye;->l:I

    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Laye;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v1, p0, Laye;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget v2, p0, Laye;->d:I

    add-int/lit8 v3, p3, 0x1

    invoke-static {v1, v0, v2, v3}, Lkw;->a(Landroid/content/Context;Lkw;II)V

    goto :goto_0
.end method

.method public final onOptionClick(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laye;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Laye;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v6

    :sswitch_0
    iget-object v0, p0, Laye;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Laye;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Laye;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Laye;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    iput v5, p0, Laye;->g:I

    const/16 v0, 0xf

    iput v0, p0, Laye;->h:I

    iput v5, p0, Laye;->j:I

    iput v5, p0, Laye;->l:I

    iput-boolean v6, p0, Laye;->k:Z

    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Laye;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laye;->mContext:Landroid/content/Context;

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

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lawy;->onResume()V

    invoke-virtual {p0}, Laye;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    invoke-virtual {p0}, Laye;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->onScroll(Landroid/widget/AbsListView;III)V

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laye;->i:I

    invoke-virtual {p0}, Laye;->isHasRefreshHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Laye;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laye;->i:I

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    iget v0, p0, Laye;->i:I

    iget-object v1, p0, Laye;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Laye;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Laye;->e()V

    :cond_0
    return-void
.end method

.method public final refreshListData()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Laye;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Laye;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Laye;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    iget v0, p0, Laye;->l:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iput-boolean v5, p0, Laye;->k:Z

    iget-object v0, p0, Laye;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Laye;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Laye;->hideEmptyView()V

    invoke-virtual {p0, v5}, Laye;->setReloadData(Z)V

    :cond_1
    invoke-virtual {p0}, Laye;->isHasRefreshHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Laye;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->onRefreshComplete()V

    :cond_2
    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 5

    iget-object v0, p0, Laye;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    invoke-virtual {p0}, Laye;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Laye;->mContext:Landroid/content/Context;

    const v2, 0x7f0b099e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Laye;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    return-void
.end method
