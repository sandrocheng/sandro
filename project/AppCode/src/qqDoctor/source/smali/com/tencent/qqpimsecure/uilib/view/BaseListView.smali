.class public abstract Lcom/tencent/qqpimsecure/uilib/view/BaseListView;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/qqpimsecure/uilib/view/BaseView;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;"
    }
.end annotation


# instance fields
.field protected dIYAddLayout:Landroid/widget/LinearLayout;

.field protected mAdapter:Landroid/widget/BaseAdapter;

.field protected mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mFooterView:Landroid/view/View;

.field private mHeaderLinear:Landroid/widget/LinearLayout;

.field protected mHeaderView:Landroid/view/View;

.field protected mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

.field private mMainListView:Landroid/view/View;

.field protected mReloadData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mDataList:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mReloadData:Z

    return-void
.end method


# virtual methods
.method public abstract createAdapter()Landroid/widget/BaseAdapter;
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mMainListView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mMainListView:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mMainListView:Landroid/view/View;

    const v1, 0x7f080156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->dIYAddLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getDIYFrameLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->dIYAddLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mMainListView:Landroid/view/View;

    return-object v0
.end method

.method public getDIYFrameLayout()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getFooterView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method public isHasRefreshHeader()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-boolean v0, v0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isRefreshable:Z

    return v0
.end method

.method public isReloadData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mReloadData:Z

    return v0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mMainListView:Landroid/view/View;

    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mDataList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mDataList:Ljava/util/List;

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->createAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getHeaderView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mHeaderView:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->addHeaderView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getFooterView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mFooterView:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->addFooterView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRetry()V
    .locals 0

    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mDataList:Ljava/util/List;

    return-void
.end method

.method protected setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnRefreshListener(Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnRefreshListener(Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;)V

    return-void
.end method

.method public setReloadData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->mReloadData:Z

    return-void
.end method
