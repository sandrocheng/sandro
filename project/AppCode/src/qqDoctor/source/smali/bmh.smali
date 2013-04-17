.class public final Lbmh;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# instance fields
.field private a:Lij;

.field private b:Ldv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldv",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lbmi;

    invoke-direct {v0, p0}, Lbmi;-><init>(Lbmh;)V

    iput-object v0, p0, Lbmh;->b:Ldv;

    return-void
.end method

.method static synthetic a(Lbmh;)Lij;
    .locals 1

    iget-object v0, p0, Lbmh;->a:Lij;

    return-object v0
.end method

.method static synthetic b(Lbmh;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmh;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 8

    new-instance v0, Lald;

    iget-object v1, p0, Lbmh;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lbmh;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1, v2, p0}, Lald;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/BaseListView;)V

    return-object v0
.end method

.method public final loadDataList()V
    .locals 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lbmh;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbmh;->a:Lij;

    invoke-virtual {v0}, Lij;->a()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    iget-object v1, v0, Ljt;->j:Ljava/lang/String;

    const-string v2, "id ASC"

    invoke-virtual {v0, v1, v4, v4, v2}, Ljt;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldr;

    iget-object v8, v1, Ldr;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkw;

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbmh;->mDataList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbmh;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    sget-object v0, Lij;->a:Lij;

    if-nez v0, :cond_0

    new-instance v0, Lij;

    invoke-direct {v0}, Lij;-><init>()V

    sput-object v0, Lij;->a:Lij;

    :cond_0
    sget-object v0, Lij;->a:Lij;

    iput-object v0, p0, Lbmh;->a:Lij;

    iget-object v0, p0, Lbmh;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lald;

    iget-object v1, p0, Lbmh;->b:Ldv;

    invoke-virtual {v0, v1}, Lald;->a(Ldv;)V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    iget-object v0, p0, Lbmh;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final refreshListData()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->refreshListData()V

    invoke-virtual {p0}, Lbmh;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lbmh;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbmh;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lbmh;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b0926

    invoke-virtual {p0, v0}, Lbmh;->setEmptyText(I)V

    :goto_0
    iget-object v0, p0, Lbmh;->mContext:Landroid/content/Context;

    const v1, 0x7f0b08e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lbmh;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbmh;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbmh;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lbmh;->hideEmptyView()V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0020

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
