.class public final Lbax;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Lmn;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/network/NetworkManager;

.field private b:Lcom/tencent/tmsecure/module/netsetting/FirewallManager;

.field private c:Lih;

.field private d:Ljf;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmn;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkx;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Z

.field private j:Lbbo;

.field private k:Lakc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;Z)V
    .locals 2

    const/4 v1, -0x2

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljf;

    invoke-direct {v0}, Ljf;-><init>()V

    iput-object v0, p0, Lbax;->d:Ljf;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbax;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbax;->f:Ljava/util/List;

    iput v1, p0, Lbax;->g:I

    iput v1, p0, Lbax;->h:I

    iput-boolean p3, p0, Lbax;->i:Z

    check-cast p2, Lbbo;

    iput-object p2, p0, Lbax;->j:Lbbo;

    return-void
.end method

.method static synthetic a(Lbax;I)I
    .locals 0

    iput p1, p0, Lbax;->g:I

    return p1
.end method

.method private a(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lbax;->a:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->getTrafficEntity(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/TrafficEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileUpValue:J

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/network/TrafficEntity;->mMobileDownValue:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v4

    :goto_0
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    :goto_1
    return-wide v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-wide v0, v2

    goto :goto_0

    :cond_1
    move-wide v2, v0

    goto :goto_1
.end method

.method static synthetic a(Lbax;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

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
            "Lmn;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lbax;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbax;->e:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbax;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lbax;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method static synthetic a(Lbax;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbax;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmn;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    iput-boolean p2, v0, Lmn;->f:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    iget-object v3, p0, Lbax;->d:Ljf;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    iget v0, v0, Lmn;->a:I

    invoke-virtual {v3, v0}, Ljf;->b(I)Lkx;

    move-result-object v2

    iget-object v2, v2, Lkx;->e:[B

    const/4 v4, 0x7

    int-to-byte v5, v1

    aput-byte v5, v2, v4

    invoke-virtual {v3, v0, v2}, Ljf;->a(I[B)I

    new-instance v0, Lbbh;

    invoke-direct {v0, p0, p1, v1}, Lbbh;-><init>(Lbax;Ljava/util/List;I)V

    invoke-virtual {v0}, Lbbh;->start()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(Lmn;Ljava/util/List;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmn;",
            "Ljava/util/List",
            "<",
            "Lmn;",
            ">;IZ)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-instance v6, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {p0}, Lbax;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b04d1

    invoke-virtual {v6, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lbax;->mContext:Landroid/content/Context;

    const v2, 0x7f0b01a5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p1, Lmn;->c:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    iget-object v0, v0, Lmn;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbax;->mContext:Landroid/content/Context;

    const v2, 0x7f0b01a4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p1, Lmn;->c:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v7, 0x7f0b04f9

    new-instance v0, Lbbi;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lbbi;-><init>(Lbax;Ljava/util/List;Lmn;IZLcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v6, v7, v0, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0480

    new-instance v1, Lbbj;

    invoke-direct {v1, v6}, Lbbj;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v2, 0x2

    invoke-virtual {v6, v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method static synthetic b(Lbax;I)I
    .locals 0

    iput p1, p0, Lbax;->h:I

    return p1
.end method

.method static synthetic b(Lbax;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lbax;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lbax;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbax;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lbax;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lbax;)Ljf;
    .locals 1

    iget-object v0, p0, Lbax;->d:Ljf;

    return-object v0
.end method

.method static synthetic g(Lbax;)Lcom/tencent/tmsecure/module/netsetting/FirewallManager;
    .locals 1

    iget-object v0, p0, Lbax;->b:Lcom/tencent/tmsecure/module/netsetting/FirewallManager;

    return-object v0
.end method

.method static synthetic h(Lbax;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lbax;)I
    .locals 1

    iget v0, p0, Lbax;->h:I

    return v0
.end method

.method static synthetic j(Lbax;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 6

    new-instance v0, Lakc;

    iget-object v1, p0, Lbax;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lbax;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lbax;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-boolean v5, p0, Lbax;->i:Z

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lakc;-><init>(Landroid/content/Context;Ljava/util/List;Lbax;Landroid/widget/ListView;Z)V

    iput-object v0, p0, Lbax;->k:Lakc;

    iget-object v0, p0, Lbax;->k:Lakc;

    return-object v0
.end method

.method public final getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
    .locals 1

    iget-object v0, p0, Lbax;->j:Lbbo;

    invoke-virtual {v0}, Lbbo;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lbax;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lbax;->h:I

    sget-boolean v0, Lih;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbax;->b:Lcom/tencent/tmsecure/module/netsetting/FirewallManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbax;->mContext:Landroid/content/Context;

    new-instance v1, Lbaz;

    invoke-direct {v1, p0}, Lbaz;-><init>(Lbax;)V

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Lxi$a;)V

    goto :goto_0
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    return-void
.end method

.method public final onCreate()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbax;->setReloadData(Z)V

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lih;->a(Landroid/content/Context;)Lih;

    move-result-object v0

    iput-object v0, p0, Lbax;->c:Lih;

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    iput-object v0, p0, Lbax;->a:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/FirewallManager;

    iput-object v0, p0, Lbax;->b:Lcom/tencent/tmsecure/module/netsetting/FirewallManager;

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v12, 0x7

    const/4 v4, 0x2

    const/16 v6, 0x32

    const/4 v10, 0x1

    const/4 v8, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lbax;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-gez v0, :cond_1

    const/16 v0, 0x31

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lbax;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    move v1, v8

    move v2, v8

    :goto_1
    iget-object v0, p0, Lbax;->k:Lakc;

    invoke-virtual {v0}, Lakc;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lbax;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    iget-boolean v0, v0, Lmn;->f:Z

    if-nez v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v10, :cond_5

    iget-object v0, p0, Lbax;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lbax;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lbax;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lbax;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->getEmptyTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tencent/qqpimsecure/uilib/view/template/EmptyTemplateUI;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lbax;->c:Lih;

    invoke-virtual {v0}, Lih;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lbax;->g:I

    if-ne v0, v10, :cond_8

    invoke-virtual {p0}, Lbax;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-static {v0}, La;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lbax;->c:Lih;

    invoke-virtual {v0}, Lih;->b()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lbax;->c:Lih;

    invoke-virtual {v0}, Lih;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lbax;->g:I

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Lbax;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, La;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lbax;->c:Lih;

    invoke-virtual {v0}, Lih;->d()V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lbay;

    invoke-direct {v0, p0}, Lbay;-><init>(Lbax;)V

    invoke-virtual {v0}, Lbay;->start()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lbax;->k:Lakc;

    invoke-virtual {v0}, Lakc;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lbax;->f:Ljava/util/List;

    iget-object v2, p0, Lbax;->d:Ljf;

    invoke-virtual {v2, v0}, Ljf;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v2, v8

    :goto_2
    iget-object v1, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_d

    iget-object v1, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkx;

    iget-object v4, v1, Lkx;->b:Ljava/lang/String;

    if-nez v4, :cond_a

    iget-object v1, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_9
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_a
    iget-object v4, v1, Lkx;->c:Ljava/lang/String;

    if-nez v4, :cond_9

    iget-object v4, v1, Lkx;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lkx;->c:Ljava/lang/String;

    iget-object v4, v1, Lkx;->c:Ljava/lang/String;

    if-nez v4, :cond_b

    iget-object v1, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_b
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_d
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbbf;

    invoke-direct {v1, p0, v3}, Lbbf;-><init>(Lbax;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.qq.AppService"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "cn.imolo.service"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.wd.AndroidDaemon"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.nd.assistance"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.dragon.android.pandaspace"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.qihoo360.daemon"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.htc.android.psclient"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.wandoujia.phoenix2.usbproxy"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v8

    :goto_4
    iget-object v0, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_10

    move v2, v8

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    iget-object v0, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkx;

    iget-object v0, v0, Lkx;->b:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_10
    iget-boolean v0, p0, Lbax;->i:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    move v1, v8

    :goto_6
    iget-object v0, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_11

    iget-object v0, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkx;

    iget-object v0, v0, Lkx;->b:Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lbax;->a:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0, v2, v10}, Lcom/tencent/tmsecure/module/network/NetworkManager;->refreshTrafficInfo([Ljava/lang/String;Z)V

    :cond_12
    iget-object v0, p0, Lbax;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    move v11, v8

    :goto_7
    iget-object v0, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_17

    iget-object v0, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkx;

    iget-boolean v0, p0, Lbax;->i:Z

    if-eqz v0, :cond_13

    iget-object v0, v4, Lkx;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbax;->a(Ljava/lang/String;)J

    move-result-wide v5

    :goto_8
    move v1, v8

    move v9, v8

    :goto_9
    iget-object v0, p0, Lbax;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_14

    iget-object v0, p0, Lbax;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    iget-wide v2, v0, Lmn;->e:J

    cmp-long v0, v2, v5

    if-ltz v0, :cond_14

    add-int/lit8 v2, v9, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v9, v2

    goto :goto_9

    :cond_13
    const-wide/16 v5, 0x0

    goto :goto_8

    :cond_14
    iget-object v0, v4, Lkx;->e:[B

    aget-byte v0, v0, v12

    if-nez v0, :cond_16

    move v7, v10

    :goto_a
    new-instance v0, Lmn;

    iget-object v1, v4, Lkx;->d:Landroid/graphics/drawable/Drawable;

    iget v2, v4, Lkx;->a:I

    iget-object v3, v4, Lkx;->c:Ljava/lang/String;

    iget-object v4, v4, Lkx;->b:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lmn;-><init>(Landroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;JZ)V

    iget-object v1, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_15

    iget-object v1, p0, Lbax;->e:Ljava/util/List;

    invoke-interface {v1, v9, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_15
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_7

    :cond_16
    move v7, v8

    goto :goto_a

    :cond_17
    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lbax;->mContext:Landroid/content/Context;

    const v1, 0x7f0b04d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbax;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0709

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v3, p0, Lbax;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0033

    new-instance v1, Lbba;

    invoke-direct {v1, p0, v2}, Lbba;-><init>(Lbax;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v0, v1, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0043

    new-instance v1, Lbbb;

    invoke-direct {v1, p0, v2}, Lbbb;-><init>(Lbax;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v0, v1, v10}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Lbbe;

    invoke-direct {v0, v2}, Lbbe;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lbax;->h:I

    if-nez v0, :cond_3

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6651

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lbax;->k:Lakc;

    invoke-virtual {v0, p3}, Lakc;->a(I)Lmn;

    move-result-object v3

    iget-boolean v0, v3, Lmn;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lbax;->k:Lakc;

    invoke-virtual {v0}, Lakc;->getDataList()Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    iget v0, v0, Lmn;->a:I

    iget v6, v3, Lmn;->a:I

    if-ne v0, v6, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmn;

    iget-object v0, v0, Lmn;->d:Ljava/lang/String;

    iget-object v6, v3, Lmn;->d:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, v3, Lmn;->a:I

    invoke-direct {p0, v3, v5, v0, v1}, Lbax;->a(Lmn;Ljava/util/List;IZ)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, v3, Lmn;->a:I

    invoke-direct {p0, v5, v1}, Lbax;->a(Ljava/util/List;Z)V

    goto :goto_2
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, -0x2

    const/4 v1, -0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    iget v0, p0, Lbax;->g:I

    if-ltz v0, :cond_2

    iget v0, p0, Lbax;->h:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lbax;->h:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lbax;->startLoading()V

    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lbax;->g:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lbax;->startLoading()V

    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lbax;->g:I

    if-ne v0, v2, :cond_0

    iput v1, p0, Lbax;->g:I

    invoke-virtual {p0}, Lbax;->startLoading()V

    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final refreshListData()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lbax;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b05c3

    invoke-virtual {p0, v0}, Lbax;->setEmptyText(I)V

    :goto_0
    iget v0, p0, Lbax;->h:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lbax;->k:Lakc;

    invoke-virtual {v2, v0}, Lakc;->a(Z)V

    iget-object v0, p0, Lbax;->k:Lakc;

    invoke-direct {p0}, Lbax;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lakc;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbax;->k:Lakc;

    invoke-virtual {v0}, Lakc;->notifyDataSetChanged()V

    iget-object v0, p0, Lbax;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget v3, p0, Lbax;->h:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lbax;->hideEmptyView()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    return-void
.end method
