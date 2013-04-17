.class public abstract Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$IPinnedHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter$PinnedHeaderCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter",
        "<TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$IPinnedHeaderAdapter;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private getLabelText(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->mItemModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;->getHeaderLabel()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter$PinnedHeaderCache;

    if-nez v0, :cond_0

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter$PinnedHeaderCache;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter$PinnedHeaderCache;-><init>(Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;)V

    const v0, 0x7f080376

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter$PinnedHeaderCache;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->getLabelText(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter$PinnedHeaderCache;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPinnedHeaderState(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->getLabelText(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->getLabelText(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    instance-of v0, p1, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->configureHeaderView(I)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
