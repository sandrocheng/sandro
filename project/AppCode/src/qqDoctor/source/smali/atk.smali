.class public final Latk;
.super Larz;


# instance fields
.field private k:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Latk;->a:I

    invoke-direct {p0, p1, v0}, Larz;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-super {p0}, Larz;->a()V

    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Latk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iput-object v0, p0, Latk;->k:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v0, p0, Latk;->k:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Latk;->j:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Latk;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Latk;->k:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method protected final b()V
    .locals 0

    invoke-super {p0}, Larz;->b()V

    return-void
.end method

.method public final createOperatingBarDataList()Ljava/util/List;
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

    invoke-super {p0}, Larz;->createOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 4

    invoke-super {p0}, Larz;->loadDataList()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Latk;->d:Lib;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lib;->a(I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Latk;->d:Lib;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lib;->a(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Latk;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Latk;->g:Ljava/util/List;

    iget-object v0, p0, Latk;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Larz;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "fileInfos"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filePaths"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Latk;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final onBackClick()V
    .locals 0

    invoke-super {p0}, Larz;->onBackClick()V

    return-void
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 0

    invoke-super {p0, p1}, Larz;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    return-void
.end method

.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Larz;->onCreate()V

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Larz;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Larz;->onDestroy()V

    return-void
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 0

    invoke-super {p0, p1}, Larz;->onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    return-void
.end method

.method public final onOptionClick(I)V
    .locals 0

    invoke-super {p0, p1}, Larz;->onOptionClick(I)V

    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Larz;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Larz;->onResume()V

    return-void
.end method

.method public final refreshListData()V
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Lajl;

    iget-object v2, p0, Latk;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Latk;->f:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Latk;->g:Ljava/util/List;

    invoke-direct {v0, v2, p0, v3, v4}, Lajl;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;Ljava/lang/Boolean;Ljava/util/List;)V

    iput-object v0, p0, Latk;->i:Lajd;

    iget-object v0, p0, Latk;->k:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v2, p0, Latk;->i:Lajd;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Latk;->i:Lajd;

    invoke-virtual {v0}, Lajd;->notifyDataSetChanged()V

    iget-object v0, p0, Latk;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Latk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Latk;->k:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    const v0, 0x7f0200c9

    invoke-virtual {p0, v0}, Latk;->setEmptyImage(I)V

    :goto_1
    invoke-super {p0}, Larz;->refreshListData()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Latk;->k:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Latk;->k:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Latk;->hideEmptyView()V

    goto :goto_1
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    invoke-super {p0, p1}, Larz;->subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    return-void
.end method
