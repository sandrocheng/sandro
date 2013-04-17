.class public final Lbqs;
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
.field private a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private b:Lrm;

.field private d:Z

.field private e:Z

.field private f:J

.field private g:Z

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lblt;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lbqs;->d:Z

    iput-boolean v0, p0, Lbqs;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbqs;->f:J

    new-instance v0, Lbqt;

    invoke-direct {v0, p0}, Lbqt;-><init>(Lbqs;)V

    iput-object v0, p0, Lbqs;->h:Landroid/os/Handler;

    iput-object p2, p0, Lbqs;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    new-instance v0, Lrm;

    invoke-direct {v0}, Lrm;-><init>()V

    iput-object v0, p0, Lbqs;->b:Lrm;

    return-void
.end method

.method static synthetic a(Lbqs;)J
    .locals 6

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lbqs;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->S()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method static synthetic a(Lbqs;J)J
    .locals 0

    iput-wide p1, p0, Lbqs;->f:J

    return-wide p1
.end method

.method static synthetic a(Lbqs;Lkw;)V
    .locals 3

    invoke-virtual {p0}, Lbqs;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Laly;

    invoke-virtual {v0}, Laly;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lbqs;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Laly;

    invoke-virtual {v0, p1}, Laly;->b(Lkw;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lbqs;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Laly;

    invoke-virtual {v0, v1}, Laly;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lbqs;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Laly;

    invoke-virtual {v0}, Laly;->a()V

    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lbqs;)V
    .locals 0

    invoke-direct {p0}, Lbqs;->d()V

    return-void
.end method

.method static synthetic c(Lbqs;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lbqs;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lbqs;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lbqs;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 12

    const v9, 0x7f0b098e

    const/4 v8, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lbqs;->g:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lbqs;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lbqs;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbqs;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0997

    invoke-virtual {p0, v0}, Lbqs;->setEmptyText(I)V

    invoke-virtual {p0}, Lbqs;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbqs;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0990

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    iget-wide v5, p0, Lbqs;->f:J

    invoke-static {v5, v6}, La;->b(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarTextWithMiddleStyle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lbqs;->d:Z

    if-eqz v0, :cond_5

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lbqs;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v4

    move-wide v10, v0

    move-wide v1, v10

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->T()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v0}, Lkw;->S()J

    move-result-wide v6

    add-long v0, v1, v6

    move-wide v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lbqs;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    if-lez v3, :cond_4

    invoke-virtual {p0}, Lbqs;->hideEmptyView()V

    invoke-virtual {p0}, Lbqs;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v3, p0, Lbqs;->mContext:Landroid/content/Context;

    const v5, 0x7f0b098c

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lbqs;->mDataList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v2}, La;->b(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v9}, Lbqs;->setEmptyText(I)V

    invoke-virtual {p0}, Lbqs;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbqs;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lbqs;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbqs;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbqs;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0987

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private e()Laly;
    .locals 6

    new-instance v0, Laly;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lbqs;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, p0, v1}, Laly;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic e(Lbqs;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lbqs;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lbqs;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbqs;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lbqs;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbqs;->e:Z

    return v0
.end method

.method static synthetic h(Lbqs;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbqs;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lbqs;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbqs;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic j(Lbqs;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbqs;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lbqs;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbqs;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lbqs;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbqs;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lbqs;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbqs;->mDataList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lbqs;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-direct {p0}, Lbqs;->e()Laly;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 1

    invoke-direct {p0}, Lbqs;->e()Laly;

    move-result-object v0

    return-object v0
.end method

.method protected final createOperatingBarDataList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x1

    const v3, 0x7f0b0980

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getFooterView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lbqs;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
    .locals 1

    iget-object v0, p0, Lbqs;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lbqs;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v5, v0, Lbqs;->b:Lrm;

    move-object/from16 v0, p0

    iget-object v1, v0, Lbqs;->mContext:Landroid/content/Context;

    new-instance v6, Lrm$a;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lrm$a;-><init>(Lbqs;)V

    const-class v1, Lcom/tencent/tmsecure/module/applist/AppListManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/applist/AppListManager;

    const-class v2, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v2}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    sget-object v3, LQQPIM/SoftListType;->DEEPCLEAN_SOFT_PATH_LIST:LQQPIM/SoftListType;

    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/applist/AppListManager;->loadAppList(LQQPIM/SoftListType;)LQQPIM/SoftList;

    move-result-object v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v9, v10}, Leb;->a(LQQPIM/SoftList;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llh;

    iget-boolean v3, v1, Llh;->c:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iget-object v4, v1, Llh;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v4, v3

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llg;

    iget-boolean v14, v5, Lrm;->a:Z

    if-nez v14, :cond_d

    iget-object v14, v1, Llh;->a:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    iget-boolean v14, v3, Llg;->c:Z

    if-eqz v14, :cond_1

    :cond_2
    iget-object v14, v1, Llh;->a:Ljava/lang/String;

    invoke-static {v14, v3, v9, v2}, Lrm;->a(Ljava/lang/String;Llg;Ljava/util/Map;Lcom/tencent/tmsecure/module/software/SoftwareManager;)Z

    move-result v14

    if-nez v14, :cond_1

    iget-boolean v14, v3, Llg;->b:Z

    if-eqz v14, :cond_3

    iget-object v14, v3, Llg;->a:Ljava/lang/String;

    invoke-static {v14, v11}, Lrm;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v14

    if-nez v14, :cond_1

    :cond_3
    iget-object v14, v3, Llg;->a:Ljava/lang/String;

    iget-object v15, v3, Llg;->d:Ljava/lang/String;

    invoke-static {v14, v15}, Leb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-eqz v15, :cond_7

    if-nez v4, :cond_4

    iget-object v4, v1, Llh;->a:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkw;

    if-nez v4, :cond_4

    iget-object v4, v1, Llh;->a:Ljava/lang/String;

    const/4 v15, 0x5

    invoke-virtual {v2, v4, v15}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v4

    invoke-static {v4}, La;->a(Lcom/tencent/tmsecure/module/software/AppEntity;)Lkw;

    move-result-object v4

    :cond_4
    if-nez v4, :cond_5

    iget-object v4, v3, Llg;->a:Ljava/lang/String;

    invoke-static {v4, v10}, Lrm;->a(Ljava/lang/String;Ljava/util/Map;)Lkw;

    move-result-object v4

    :cond_5
    if-eqz v4, :cond_9

    iget-boolean v15, v3, Llg;->c:Z

    if-nez v15, :cond_6

    invoke-virtual {v4}, Lkw;->n()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    :cond_6
    invoke-virtual {v4}, Lkw;->T()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_8

    invoke-interface {v15, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v15}, Lkw;->a(Ljava/util/List;)V

    :goto_2
    invoke-virtual {v4}, Lkw;->S()J

    move-result-wide v15

    invoke-static {v14}, La;->e(Ljava/util/List;)J

    move-result-wide v17

    add-long v14, v15, v17

    invoke-virtual {v4, v14, v15}, Lkw;->g(J)V

    :goto_3
    iget-object v3, v3, Llg;->a:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v3, v4

    move-object v4, v3

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v4, v14}, Lkw;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_9
    new-instance v4, Lkw;

    invoke-direct {v4}, Lkw;-><init>()V

    iget-object v15, v1, Llh;->a:Ljava/lang/String;

    invoke-virtual {v4, v15}, Lkw;->setPackageName(Ljava/lang/String;)V

    iget-object v15, v1, Llh;->b:Ljava/lang/String;

    invoke-virtual {v4, v15}, Lkw;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lkw;->T()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_a

    invoke-interface {v15, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v15}, Lkw;->a(Ljava/util/List;)V

    :goto_4
    invoke-virtual {v4}, Lkw;->S()J

    move-result-wide v15

    invoke-static {v14}, La;->e(Ljava/util/List;)J

    move-result-wide v17

    add-long v14, v15, v17

    invoke-virtual {v4, v14, v15}, Lkw;->g(J)V

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lkw;->e(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {v4, v14}, Lkw;->a(Ljava/util/List;)V

    goto :goto_4

    :cond_b
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lkw;->T()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v6, Lrm$a;->a:Lbqs;

    iget-object v3, v3, Lbqs;->mDataList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v6, Lrm$a;->a:Lbqs;

    iget-object v3, v3, Lbqs;->h:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v13, v6, Lrm$a;->a:Lbqs;

    iget-object v13, v13, Lbqs;->h:Landroid/os/Handler;

    invoke-virtual {v13, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, v6, Lrm$a;->a:Lbqs;

    iget-object v3, v3, Lbqs;->mHandler:Landroid/os/Handler;

    const/4 v13, -0x2

    invoke-virtual {v3, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Llh;->a:Ljava/lang/String;

    invoke-interface {v8, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_c
    iget-object v1, v6, Lrm$a;->a:Lbqs;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lbqs;->d:Z

    iget-object v1, v6, Lrm$a;->a:Lbqs;

    iget-object v1, v1, Lbqs;->h:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_d
    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lblt;->onCreate()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6752

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    const/16 v2, 0x8

    invoke-super {p0}, Lblt;->onDestroy()V

    iget-object v0, p0, Lbqs;->mFooterView:Landroid/view/View;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Lbqs;->mFooterView:Landroid/view/View;

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setVisibility(I)V

    iget-object v0, p0, Lbqs;->b:Lrm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lrm;->a:Z

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v0, 0x7f08014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lbqs;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbqs;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Laly;

    invoke-virtual {v0}, Laly;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lbqs;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setAction(Z)V

    invoke-virtual {p0}, Lbqs;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {p0}, Lbqs;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {p0, v0}, Lbqs;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbqu;

    invoke-direct {v1, p0}, Lbqu;-><init>(Lbqs;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStart()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lblt;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbqs;->g:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b0b1c

    invoke-virtual {p0, v0}, Lbqs;->setEmptyText(I)V

    iget-object v0, p0, Lbqs;->mFooterView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lbqs;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iget-object v1, p0, Lbqs;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->removeFooterView(Landroid/view/View;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lbqs;->d()V

    invoke-virtual {p0}, Lbqs;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lbqs;->setReloadData(Z)V

    iput-boolean v2, p0, Lbqs;->d:Z

    iget-object v0, p0, Lbqs;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lbqs;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iget-object v1, p0, Lbqs;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->removeFooterView(Landroid/view/View;)Z

    invoke-virtual {p0}, Lbqs;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    iget-object v1, p0, Lbqs;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lbqs;->mFooterView:Landroid/view/View;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->startRotationAnimation()V

    iget-object v0, p0, Lbqs;->mFooterView:Landroid/view/View;

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->startRotationAnimation()V

    iget-object v0, p0, Lbqs;->b:Lrm;

    iput-boolean v2, v0, Lrm;->a:Z

    iget-object v0, p0, Lbqs;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lblt;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbqs;->g:Z

    return-void
.end method

.method public final refreshListData()V
    .locals 6

    invoke-virtual {p0}, Lbqs;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lbqs;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbqs;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lbqs;->d()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    return-void
.end method
