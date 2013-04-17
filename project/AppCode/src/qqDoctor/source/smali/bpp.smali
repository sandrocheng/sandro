.class public final Lbpp;
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


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/tmsecure/module/applist/AppListManager;

.field private d:Lpn;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lalv;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private k:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "can_run_at_root"

    sput-object v0, Lbpp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lblt;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbpp;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbpp;->f:Ljava/util/List;

    new-instance v0, Lbpq;

    invoke-direct {v0, p0}, Lbpq;-><init>(Lbpp;)V

    iput-object v0, p0, Lbpp;->k:Landroid/os/Handler;

    const-class v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/applist/AppListManager;

    iput-object v0, p0, Lbpp;->b:Lcom/tencent/tmsecure/module/applist/AppListManager;

    sget-object v0, Lpn;->a:Lpn;

    if-nez v0, :cond_0

    new-instance v0, Lpn;

    invoke-direct {v0}, Lpn;-><init>()V

    sput-object v0, Lpn;->a:Lpn;

    :cond_0
    sget-object v0, Lpn;->a:Lpn;

    iput-object v0, p0, Lbpp;->d:Lpn;

    return-void
.end method

.method static synthetic a(Lbpp;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lbpp;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic b(Lbpp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbpp;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lbpp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbpp;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lbpp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbpp;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lbpp;)Lpn;
    .locals 1

    iget-object v0, p0, Lbpp;->d:Lpn;

    return-object v0
.end method

.method static synthetic f(Lbpp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbpp;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lbpp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbpp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lbpp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbpp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lbpp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbpp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lbpp;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lbpp;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic k(Lbpp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbpp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lbpp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbpp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lbpp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbpp;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lbpp;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Lbpp;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget v0, p0, Lbpp;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lbpp;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-static {v0}, La;->a(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lbpp;->i:I

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lbpp;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-static {v0, v2}, La;->a(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lbpp;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lbpp;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbpp;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v1

    invoke-virtual {v0}, Lkw;->m()Z

    move-result v0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbpp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f02027f

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIcon(I)V

    const v1, 0x7f0b04d1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b074b

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b074e

    new-instance v2, Lbps;

    invoke-direct {v2, p0, v0}, Lbps;-><init>(Lbpp;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lbpt;

    invoke-direct {v2, v0}, Lbpt;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbpp;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Lbpp;->k:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final bridge synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-virtual {p0}, Lbpp;->createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

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
            "Lkw;",
            ">;"
        }
    .end annotation

    new-instance v0, Lalv;

    iget-object v1, p0, Lbpp;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lbpp;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lalv;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V

    iput-object v0, p0, Lbpp;->g:Lalv;

    iget-object v0, p0, Lbpp;->g:Lalv;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 6
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

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbpp;->f:Ljava/util/List;

    iget-object v3, p0, Lbpp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b066e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbpp;->e:Ljava/util/List;

    iget-object v3, p0, Lbpp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b066f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final isPinnedHeaderListView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final loadDataList()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbpp;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbpp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lpn;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lkw;->b(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lkw;->e(I)V

    invoke-virtual {v0}, Lkw;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbpp;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lbpp;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbpp;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbpp;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lbpp;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v0, p0, Lbpp;->i:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lbpp;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lbpp;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbpp;->h:Ljava/util/List;

    iget-object v0, p0, Lbpp;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v2, p0, Lbpp;->d:Lpn;

    invoke-virtual {v2, v0}, Lpn;->a(Lkw;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lbpp;->b:Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, LQQPIM/SoftListType;->WHITELIST_COMMON:LQQPIM/SoftListType;

    invoke-virtual {v2, v3, v4}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lbpp;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lbpp;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Lblt;->onCreate()V

    invoke-virtual {p0}, Lbpp;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lbpp;->a:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbpp;->i:I

    invoke-virtual {p0}, Lbpp;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalv;

    iget v1, p0, Lbpp;->i:I

    invoke-virtual {v0, v1}, Lalv;->a(I)V

    iget v0, p0, Lbpp;->i:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbpp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b067c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbpp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbpp;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbpp;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbpp;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b074f

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

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

    invoke-virtual {p0, p3}, Lbpp;->a(I)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-virtual {p0}, Lbpp;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpp;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final refreshListData()V
    .locals 2

    invoke-virtual {p0}, Lbpp;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lbpp;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbpp;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbpp;->setReloadData(Z)V

    iget-object v0, p0, Lbpp;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const v0, 0x7f0b0973

    invoke-virtual {p0, v0}, Lbpp;->setEmptyText(I)V

    :cond_0
    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b02a1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
