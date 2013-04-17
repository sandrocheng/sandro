.class public final Lbnt;
.super Lblt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lblt",
        "<",
        "Lkw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lblt;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbnt;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lbnt;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbnt;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lbnt;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbnt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lbnt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbnt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lbnt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbnt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkw;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbnt;->a:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbnt;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lbnt;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lbnt;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method static synthetic e(Lbnt;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbnt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lbnt;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbnt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lbnt;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbnt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lbnt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbnt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lbnt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbnt;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()Lalr;
    .locals 1

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalr;

    return-object v0
.end method

.method public final a(Lkw;)V
    .locals 4

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbnt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0511

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b073d

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b0338

    new-instance v2, Lbnx;

    invoke-direct {v2, p0, p1, v0}, Lbnx;-><init>(Lbnt;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lbny;

    invoke-direct {v2, v0}, Lbny;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method public final synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    new-instance v0, Lalr;

    invoke-direct {p0}, Lbnt;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lalr;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V

    return-object v0
.end method

.method public final synthetic createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 2

    new-instance v0, Lalr;

    invoke-direct {p0}, Lbnt;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lalr;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V

    return-object v0
.end method

.method protected final createOperatingBarDataList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b000f

    invoke-direct {v0, v3, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b000c

    invoke-direct {v0, v5, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b0015

    invoke-direct {v0, v4, v2, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setCheck(Z)V

    return-object v1
.end method

.method public final d(Lkw;)V
    .locals 4

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbnt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0511

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b073e

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b0338

    new-instance v2, Lbob;

    invoke-direct {v2, p0, p1, v0}, Lbob;-><init>(Lbnt;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lboc;

    invoke-direct {v2, v0}, Lboc;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method public final bridge synthetic getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalr;

    return-object v0
.end method

.method public final bridge synthetic getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 1

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalr;

    return-object v0
.end method

.method public final loadDataList()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lbnt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lfy;->a()Z

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->bx()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lbnt;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    const/16 v3, 0x4d

    invoke-virtual {v2, v0, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, La;->a(Lcom/tencent/tmsecure/module/software/AppEntity;)Lkw;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lkw;->setSystemFlag(Z)V

    iget-object v2, p0, Lbnt;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lbnt;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Lblt;->onCreate()V

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lbnt;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v1, p0, Lbnt;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setContextItemPosition(I)V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v4, p0, Lbnt;->mContext:Landroid/content/Context;

    const v5, 0x7f0b073f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/16 v4, 0xb

    iput v4, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v4, p0, Lbnt;->mContext:Landroid/content/Context;

    const v5, 0x7f0b000c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v4, 0x3

    iput v4, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v1, Lbnu;

    invoke-direct {v1, p0, v3}, Lbnu;-><init>(Lbnt;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Lbnt;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {p0, v0}, Lbnt;->a(Lkw;)V

    return-void
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 7

    const v6, 0x7f0b0338

    const v5, 0x7f0b0033

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalr;

    invoke-virtual {v0}, Lalr;->d()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v1

    check-cast v1, Lalr;

    invoke-virtual {v1}, Lalr;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v0, p0, Lbnt;->mContext:Landroid/content/Context;

    const v1, 0x7f0b091e

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lbnt;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0511

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v2, 0x7f0b073d

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    new-instance v2, Lbnz;

    invoke-direct {v2, p0, v0, v1}, Lbnz;-><init>(Lbnt;Ljava/util/ArrayList;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v6, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Lboa;

    invoke-direct {v0, v1}, Lboa;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v5, v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :pswitch_1
    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalr;

    invoke-virtual {v0}, Lalr;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lbnt;->mContext:Landroid/content/Context;

    const v1, 0x7f0b091d

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbnt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0511

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b0865

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    new-instance v1, Lbnv;

    invoke-direct {v1, p0, v0}, Lbnv;-><init>(Lbnt;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v6, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v1, Lbnw;

    invoke-direct {v1, v0}, Lbnw;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v5, v1, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->isCheck()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setCheck(Z)V

    invoke-virtual {p0}, Lbnt;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {p0}, Lbnt;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {p0}, Lbnt;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setNumber(I)V

    invoke-virtual {p0}, Lbnt;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setNumber(I)V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalr;

    invoke-virtual {v0, v1}, Lalr;->a(Z)V

    :goto_1
    invoke-virtual {p0}, Lbnt;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {p0, v0}, Lbnt;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    invoke-virtual {p0}, Lbnt;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {p0, v0}, Lbnt;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    invoke-virtual {p0, p1}, Lbnt;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setCheck(Z)V

    invoke-virtual {p0}, Lbnt;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {p0}, Lbnt;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalr;

    invoke-virtual {v0, v3}, Lalr;->a(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbnt;->setReloadData(Z)V

    iget-object v0, p0, Lbnt;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-static {p1}, La;->b(Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 2

    invoke-virtual {p0}, Lbnt;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnt;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbnt;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final refreshListData()V
    .locals 5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalr;

    invoke-direct {p0}, Lbnt;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalr;->setDataList(Ljava/util/List;)V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalr;

    invoke-virtual {v0}, Lalr;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lbnt;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lbnt;->setReloadData(Z)V

    :cond_0
    iget-object v0, p0, Lbnt;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b073c

    invoke-virtual {p0, v0}, Lbnt;->setEmptyText(I)V

    invoke-virtual {p0}, Lbnt;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setCheck(Z)V

    invoke-virtual {p0, v0}, Lbnt;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    invoke-virtual {p0}, Lbnt;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setCheck(Z)V

    invoke-virtual {p0, v0}, Lbnt;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    invoke-virtual {p0}, Lbnt;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setCheck(Z)V

    invoke-virtual {p0, v0}, Lbnt;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    :goto_0
    invoke-virtual {p0}, Lbnt;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbnt;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0740

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lbnt;->mDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalr;

    invoke-virtual {v0}, Lalr;->a()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lbnt;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setCheck(Z)V

    invoke-virtual {p0, v0}, Lbnt;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    invoke-virtual {p0}, Lbnt;->hideEmptyView()V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0316

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    return-void
.end method
