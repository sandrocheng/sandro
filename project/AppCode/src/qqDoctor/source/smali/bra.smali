.class public final Lbra;
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

.field private f:Z

.field private g:Z

.field private h:J

.field private i:Z

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lblt;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lbra;->d:Z

    iput-boolean v0, p0, Lbra;->e:Z

    iput-boolean v0, p0, Lbra;->f:Z

    iput-boolean v0, p0, Lbra;->g:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbra;->h:J

    new-instance v0, Lbrb;

    invoke-direct {v0, p0}, Lbrb;-><init>(Lbra;)V

    iput-object v0, p0, Lbra;->j:Landroid/os/Handler;

    iput-object p2, p0, Lbra;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    new-instance v0, Lrm;

    invoke-direct {v0}, Lrm;-><init>()V

    iput-object v0, p0, Lbra;->b:Lrm;

    return-void
.end method

.method private a()V
    .locals 10

    const/4 v5, 0x0

    iget-boolean v0, p0, Lbra;->i:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v1, 0x0

    move v4, v5

    move v3, v5

    :goto_1
    const/4 v0, 0x5

    if-ge v4, v0, :cond_2

    iget-object v0, p0, Lbra;->mDataList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->U()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lbra;->mDataList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->U()I

    move-result v0

    add-int/2addr v3, v0

    iget-object v0, p0, Lbra;->mDataList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->S()J

    move-result-wide v6

    add-long v0, v1, v6

    move v2, v3

    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move-wide v8, v0

    move-wide v1, v8

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lbra;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    if-lez v3, :cond_3

    invoke-virtual {p0}, Lbra;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v4, p0, Lbra;->mContext:Landroid/content/Context;

    const v6, 0x7f0b098d

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v5

    const/4 v3, 0x1

    invoke-static {v1, v2}, La;->b(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarTextWithMiddleStyle(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lbra;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbra;->mContext:Landroid/content/Context;

    const v2, 0x7f0b098e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarTextWithMiddleStyle(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-wide v8, v1

    move-wide v0, v8

    move v2, v3

    goto :goto_2
.end method

.method static synthetic a(Lbra;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lbra;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbra;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0988

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbra;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbra;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarTextWithMiddleStyle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lkw;

    invoke-direct {v0}, Lkw;-><init>()V

    invoke-virtual {v0, p1}, Lkw;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lkw;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lbra;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkw;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lkw;->n(I)V

    iget-object v1, p0, Lbra;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lbra;->mDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbra;->mDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lkw;->a(Ljava/util/List;)V

    iget-object v0, p0, Lbra;->mDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, La;->e(Ljava/util/List;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lkw;->g(J)V

    iget-object v0, p0, Lbra;->mDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lkw;->n(I)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method static synthetic a(Lbra;)Z
    .locals 4

    const/4 v2, 0x0

    move v3, v2

    move v1, v2

    :goto_0
    const/4 v0, 0x5

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lbra;->mDataList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbra;->mDataList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->U()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lbra;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lamb;

    invoke-virtual {v0}, Lamb;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lbra;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbra;->g:Z

    return v0
.end method

.method static synthetic c(Lbra;)V
    .locals 0

    invoke-direct {p0}, Lbra;->d()V

    return-void
.end method

.method private d()V
    .locals 6

    iget-boolean v0, p0, Lbra;->i:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lbra;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbra;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbra;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0990

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lbra;->h:J

    invoke-static {v4, v5}, La;->b(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarTextWithMiddleStyle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lbra;)V
    .locals 0

    invoke-direct {p0}, Lbra;->a()V

    return-void
.end method

.method private e()Lamb;
    .locals 6

    new-instance v0, Lamb;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lbra;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, p0, v1}, Lamb;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseListView;Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic e(Lbra;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbra;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lbra;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbra;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic g(Lbra;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbra;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lbra;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbra;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lbra;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbra;->mDataList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-direct {p0}, Lbra;->e()Lamb;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 1

    invoke-direct {p0}, Lbra;->e()Lamb;

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

.method public final getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
    .locals 1

    iget-object v0, p0, Lbra;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lbra;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbra;->b:Lrm;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lrm$b;

    invoke-direct {v0, p0}, Lrm$b;-><init>(Lbra;)V

    invoke-virtual {v1, v2, v0}, Lrm;->a(Ljava/io/File;Lrm$b;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lbra;->a(Ljava/util/List;)V

    iget-object v0, p0, Lbra;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lblt;->onCreate()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b0b1c

    invoke-virtual {p0, v0}, Lbra;->setEmptyText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbra;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0981

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f020061

    invoke-direct {p0, v0, v1}, Lbra;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lbra;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0982

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f020062

    invoke-direct {p0, v0, v1}, Lbra;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lbra;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0983

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f020060

    invoke-direct {p0, v0, v1}, Lbra;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lbra;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0984

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f020063

    invoke-direct {p0, v0, v1}, Lbra;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lbra;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0985

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f02005f

    invoke-direct {p0, v0, v1}, Lbra;->a(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lbra;->refreshListData()V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lblt;->onDestroy()V

    iget-object v0, p0, Lbra;->b:Lrm;

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
    invoke-virtual {p0}, Lbra;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lamb;

    invoke-virtual {v0}, Lamb;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lbra;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setAction(Z)V

    invoke-virtual {p0}, Lbra;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {p0}, Lbra;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {p0, v0}, Lbra;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbrc;

    invoke-direct {v1, p0}, Lbrc;-><init>(Lbra;)V

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

    const/4 v2, 0x1

    invoke-super {p0}, Lblt;->onStart()V

    iput-boolean v2, p0, Lbra;->i:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b0b1c

    invoke-virtual {p0, v0}, Lbra;->setEmptyText(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lbra;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbra;->f:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lbra;->e:Z

    iget-object v0, p0, Lbra;->b:Lrm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lrm;->a:Z

    iget-object v0, p0, Lbra;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lbra;->g:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lbra;->d()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lbra;->a()V

    goto :goto_0
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lblt;->onStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbra;->i:Z

    return-void
.end method

.method public final refreshListData()V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lbra;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lbra;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v7}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbra;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    iget-boolean v0, p0, Lbra;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lbra;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lbra;->f:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    move-wide v3, v0

    move v1, v2

    :goto_0
    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lbra;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->S()J

    move-result-wide v5

    add-long/2addr v3, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iput-wide v3, p0, Lbra;->h:J

    invoke-direct {p0}, Lbra;->a()V

    invoke-virtual {p0}, Lbra;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lamb;

    invoke-virtual {v0, v7}, Lamb;->a(Z)V

    iput-boolean v2, p0, Lbra;->e:Z

    iput-boolean v7, p0, Lbra;->f:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iput-boolean v7, p0, Lbra;->d:Z

    goto :goto_1
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    return-void
.end method
