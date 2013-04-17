.class public abstract Lbhu;
.super Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView",
        "<",
        "Lmf;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected a:Lakp;

.field protected b:Lfv;

.field protected c:Lji;

.field private d:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lbhu;->d:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    iput-boolean p3, p0, Lbhu;->f:Z

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lmf;",
            ">;>;"
        }
    .end annotation
.end method

.method public bridge synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-virtual {p0}, Lbhu;->createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
            "<",
            "Lmf;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
    .locals 1

    iget-object v0, p0, Lbhu;->d:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lbhu;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isPinnedHeaderListView()Z
    .locals 1

    iget-boolean v0, p0, Lbhu;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v3, 0x673a

    invoke-virtual {v0, v3}, Lnd;->a(I)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v3

    invoke-virtual {v3}, Lho;->co()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lho;->H(Z)V

    if-eqz v4, :cond_2

    iget-object v0, p0, Lbhu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsv;->a(Landroid/content/Context;)Lsv;

    move-result-object v0

    invoke-virtual {v0}, Lsv;->a()V

    :goto_2
    iget-object v0, p0, Lbhu;->e:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    if-nez v4, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    iget-object v0, p0, Lbhu;->a:Lakp;

    invoke-virtual {v0}, Lakp;->notifyDataSetChanged()V

    invoke-virtual {v3}, Lho;->cq()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    iget-object v0, p0, Lbhu;->b:Lfv;

    iget-object v0, p0, Lbhu;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0a3c

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v0, 0x7f0b0a3d

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v0, 0x7f0b0a5f

    new-instance v2, Lfx;

    invoke-direct {v2, v1}, Lfx;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cp()V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lbhu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsv;->a(Landroid/content/Context;)Lsv;

    move-result-object v0

    invoke-virtual {v0}, Lsv;->b()V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x7f0803c0
        :pswitch_0
    .end packed-switch
.end method

.method protected onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->onCreate()V

    invoke-virtual {p0}, Lbhu;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lbhu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03013a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0803c0

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v1, p0, Lbhu;->e:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lbhu;->e:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lfv;

    iget-object v1, p0, Lbhu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbhu;->b:Lfv;

    new-instance v0, Lji;

    invoke-direct {v0}, Lji;-><init>()V

    iput-object v0, p0, Lbhu;->c:Lji;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->onResume()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->co()Z

    move-result v0

    iget-object v1, p0, Lbhu;->e:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    return-void
.end method

.method public refreshListData()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->refreshListData()V

    invoke-virtual {p0}, Lbhu;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbhu;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lbhu;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lbhu;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbhu;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lbhu;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbhu;->setReloadData(Z)V

    :cond_1
    iget-object v0, p0, Lbhu;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbhu;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    iget-boolean v0, p0, Lbhu;->f:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0b0a66

    :goto_1
    invoke-virtual {p0, v0}, Lbhu;->setEmptyText(I)V

    :goto_2
    return-void

    :cond_3
    const-string v0, ""

    goto :goto_0

    :cond_4
    const v0, 0x7f0b0a67

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lbhu;->hideEmptyView()V

    goto :goto_2
.end method

.method protected subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    return-void
.end method
