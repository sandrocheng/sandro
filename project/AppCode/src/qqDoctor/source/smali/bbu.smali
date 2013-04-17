.class public final Lbbu;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Lmb;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmb;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lja;

.field private c:Lain;

.field private d:Lzs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbu;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lbbu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbbu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lmb;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbbu;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lbbu;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lbbu;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbbu;->a:Ljava/util/List;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic b(Lbbu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbbu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lbbu;)Lja;
    .locals 1

    iget-object v0, p0, Lbbu;->b:Lja;

    return-object v0
.end method

.method static synthetic d(Lbbu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbbu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lbbu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbbu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lbbu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbbu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lbbu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbbu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lbbu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbbu;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    new-instance v0, Lain;

    iget-object v1, p0, Lbbu;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lbbu;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lain;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V

    iput-object v0, p0, Lbbu;->c:Lain;

    iget-object v0, p0, Lbbu;->c:Lain;

    return-object v0
.end method

.method public final createOperatingBarDataList()Ljava/util/List;
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

    const/16 v2, 0x3e9

    const v3, 0x7f0b0053

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final loadDataList()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lbbu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbbu;->b:Lja;

    invoke-virtual {v0, v1}, Lja;->a(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb;

    iget-object v5, v1, Lmb;->a:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lmb;->b:Ljava/lang/String;

    iget-object v5, p0, Lbbu;->a:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbbu;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    new-instance v0, Lja;

    invoke-direct {v0}, Lja;-><init>()V

    iput-object v0, p0, Lbbu;->b:Lja;

    new-instance v0, Lzs;

    iget-object v1, p0, Lbbu;->mContext:Landroid/content/Context;

    invoke-direct {v0}, Lzs;-><init>()V

    iput-object v0, p0, Lbbu;->d:Lzs;

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

    iget-object v0, p0, Lbbu;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p3, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbbu;->c:Lain;

    invoke-virtual {v0, p3}, Lain;->a(I)V

    goto :goto_0
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 9

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbbu;->c:Lain;

    invoke-virtual {v0}, Lain;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lbbu;->b:Lja;

    if-eqz v0, :cond_1

    invoke-virtual {v5, v0}, Lja;->d(Lmb;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lmb;->f:Ljava/util/List;

    :cond_1
    iget-object v5, v0, Lmb;->f:Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_2

    :cond_4
    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    new-instance v8, Lmb$a;

    invoke-direct {v8, v0, v5, v6, v7}, Lmb$a;-><init>(Lmb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, -0x1

    iput-wide v5, v8, Lmb$a;->h:J

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lbbu;->d:Lzs;

    new-instance v1, Lbbv;

    invoke-direct {v1, p0, v2}, Lbbv;-><init>(Lbbu;Ljava/util/List;)V

    invoke-virtual {v0, v3, v1}, Lzs;->a(Ljava/util/List;Ldv;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x0

    return v0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    iget-object v0, p0, Lbbu;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final refreshListData()V
    .locals 2

    iget-object v0, p0, Lbbu;->c:Lain;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbbu;->c:Lain;

    invoke-direct {p0}, Lbbu;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lain;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbbu;->c:Lain;

    invoke-virtual {v0}, Lain;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lbbu;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbbu;->setReloadData(Z)V

    :cond_1
    iget-object v0, p0, Lbbu;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbbu;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lbbu;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0b39

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbu;->setEmptyText(Ljava/lang/String;)V

    :goto_1
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->refreshListData()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lbbu;->hideEmptyView()V

    goto :goto_1
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 2

    const v0, 0x7f0b0b3b

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    invoke-virtual {p0}, Lbbu;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    return-void
.end method
