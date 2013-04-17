.class public final Lbok;
.super Lbmd;


# instance fields
.field private b:Ljt;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lij;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lbmd;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbok;->g:Z

    new-instance v0, Lboo;

    invoke-direct {v0, p0}, Lboo;-><init>(Lbok;)V

    iput-object v0, p0, Lbok;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lbop;

    invoke-direct {v0, p0}, Lbop;-><init>(Lbok;)V

    iput-object v0, p0, Lbok;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Lboq;

    invoke-direct {v0, p0}, Lboq;-><init>(Lbok;)V

    iput-object v0, p0, Lbok;->m:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lbok;)V
    .locals 0

    invoke-direct {p0}, Lbok;->k()V

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 2

    invoke-virtual {p0}, Lbok;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setStyle(I)V

    :cond_0
    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setNumber(I)V

    invoke-virtual {p0, v0}, Lbok;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    return-void
.end method

.method static synthetic a(Lbok;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbok;->h:Z

    return p1
.end method

.method static synthetic b(Lbok;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lbok;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic c(Lbok;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lbok;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbok;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lbok;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbok;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lbok;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbok;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lbok;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbok;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lbok;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lbok;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic i(Lbok;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method private j()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v0, v0, Lkv;->mState:I

    const/4 v3, -0x3

    if-eq v0, v3, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic j(Lbok;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lbok;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic k(Lbok;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method private k()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbok;->i:Z

    invoke-virtual {p0}, Lbok;->hideEmptyView()V

    invoke-virtual {p0}, Lbok;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    iget-object v1, p0, Lbok;->mDataList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbok;->g:Z

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic l(Lbok;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lbok;)Lij;
    .locals 1

    iget-object v0, p0, Lbok;->j:Lij;

    return-object v0
.end method

.method static synthetic n(Lbok;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbok;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lbok;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbok;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lbok;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic q(Lbok;)Ljt;
    .locals 1

    iget-object v0, p0, Lbok;->b:Ljt;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 8
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

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lbok;->mDataList:Ljava/util/List;

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v6, v0, Lkv;->mState:I

    const/4 v7, -0x3

    if-ne v6, v7, :cond_0

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget-object v6, v0, Lkv;->d:Lkw;

    invoke-virtual {v6}, Lkw;->isSystemApp()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lbok;->mDataList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v5, p0, Lbok;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0314

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v5, v2}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lbok;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0315

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v3, v2}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lbmd;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkv;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0, p1}, Lbmd;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a_()V
    .locals 1

    invoke-virtual {p0}, Lbok;->g()V

    invoke-super {p0}, Lbmd;->f()Lala;

    move-result-object v0

    check-cast v0, Lalu;

    invoke-virtual {v0}, Lalu;->notifyDataSetChanged()V

    return-void
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lbmd;->b(Landroid/content/Intent;)V

    const-string v0, "extra_error_code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v0, p0, Lbok;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v1, p0}, La;->a(Landroid/content/Context;ILcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbok;->i:Z

    invoke-virtual {p0}, Lbok;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbok;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    :cond_0
    const v0, 0x7f02036b

    invoke-virtual {p0, v0}, Lbok;->setEmptyImage(I)V

    invoke-virtual {p0}, Lbok;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbok;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbok;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->getCenterImage()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbok;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->getCenterImage()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lbon;

    invoke-direct {v1, p0}, Lbon;-><init>(Lbok;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected final b(Lkv;)V
    .locals 2

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0, p1}, Lbmd;->b(Lkv;)V

    return-void
.end method

.method protected final c(Lkv;)V
    .locals 2

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0, p1}, Lbmd;->c(Lkv;)V

    return-void
.end method

.method public final bridge synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-virtual {p0}, Lbok;->createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

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

    new-instance v0, Lalu;

    invoke-virtual {p0}, Lbok;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lalu;-><init>(Lbmd;Ljava/util/List;)V

    return-object v0
.end method

.method protected final createOperatingBarDataList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lbok;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0334

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbok;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lbok;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0335

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbok;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lbok;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0336

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbok;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x0

    iget-object v3, p0, Lbok;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected final d(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkv;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0, p1}, Lbmd;->d(Ljava/util/List;)V

    return-void
.end method

.method protected final d(Lkv;)V
    .locals 2

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0, p1}, Lbmd;->d(Lkv;)V

    return-void
.end method

.method protected final e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkv;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0, p1}, Lbmd;->e(Ljava/util/List;)V

    return-void
.end method

.method protected final e(Lkv;)V
    .locals 2

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0, p1}, Lbmd;->e(Lkv;)V

    return-void
.end method

.method public final bridge synthetic f()Lala;
    .locals 1

    invoke-super {p0}, Lbmd;->f()Lala;

    move-result-object v0

    check-cast v0, Lalu;

    return-object v0
.end method

.method protected final f(Lkv;)V
    .locals 2

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0, p1}, Lbmd;->f(Lkv;)V

    return-void
.end method

.method protected final g(Lkv;)V
    .locals 2

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0, p1}, Lbmd;->g(Lkv;)V

    return-void
.end method

.method public final synthetic getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-super {p0}, Lbmd;->f()Lala;

    move-result-object v0

    check-cast v0, Lalu;

    return-object v0
.end method

.method public final synthetic getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 1

    invoke-super {p0}, Lbmd;->f()Lala;

    move-result-object v0

    check-cast v0, Lalu;

    return-object v0
.end method

.method public final isPinnedHeaderListView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final loadDataList()V
    .locals 9

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lbok;->b:Ljt;

    iget-object v1, v0, Ljt;->j:Ljava/lang/String;

    const-string v4, "id ASC"

    invoke-virtual {v0, v1, v5, v5, v4}, Ljt;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbmd;->a:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-static {v0, v1, v3}, La;->a(Ljava/util/List;Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbok;->j:Lij;

    invoke-virtual {v1}, Lij;->a()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v3

    :goto_0
    if-ge v4, v8, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldr;

    iget-object v1, v1, Ldr;->a:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkv;

    iget-object v1, v1, Lkv;->d:Lkw;

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lbok;->h:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    iput-boolean v2, p0, Lbok;->h:Z

    :cond_3
    iget-object v1, p0, Lbok;->mDataList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Lkd;

    invoke-direct {v0}, Lkd;-><init>()V

    iget-object v4, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v0, v0, Lkd;->b:Landroid/content/SharedPreferences$Editor;

    const-string v5, "update_app_count"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lbok;->h:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lbok;->g:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lbok;->h:Z

    if-nez v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Lbok;->g:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v3, p0, Lbok;->g:Z

    move v0, v2

    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.tencent.qqpimsecure.CACHE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra_cache_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "extra_enforce"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lbok;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_3
    invoke-super {p0}, Lbmd;->f()Lala;

    move-result-object v0

    check-cast v0, Lalu;

    iget-object v1, p0, Lbok;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lalu;->a(Landroid/view/View$OnClickListener;)V

    invoke-super {p0}, Lbmd;->f()Lala;

    move-result-object v0

    check-cast v0, Lalu;

    iget-object v1, p0, Lbok;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lalu;->b(Landroid/view/View$OnClickListener;)V

    invoke-super {p0}, Lbmd;->f()Lala;

    move-result-object v0

    check-cast v0, Lalu;

    iget-object v1, p0, Lbok;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lalu;->c(Landroid/view/View$OnClickListener;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6
    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_7
    move v0, v3

    goto :goto_2
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

    iget-object v0, p0, Lbok;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareCenterActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_back_to_main"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Lbmd;->onBackClick()V

    return-void
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    iput v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mEmptyTemplateType:I

    return-void
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Lbmd;->onCreate()V

    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    iput-object v0, p0, Lbok;->b:Ljt;

    sget-object v0, Lij;->a:Lij;

    if-nez v0, :cond_0

    new-instance v0, Lij;

    invoke-direct {v0}, Lij;-><init>()V

    sput-object v0, Lij;->a:Lij;

    :cond_0
    sget-object v0, Lij;->a:Lij;

    iput-object v0, p0, Lbok;->j:Lij;

    invoke-virtual {p0}, Lbok;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_FROM_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    if-nez v0, :cond_1

    const/16 v0, 0x65bb

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    :goto_0
    invoke-super {p0}, Lbmd;->f()Lala;

    move-result-object v0

    check-cast v0, Lalu;

    invoke-virtual {v0}, Lalu;->b()V

    return-void

    :cond_1
    const/16 v0, 0x65ce

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    goto :goto_0
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lbmd;->onDestroy()V

    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const v0, 0x7f020350

    invoke-virtual {p0, v0}, Lbok;->setEmptyImage(I)V

    invoke-virtual {p0}, Lbok;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {p0, v0}, Lbok;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lbok;->mDataList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lbmd;->f()Lala;

    move-result-object v0

    check-cast v0, Lalu;

    invoke-virtual {p0}, Lbok;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalu;->setDataList(Ljava/util/List;)V

    invoke-super {p0}, Lbmd;->f()Lala;

    move-result-object v0

    check-cast v0, Lalu;

    invoke-virtual {v0}, Lalu;->notifyDataSetChanged()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_3
    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v0, v0, Lkv;->mState:I

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lbok;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-direct {p0}, Lbok;->j()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v0, v0, Lkv;->mState:I

    packed-switch v0, :pswitch_data_1

    move v0, v1

    :goto_4
    move v1, v0

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->isEnable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lbok;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v2}, Lbok;->a(Ljava/lang/String;II)V

    goto/16 :goto_0

    :pswitch_5
    move v0, v3

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lbok;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lbok;->a(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lbok;->d:Ljava/lang/String;

    invoke-direct {p0}, Lbok;->j()I

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lbok;->a(Ljava/lang/String;II)V

    goto/16 :goto_0

    :pswitch_6
    invoke-super {p0}, Lbmd;->f()Lala;

    move-result-object v0

    check-cast v0, Lalu;

    invoke-virtual {v0}, Lalu;->notifyDataSetChanged()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lkv;

    invoke-virtual {p0, v0}, Lbok;->h(Lkv;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setTag(Ljava/lang/Object;)V

    invoke-super {p0}, Lbmd;->f()Lala;

    move-result-object v0

    check-cast v0, Lalu;

    invoke-virtual {v0}, Lalu;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v1, v0, Lkv;->mState:I

    if-eqz v1, :cond_2

    iget-boolean v5, v0, Lkv;->e:Z

    move v2, v3

    :goto_0
    iget-object v1, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkv;

    iput-boolean v4, v1, Lkv;->e:Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    if-nez v5, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, v0, Lkv;->e:Z

    invoke-super {p0}, Lbmd;->f()Lala;

    move-result-object v0

    check-cast v0, Lalu;

    invoke-virtual {v0}, Lalu;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lbok;->mContext:Landroid/content/Context;

    const v1, 0x7f0b091b

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbok;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v3, v0, Lkv;->mState:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_3

    iget v3, v0, Lkv;->mState:I

    const/4 v4, -0x4

    if-ne v3, v4, :cond_2

    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v0

    sget-object v2, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-eq v0, v2, :cond_5

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lbok;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lbok;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0452

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lbok;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b091c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b0045

    new-instance v3, Lbol;

    invoke-direct {v3, p0, v1, v0}, Lbol;-><init>(Lbok;Ljava/util/ArrayList;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lbom;

    invoke-direct {v2, v0}, Lbom;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :goto_2
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65e1

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Lbok;->f(Ljava/util/List;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v2, v0, Lkv;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    invoke-virtual {p0, v0}, Lbok;->j(Lkv;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbok;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v3, v0, Lkv;->mState:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_a

    iget v3, v0, Lkv;->mState:I

    if-nez v3, :cond_9

    :cond_a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lbmd;->a:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->pauseTask(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v3, v0, Lkv;->mState:I

    if-eq v3, v5, :cond_e

    iget v3, v0, Lkv;->mState:I

    if-ne v3, v6, :cond_d

    :cond_e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    invoke-virtual {p0, v1}, Lbok;->g(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public final onOptionClick(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbok;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/software/IgnoreUpdateSoftwareActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lbok;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6722

    invoke-virtual {v0, v1}, Lnd;->a(I)V

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
    iget-object v0, p0, Lbok;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lbok;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/MarketActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lbok;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lbok;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/DownloadManagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lbok;->k()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_2
        0x36 -> :sswitch_1
        0x44 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/16 v0, 0x44

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b028f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02020b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x36

    const/4 v1, 0x2

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0317

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201fc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x2c

    const/4 v1, 0x3

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0532

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020204

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v5
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lbmd;->onResume()V

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onRetry()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbok;->setReloadData(Z)V

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lbmd;->onStart()V

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const v0, 0x7f0b0226

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    return-void
.end method

.method public final refreshListData()V
    .locals 2

    iget-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    iput-object v0, p0, Lbok;->mDataList:Ljava/util/List;

    invoke-virtual {p0}, Lbok;->g()V

    invoke-super {p0}, Lbmd;->f()Lala;

    move-result-object v0

    check-cast v0, Lalu;

    invoke-virtual {p0}, Lbok;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalu;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbok;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0}, Lbmd;->refreshListData()V

    iget-boolean v0, p0, Lbok;->h:Z

    if-eqz v0, :cond_3

    const v0, 0x7f020350

    invoke-virtual {p0, v0}, Lbok;->setEmptyImage(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v1, Lblt$a;

    invoke-direct {v1, p0}, Lblt$a;-><init>(Lblt;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lbok;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbok;->hideEmptyView()V

    goto :goto_1
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b08c0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const v0, 0x7f020334

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    return-void
.end method
