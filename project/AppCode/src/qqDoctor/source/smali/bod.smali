.class public final Lbod;
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
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field private e:Labe;

.field private f:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lbod;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lblt;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbod;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbod;->d:Ljava/util/List;

    iput-boolean v1, p0, Lbod;->g:Z

    const/4 v0, -0x1

    iput v0, p0, Lbod;->h:I

    iput-boolean v1, p0, Lbod;->i:Z

    new-instance v0, Lboj;

    invoke-direct {v0, p0}, Lboj;-><init>(Lbod;)V

    iput-object v0, p0, Lbod;->j:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    return-void
.end method

.method static synthetic a(Lbod;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lbod;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lbod;)Z
    .locals 1

    iget-boolean v0, p0, Lbod;->g:Z

    return v0
.end method

.method static synthetic a(Lbod;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbod;->g:Z

    return p1
.end method

.method static synthetic b(Lbod;)I
    .locals 1

    iget v0, p0, Lbod;->h:I

    return v0
.end method

.method static synthetic b(Lbod;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lbod;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lbod;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbod;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lbod;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lbod;->mDataList:Ljava/util/List;

    return-object p1
.end method

.method private d()Ljava/util/List;
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

    iget-object v2, p0, Lbod;->b:Ljava/util/List;

    iget-object v3, p0, Lbod;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0314

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbod;->d:Ljava/util/List;

    iget-object v3, p0, Lbod;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0315

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbod;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lbod;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lbod;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbod;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lbod;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method static synthetic d(Lbod;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbod;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lbod;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbod;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lbod;)Labe;
    .locals 1

    iget-object v0, p0, Lbod;->e:Labe;

    return-object v0
.end method

.method static synthetic g(Lbod;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbod;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lbod;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbod;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lbod;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbod;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lbod;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbod;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lbod;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbod;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lbod;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbod;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lbod;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbod;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()Lalt;
    .locals 1

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalt;

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lblt;->a(Landroid/content/Intent;)V

    const v0, 0x7f0b0922

    invoke-virtual {p0, v0}, Lbod;->setEmptyText(I)V

    return-void
.end method

.method public final a(Lkw;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Lge;

    iget-object v3, p0, Lbod;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lge;-><init>(Landroid/content/Context;)V

    new-instance v3, Lge$a;

    invoke-direct {v3, p0}, Lge$a;-><init>(Lbod;)V

    iput-object v3, v2, Lge;->b:Lge$a;

    iget-object v3, v2, Lge;->a:Landroid/content/Context;

    const v4, 0x7f0b05d1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iget-object v3, v2, Lge;->a:Landroid/content/Context;

    const v4, 0x7f0b05cd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, v2, Lge;->a:Landroid/content/Context;

    const v3, 0x7f0b03e8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Lge;->a:Landroid/content/Context;

    const v4, 0x7f0b03f2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v5, v2, Lge;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0045

    new-instance v3, Lgn;

    invoke-direct {v3, v2, v1, p1, v4}, Lgn;-><init>(Lge;ZLkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v2, 0x2

    invoke-virtual {v4, v0, v3, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v2, Lgo;

    invoke-direct {v2, v4}, Lgo;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v4, v0, v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lhg;

    invoke-direct {v4}, Lhg;-><init>()V

    iget-object v4, v4, Lhg;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, v2, Lge;->b:Lge$a;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lge;->b:Lge$a;

    iget-object v0, v0, Lge$a;->a:Lbod;

    invoke-virtual {v0, p1}, Lbod;->b(Lkw;)V

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-virtual {p0}, Lbod;->createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

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

    new-instance v0, Lalt;

    invoke-direct {p0}, Lbod;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lalt;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V

    return-object v0
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalt;

    return-object v0
.end method

.method public final bridge synthetic getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 1

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalt;

    return-object v0
.end method

.method public final getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lblt;->getDataList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isPinnedHeaderListView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final loadDataList()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lbod;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.qqpimsecure.CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_cache_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lbod;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbod;->i:Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbod;->e:Labe;

    invoke-virtual {v1}, Labe;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lbod;->b:Ljava/util/List;

    iget-object v1, p0, Lbod;->e:Labe;

    invoke-virtual {v1}, Labe;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lbod;->d:Ljava/util/List;

    iget-object v1, p0, Lbod;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbod;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lbod;->mDataList:Ljava/util/List;

    new-instance v0, Lbof;

    invoke-direct {v0, p0}, Lbof;-><init>(Lbod;)V

    invoke-virtual {v0}, Lbof;->start()V

    iget-object v0, p0, Lbod;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.qqpimsecure.CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_cache_id"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lbod;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lbod;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lblt;->onCreate()V

    new-instance v0, Labe;

    invoke-direct {v0}, Labe;-><init>()V

    iput-object v0, p0, Lbod;->e:Labe;

    const-class v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iput-object v0, p0, Lbod;->f:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v0, p0, Lbod;->f:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Lbod;->j:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->addListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65bc

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    invoke-virtual {p0}, Lbod;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {p0}, Lbod;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->unregisterForContextMenu(Landroid/view/View;)V

    new-instance v0, Lboe;

    invoke-direct {v0, p0}, Lboe;-><init>(Lbod;)V

    invoke-virtual {v0}, Lboe;->start()V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lbod;->f:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Lbod;->j:Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->removeListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    invoke-super {p0}, Lblt;->onDestroy()V

    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p0, Lbod;->h:I

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalt;

    invoke-virtual {v0}, Lalt;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Lbod;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lbod;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lkw;

    new-instance v9, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbod;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b08f6

    invoke-virtual {v9, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lbod;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v0, 0x7f030045

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0b08f7

    invoke-virtual {v8}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lbod;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0053

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lbog;

    invoke-direct {v7, p0, v8, v9}, Lbog;-><init>(Lbod;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lbod;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/String;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b08f8

    invoke-virtual {v8}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lbod;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/String;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0b08fb

    invoke-virtual {v8}, Lkw;->getSize()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lbod;->a(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lbod;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/String;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbod;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v8}, Lkw;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lbod;->e:Labe;

    invoke-virtual {v0, v8}, Labe;->a(Lkw;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v3, 0x7f0b0902

    sget-object v0, Lkw;->b:[Ljava/lang/String;

    invoke-virtual {v8}, Lkw;->v()I

    move-result v4

    aget-object v4, v0, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lbod;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/String;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_1
    invoke-virtual {v9, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    iget-boolean v0, p0, Lbod;->g:Z

    if-nez v0, :cond_2

    invoke-virtual {v8}, Lkw;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const v0, 0x7f0b004a

    new-instance v1, Lboh;

    invoke-direct {v1, p0, v8, v9}, Lboh;-><init>(Lbod;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v2, 0x1

    invoke-virtual {v9, v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    :cond_3
    const v0, 0x7f0b0047

    new-instance v1, Lboi;

    invoke-direct {v1, v9}, Lboi;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v2, 0x2

    invoke-virtual {v9, v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v9}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lbod;->e:Labe;

    iget-object v0, v0, Labe;->b:Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-virtual {v8}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, LQQPIM/SoftListType;->BLACKLIST_WITHPLUGIN:LQQPIM/SoftListType;

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lkw;->h(I)V

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_1

    const v3, 0x7f0b0900

    sget-object v0, Lkw;->b:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v4, v0, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lbod;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/String;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lbod;->e:Labe;

    iget-object v0, v0, Labe;->b:Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-virtual {v8}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, LQQPIM/SoftListType;->BLACKLIST_ROM:LQQPIM/SoftListType;

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmsecure/module/applist/AppListManager;->contains(Ljava/lang/String;LQQPIM/SoftListType;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lkw;->h(I)V

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_8

    const v3, 0x7f0b0901

    iget-object v0, p0, Lbod;->mContext:Landroid/content/Context;

    const v4, 0x7f0b08c2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lbod;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILjava/lang/String;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lbod;->g:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lbod;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x4150

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lbod;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090021

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0b091f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    new-instance v2, Landroid/widget/TextView;

    iget-object v0, p0, Lbod;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x4170

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lbod;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbod;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0920

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v4

    :sswitch_0
    iget-object v0, p0, Lbod;->b:Ljava/util/List;

    sput-object v0, Lbod;->a:Ljava/util/List;

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lbod;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareBatchUninstallActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lbod;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lbod;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbod;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalt;

    invoke-direct {p0}, Lbod;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalt;->setDataList(Ljava/util/List;)V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalt;

    invoke-virtual {v0}, Lalt;->notifyDataSetChanged()V

    iput-boolean v4, p0, Lbod;->i:Z

    iget-object v0, p0, Lbod;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lbod;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lbod;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/DownloadManagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lbod;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lbod;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRecycleActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x2c -> :sswitch_1
        0x36 -> :sswitch_2
        0x38 -> :sswitch_3
    .end sparse-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/16 v2, 0x38

    const/16 v6, 0x2c

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lbod;->getDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0316

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v2, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020203

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0530

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v5, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02020c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0532

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v6, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020204

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    return v4
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lblt;->onResume()V

    invoke-virtual {p0}, Lbod;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbod;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbod;->setReloadData(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalt;

    invoke-virtual {v0}, Lalt;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final refreshListData()V
    .locals 2

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalt;

    invoke-direct {p0}, Lbod;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalt;->setDataList(Ljava/util/List;)V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalt;

    invoke-virtual {v0}, Lalt;->notifyDataSetChanged()V

    invoke-super {p0}, Lblt;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalt;

    invoke-virtual {v0}, Lalt;->a()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b08c1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
