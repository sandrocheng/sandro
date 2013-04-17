.class public final Laxx;
.super Lbmd;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private b:Z

.field private d:Lkv;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Ljt;

.field private o:Lho;

.field private p:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

.field private q:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

.field private r:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lbmd;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Laxx;->b:Z

    iput v1, p0, Laxx;->e:I

    const/16 v0, 0xf

    iput v0, p0, Laxx;->f:I

    iput v1, p0, Laxx;->g:I

    iput v1, p0, Laxx;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laxx;->i:Z

    iput v1, p0, Laxx;->j:I

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Laxy;

    invoke-direct {v1, p0}, Laxy;-><init>(Laxx;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Laxx;->r:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Laxx;)V
    .locals 0

    invoke-direct {p0}, Laxx;->l()V

    return-void
.end method

.method static synthetic b(Laxx;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxx;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Laxx;)V
    .locals 2

    iget v0, p0, Laxx;->e:I

    iget v1, p0, Laxx;->f:I

    sub-int/2addr v0, v1

    iput v0, p0, Laxx;->e:I

    iget v0, p0, Laxx;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laxx;->h:I

    iget v0, p0, Laxx;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laxx;->j:I

    return-void
.end method

.method static synthetic d(Laxx;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxx;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Laxx;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxx;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Laxx;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxx;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Laxx;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxx;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Laxx;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laxx;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Laxx;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laxx;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Laxx;)I
    .locals 1

    iget v0, p0, Laxx;->f:I

    return v0
.end method

.method private j()V
    .locals 3

    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    new-instance v1, Lcom/tencent/tmsecure/module/market/RequestInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/RequestInfo;-><init>()V

    const/16 v2, 0xf

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->type:I

    iget v2, p0, Laxx;->e:I

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchOffset:I

    iget v2, p0, Laxx;->f:I

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchSize:I

    new-instance v2, Laya;

    invoke-direct {v2, p0}, Laya;-><init>(Laxx;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchSpecialCategory(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IFetchSpecialCategoryListener;)V

    return-void
.end method

.method private k()V
    .locals 2

    iget v0, p0, Laxx;->e:I

    iget v1, p0, Laxx;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Laxx;->e:I

    iget v0, p0, Laxx;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laxx;->h:I

    iget v0, p0, Laxx;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laxx;->j:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Layb;

    invoke-direct {v1, p0}, Layb;-><init>(Laxx;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic k(Laxx;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laxx;->i:Z

    return v0
.end method

.method static synthetic l(Laxx;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxx;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput v1, p0, Laxx;->e:I

    const/16 v0, 0xf

    iput v0, p0, Laxx;->f:I

    iput v1, p0, Laxx;->h:I

    iput v1, p0, Laxx;->j:I

    iput-boolean v2, p0, Laxx;->i:Z

    iget-object v0, p0, Laxx;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Laxx;->f()Lala;

    move-result-object v0

    invoke-virtual {p0}, Laxx;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lala;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Laxx;->f()Lala;

    move-result-object v0

    invoke-virtual {v0}, Lala;->notifyDataSetChanged()V

    invoke-virtual {p0, v2}, Laxx;->setReloadData(Z)V

    iput-boolean v2, p0, Laxx;->b:Z

    iget-object v0, p0, Laxx;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic m(Laxx;)I
    .locals 1

    iget v0, p0, Laxx;->h:I

    return v0
.end method

.method static synthetic n(Laxx;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Laxx;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Laxx;)Ljt;
    .locals 1

    iget-object v0, p0, Laxx;->n:Ljt;

    return-object v0
.end method

.method static synthetic p(Laxx;)Lho;
    .locals 1

    iget-object v0, p0, Laxx;->o:Lho;

    return-object v0
.end method

.method static synthetic q(Laxx;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laxx;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic r(Laxx;)V
    .locals 0

    invoke-direct {p0}, Laxx;->j()V

    return-void
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

    iget-object v2, p0, Laxx;->mDataList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a_()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Laxx;->g()V

    invoke-virtual {p0}, Laxx;->f()Lala;

    move-result-object v0

    invoke-virtual {p0}, Laxx;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lala;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Laxx;->h()V

    invoke-virtual {p0, v2}, Laxx;->setReloadData(Z)V

    iput-boolean v2, p0, Laxx;->b:Z

    return-void
.end method

.method public final bridge synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-virtual {p0}, Laxx;->createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
            "<",
            "Lkv;",
            ">;"
        }
    .end annotation

    new-instance v0, Laxz;

    invoke-direct {v0, p0}, Laxz;-><init>(Laxx;)V

    invoke-virtual {p0, v0}, Laxx;->setOnRefreshListener(Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;)V

    new-instance v0, Lalj;

    invoke-virtual {p0}, Laxx;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lalj;-><init>(Lbmd;Ljava/util/List;)V

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

    iget-object v0, p0, Laxx;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Laxx;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laxx;->o:Lho;

    invoke-virtual {v0}, Lho;->bs()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-object v2, p0, Laxx;->o:Lho;

    invoke-virtual {v2}, Lho;->bq()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    iget-boolean v0, p0, Laxx;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Laxx;->n:Ljt;

    iget-object v1, v0, Ljt;->m:Ljava/lang/String;

    const-string v2, "id ASC"

    invoke-virtual {v0, v1, v4, v4, v2}, Ljt;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Laxx;->mDataList:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->o()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbmd;->a:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    const/16 v3, 0xf

    invoke-static {v2, v0, v3}, La;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Laxx;->a_()V

    iget-object v0, p0, Laxx;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Laxx;->j()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Laxx;->j()V

    goto :goto_1
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    invoke-super {p0, p1}, Lbmd;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lbmd;->onCreate()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Laxx;->o:Lho;

    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    iput-object v0, p0, Laxx;->n:Ljt;

    iget-object v0, p0, Laxx;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Laxx;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setFooterDividersEnabled(Z)V

    iget-object v0, p0, Laxx;->mFooterView:Landroid/view/View;

    const v1, 0x7f080366

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laxx;->k:Landroid/view/View;

    iget-object v0, p0, Laxx;->mFooterView:Landroid/view/View;

    const v1, 0x7f080368

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laxx;->l:Landroid/view/View;

    iget-object v0, p0, Laxx;->mFooterView:Landroid/view/View;

    const v1, 0x7f08036a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laxx;->m:Landroid/view/View;

    iget-object v0, p0, Laxx;->mFooterView:Landroid/view/View;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    iput-object v0, p0, Laxx;->p:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    iget-object v0, p0, Laxx;->mFooterView:Landroid/view/View;

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    iput-object v0, p0, Laxx;->q:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    iget-object v0, p0, Laxx;->p:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->startRotationAnimation()V

    iget-object v0, p0, Laxx;->q:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->startRotationAnimation()V

    invoke-virtual {p0}, Laxx;->f()Lala;

    move-result-object v0

    invoke-virtual {v0}, Lala;->b()V

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    const/4 v3, 0x1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Laxx;->isHasRefreshHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    if-gt v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Laxx;->isHasRefreshHeader()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p0}, Laxx;->getDataList()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v1, v0, Lkv;->mState:I

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_3

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    :cond_3
    new-instance v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v1, p0, Laxx;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setContextItemPosition(I)V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v4, p0, Laxx;->mContext:Landroid/content/Context;

    const v5, 0x7f0b03eb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/16 v4, 0xa

    iput v4, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v1, Layc;

    invoke-direct {v1, p0, v3}, Layc;-><init>(Laxx;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, v0, Lkv;->d:Lkw;

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lbmd;->onDestroy()V

    iget-object v0, p0, Laxx;->p:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->stopRotationAnimation()V

    iget-object v0, p0, Laxx;->q:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->stopRotationAnimation()V

    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Laxx;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laxx;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laxx;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Laxx;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laxx;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laxx;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Laxx;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laxx;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laxx;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Laxx;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laxx;->p:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Laxx;->q:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Laxx;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Laxx;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Laxx;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxx;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Laxx;->p:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Laxx;->q:Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Laxx;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Laxx;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Laxx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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

    const/4 v1, 0x0

    invoke-virtual {p0}, Laxx;->isHasRefreshHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p3, p3, -0x1

    :cond_0
    iget-object v0, p0, Laxx;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ne p3, v0, :cond_3

    iget-object v0, p0, Laxx;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laxx;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Laxx;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laxx;->i:Z

    iput v1, p0, Laxx;->j:I

    iget-object v0, p0, Laxx;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Laxx;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v1, v0, Lkv;->mState:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    iget v1, v0, Lkv;->mState:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_5

    :cond_4
    invoke-static {v0}, Lof;->a(Lkv;)V

    iput-object v0, p0, Laxx;->d:Lkv;

    :cond_5
    iget-object v1, v0, Lkv;->d:Lkw;

    iget-object v0, v0, Lkv;->d:Lkw;

    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Laxx;->a(Lkw;I)V

    goto :goto_0
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Laxx;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareSearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Laxx;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onOptionClick(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laxx;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/market/SoftwareSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Laxx;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0}, Laxx;->l()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Laxx;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {p1}, La;->b(Landroid/view/Menu;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lbmd;->onResume()V

    iget-object v0, p0, Laxx;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Laxx;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxx;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void

    :cond_0
    iget-object v0, p0, Laxx;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final onRetry()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laxx;->setReloadData(Z)V

    iget-object v0, p0, Laxx;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    invoke-virtual {p0}, Laxx;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->onScroll(Landroid/widget/AbsListView;III)V

    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laxx;->g:I

    invoke-virtual {p0}, Laxx;->isHasRefreshHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Laxx;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laxx;->g:I

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Laxx;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RankingView onScrollStateChanged mAdapter.getCount() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laxx;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, p0, Laxx;->g:I

    iget-object v1, p0, Laxx;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RankingView onScrollStateChanged mAutoLoad "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Laxx;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v0, p0, Laxx;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Laxx;->k()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lbmd;->onStart()V

    iget-object v0, p0, Laxx;->d:Lkv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxx;->d:Lkv;

    invoke-static {v0}, Lof;->b(Lkv;)V

    const/4 v0, 0x0

    iput-object v0, p0, Laxx;->d:Lkv;

    :cond_0
    return-void
.end method

.method public final refreshListData()V
    .locals 2

    invoke-virtual {p0}, Laxx;->f()Lala;

    move-result-object v0

    invoke-virtual {p0}, Laxx;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lala;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Laxx;->f()Lala;

    move-result-object v0

    invoke-virtual {v0}, Lala;->notifyDataSetChanged()V

    iget v0, p0, Laxx;->j:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Laxx;->i:Z

    iget-object v0, p0, Laxx;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Laxx;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laxx;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    iget-object v0, p0, Laxx;->mContext:Landroid/content/Context;

    const v1, 0x7f0b09a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laxx;->setEmptyText(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Laxx;->isHasRefreshHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Laxx;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->onRefreshComplete()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Laxx;->hideEmptyView()V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const v0, 0x7f0b0291

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    return-void
.end method
