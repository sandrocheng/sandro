.class public final Lbpm;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Lcs;",
        ">;",
        "Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;"
    }
.end annotation


# instance fields
.field private a:Lbw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lbpm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbw;->a(Landroid/content/Context;)Lbw;

    move-result-object v0

    iput-object v0, p0, Lbpm;->a:Lbw;

    return-void
.end method

.method static synthetic a(Lbpm;)Lbw;
    .locals 1

    iget-object v0, p0, Lbpm;->a:Lbw;

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbpm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b0123

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b0045

    new-instance v2, Lbpn;

    invoke-direct {v2, p0, v0}, Lbpn;-><init>(Lbpm;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lbpo;

    invoke-direct {v2, v0}, Lbpo;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 8

    new-instance v0, Laix;

    iget-object v1, p0, Lbpm;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lbpm;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1, v2}, Laix;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public final loadDataList()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbpm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbw;->a(Landroid/content/Context;)Lbw;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v2

    invoke-virtual {v2}, Lcw;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbw;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbpm;->mDataList:Ljava/util/List;

    iget-object v0, p0, Lbpm;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpm;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f0b05cc

    invoke-virtual {p0, v0}, Lbpm;->setEmptyText(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lbpm;->hideEmptyView()V

    iget-object v0, p0, Lbpm;->mDataList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/16 v3, 0x13

    const/4 v2, 0x0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b052c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
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

.method public final onListPreferenceChange(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onOptionClick(I)V
    .locals 0

    invoke-direct {p0}, Lbpm;->a()V

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
    invoke-direct {p0}, Lbpm;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    invoke-virtual {p0}, Lbpm;->loadDataList()V

    invoke-virtual {p0}, Lbpm;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laix;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lbpm;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Laix;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbpm;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v5}, Lbpm;->setReloadData(Z)V

    iget-object v0, p0, Lbpm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lbpm;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbpm;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    return-void
.end method

.method public final refreshListData()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lbpm;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laix;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lbpm;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Laix;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbpm;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v6}, Lbpm;->setReloadData(Z)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b00ca

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    return-void
.end method
