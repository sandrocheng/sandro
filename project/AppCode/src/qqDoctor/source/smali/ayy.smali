.class public final Layy;
.super Lbmd;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private b:Lho;

.field private d:Ljt;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Landroid/widget/TextView;

.field private l:Lkv;

.field private m:Landroid/os/Handler;

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lbmd;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Layy;->e:Z

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Layz;

    invoke-direct {v1, p0}, Layz;-><init>(Layy;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Layy;->m:Landroid/os/Handler;

    new-instance v0, Lazd;

    invoke-direct {v0, p0}, Lazd;-><init>(Layy;)V

    iput-object v0, p0, Layy;->n:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Layy;I)I
    .locals 0

    iput p1, p0, Layy;->g:I

    return p1
.end method

.method static synthetic a(Layy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Layy;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Layy;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Layy;->mDataList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Layy;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Layy;->e:Z

    return v0
.end method

.method static synthetic b(Layy;I)I
    .locals 0

    iput p1, p0, Layy;->h:I

    return p1
.end method

.method static synthetic b(Layy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Layy;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Layy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Layy;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Layy;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Layy;->mDataList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Layy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Layy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Layy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Layy;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Layy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Layy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Layy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Layy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Layy;)I
    .locals 1

    iget v0, p0, Layy;->g:I

    return v0
.end method

.method static synthetic h(Layy;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Layy;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Layy;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Layy;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Layy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Layy;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Layy;)Ljt;
    .locals 1

    iget-object v0, p0, Layy;->d:Ljt;

    return-object v0
.end method

.method static synthetic l(Layy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Layy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Layy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Layy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Layy;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Layy;->mDataList:Ljava/util/List;

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

    iget-object v2, p0, Layy;->mDataList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a_()V
    .locals 2

    invoke-virtual {p0}, Layy;->g()V

    iget-object v0, p0, Layy;->mDataList:Ljava/util/List;

    invoke-static {v0}, Layy;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Layy;->mDataList:Ljava/util/List;

    invoke-virtual {p0}, Layy;->f()Lala;

    move-result-object v0

    invoke-virtual {p0}, Layy;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lala;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Layy;->h()V

    iget-object v0, p0, Layy;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Layy;->setReloadData(Z)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-virtual {p0}, Layy;->createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
            "<",
            "Lkv;",
            ">;"
        }
    .end annotation

    new-instance v0, Laza;

    invoke-direct {v0, p0}, Laza;-><init>(Layy;)V

    invoke-virtual {p0, v0}, Layy;->setOnRefreshListener(Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;)V

    invoke-super {p0}, Lbmd;->createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Layy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Layy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v1, p0, Layy;->mContext:Landroid/content/Context;

    const/high16 v2, 0x4100

    invoke-static {v1, v2}, Ldc;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Layy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Layy;->mContext:Landroid/content/Context;

    const/high16 v2, 0x4110

    invoke-static {v1, v2}, Ldc;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Layy;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "descript"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Layy;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Layy;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Layy;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method public final loadDataList()V
    .locals 6

    const/16 v5, 0x400

    const/4 v4, 0x0

    iget v0, p0, Layy;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    new-instance v1, Lcom/tencent/tmsecure/module/market/RequestInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/RequestInfo;-><init>()V

    const/4 v2, -0x1

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->categoryID:I

    iput v4, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchOffset:I

    iput v5, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchSize:I

    const/16 v2, 0xe

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->type:I

    iput v4, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->sort_type:I

    new-instance v2, Lazc;

    invoke-direct {v2, p0}, Lazc;-><init>(Layy;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchSpecialCategory(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IFetchSpecialCategoryListener;)V

    invoke-virtual {p0}, Layy;->a_()V

    iget-object v0, p0, Layy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Layy;->d:Ljt;

    iget-object v1, p0, Layy;->f:Ljava/lang/String;

    iget-object v2, v0, Ljt;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-object v2, p0, Layy;->b:Lho;

    invoke-virtual {v2}, Lho;->bq()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-boolean v0, p0, Layy;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Layy;->d:Ljt;

    iget-object v1, p0, Layy;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljt;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbmd;->a:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget v2, p0, Layy;->g:I

    invoke-static {v0, v1, v2}, La;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Layy;->mDataList:Ljava/util/List;

    iget-object v0, p0, Layy;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    new-instance v1, Lcom/tencent/tmsecure/module/market/RequestInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/RequestInfo;-><init>()V

    iget v2, p0, Layy;->g:I

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->categoryID:I

    iput v4, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchOffset:I

    iput v5, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchSize:I

    const/16 v2, 0xc

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->type:I

    iput v4, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->sort_type:I

    new-instance v2, Lazb;

    invoke-direct {v2, p0}, Lazb;-><init>(Layy;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchSoftwareList(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    :cond_2
    invoke-virtual {p0}, Layy;->a_()V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lbmd;->onCreate()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Layy;->b:Lho;

    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    iput-object v0, p0, Layy;->d:Ljt;

    iget-object v0, p0, Layy;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Layy;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Layy;->f:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Layy;->g:I

    const-string v1, "count"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Layy;->h:I

    const-string v1, "fromWhere"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Layy;->j:I

    iget v0, p0, Layy;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Layy;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lbmd;->onHandlerMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Layy;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Layy;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Layy;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    invoke-virtual {p0}, Layy;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Layy;->mContext:Landroid/content/Context;

    const v2, 0x7f0b099e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Layy;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    iget v0, p0, Layy;->h:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Layy;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Layy;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Layy;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Layy;->isHasRefreshHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p3, p3, -0x1

    :cond_0
    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Layy;->getDataList()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v1, v0, Lkv;->mState:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_2

    iget v1, v0, Lkv;->mState:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-static {v0}, Lof;->a(Lkv;)V

    iput-object v0, p0, Layy;->l:Lkv;

    :cond_3
    iget-object v0, v0, Lkv;->d:Lkw;

    iget v1, p0, Layy;->g:I

    invoke-virtual {p0, v0, v1}, Layy;->a(Lkw;I)V

    goto :goto_0
.end method

.method public final onOptionClick(I)V
    .locals 0

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v4

    :sswitch_0
    iput-boolean v4, p0, Layy;->e:Z

    iget-object v0, p0, Layy;->n:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Layy;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Layy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Layy;->mContext:Landroid/content/Context;

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

    iget-object v0, p0, Layy;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {p1}, La;->a(Landroid/view/Menu;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lbmd;->onResume()V

    invoke-virtual {p0}, Layy;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layy;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Layy;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final onRetry()V
    .locals 2

    iget-object v0, p0, Layy;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    invoke-virtual {p0}, Layy;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lbmd;->onStart()V

    iget-object v0, p0, Layy;->l:Lkv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Layy;->l:Lkv;

    invoke-static {v0}, Lof;->b(Lkv;)V

    const/4 v0, 0x0

    iput-object v0, p0, Layy;->l:Lkv;

    :cond_0
    return-void
.end method

.method public final refreshListData()V
    .locals 1

    invoke-super {p0}, Lbmd;->refreshListData()V

    invoke-virtual {p0}, Layy;->isHasRefreshHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Layy;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->onRefreshComplete()V

    :cond_0
    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Layy;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    invoke-virtual {p0}, Layy;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Layy;->mContext:Landroid/content/Context;

    const v2, 0x7f0b099e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Layy;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    return-void
.end method
