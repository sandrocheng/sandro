.class public abstract Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public abstract createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
            "<TT;>;"
        }
    .end annotation
.end method

.method public bridge synthetic getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    return-object v0
.end method

.method public bridge synthetic getListView()Landroid/widget/ListView;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method public abstract isPinnedHeaderListView()Z
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->isPinnedHeaderListView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030114

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method
