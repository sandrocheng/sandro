.class public final Lbhz;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private b:Lsy;

.field private c:Lho;

.field private d:Lhi;

.field private e:Lhq;

.field private f:Z

.field private g:Ldv;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbhz;->f:Z

    new-instance v0, Lbia;

    invoke-direct {v0, p0}, Lbia;-><init>(Lbhz;)V

    iput-object v0, p0, Lbhz;->g:Ldv;

    new-instance v0, Lbid;

    invoke-direct {v0, p0}, Lbid;-><init>(Lbhz;)V

    iput-object v0, p0, Lbhz;->h:Landroid/view/View$OnClickListener;

    new-instance v0, Lbie;

    invoke-direct {v0, p0}, Lbie;-><init>(Lbhz;)V

    iput-object v0, p0, Lbhz;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lbif;

    invoke-direct {v0, p0}, Lbif;-><init>(Lbhz;)V

    iput-object v0, p0, Lbhz;->j:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lbhz;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-void
.end method

.method static synthetic a(Lbhz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbhz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lbhz;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbhz;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lbhz;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lbhz;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic d(Lbhz;)Ldv;
    .locals 1

    iget-object v0, p0, Lbhz;->g:Ldv;

    return-object v0
.end method

.method static synthetic e(Lbhz;)Lsy;
    .locals 1

    iget-object v0, p0, Lbhz;->b:Lsy;

    return-object v0
.end method

.method static synthetic f(Lbhz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbhz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lbhz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbhz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lbhz;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lbhz;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic i(Lbhz;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbhz;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lbhz;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lbhz;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic k(Lbhz;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbhz;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lbhz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbhz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lbhz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbhz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lbhz;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lbhz;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic o(Lbhz;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbhz;->mDataList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 8

    new-instance v0, Laiq;

    iget-object v1, p0, Lbhz;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lbhz;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1, v2}, Laiq;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public final getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
    .locals 1

    iget-object v0, p0, Lbhz;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lbhz;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 4

    iget-boolean v0, p0, Lbhz;->f:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbhz;->f:Z

    iget-object v0, p0, Lbhz;->d:Lhi;

    invoke-virtual {v0}, Lhi;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkz;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbhz;->mDataList:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lbhz;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lbhz;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkz;

    iget-object v2, p0, Lbhz;->e:Lhq;

    iget-object v3, v0, Lkz;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lhq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iput-object v2, v0, Lkz;->name:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lbhz;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiq;

    iget-object v1, p0, Lbhz;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Laiq;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lbhz;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiq;

    iget-object v1, p0, Lbhz;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Laiq;->b(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lbhz;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiq;

    iget-object v1, p0, Lbhz;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Laiq;->c(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lbhz;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbhz;->c:Lho;

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    invoke-virtual {p0}, Lbhz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-static {v0}, Lsy;->a(Landroid/app/Activity;)Lsy;

    move-result-object v0

    iput-object v0, p0, Lbhz;->b:Lsy;

    new-instance v0, Lhi;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lhi;-><init>(I)V

    iput-object v0, p0, Lbhz;->d:Lhi;

    new-instance v0, Lhq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    iput-object v0, p0, Lbhz;->e:Lhq;

    invoke-static {}, Lnd;->a()Lnd;

    invoke-virtual {p0}, Lbhz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {p0}, Lbhz;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9

    const/4 v1, -0x2

    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    :goto_0
    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lbhz;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_1
    if-gez v1, :cond_1

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lbhz;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v0, p0, Lbhz;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setContextItemPosition(I)V

    iget-object v0, p0, Lbhz;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky;

    iget-object v2, v0, Lky;->phonenum:Ljava/lang/String;

    iget-object v1, v0, Lky;->name:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v5}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lbhz;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0042

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_2

    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move-object v1, v2

    :cond_3
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/16 v1, 0x8

    iput v1, v5, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lbhz;->mContext:Landroid/content/Context;

    const v5, 0x7f0b018b

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v2, 0x6

    iput v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lbhz;->mContext:Landroid/content/Context;

    const v5, 0x7f0b000c

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v1, Lbib;

    invoke-direct {v1, p0, v3}, Lbib;-><init>(Lbhz;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, v0, Lky;->name:Ljava/lang/String;

    iget-object v0, v0, Lky;->phonenum:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-ge v2, v4, :cond_4

    const/4 v0, 0x0

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    move-object v0, v1

    :cond_5
    :goto_3
    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    goto/16 :goto_2

    :cond_6
    if-nez v0, :cond_5

    iget-object v0, p0, Lbhz;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    move v1, v0

    goto/16 :goto_1
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lbhz;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v1, p0}, La;->a(Landroid/content/Context;ILcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lbhz;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky;

    iget-boolean v2, v0, Lky;->f:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    move v4, v1

    :goto_1
    iget-object v1, p0, Lbhz;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    iget-object v1, p0, Lbhz;->mDataList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lky;

    iput-boolean v3, v1, Lky;->f:Z

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    iput-boolean v2, v0, Lky;->f:Z

    invoke-virtual {p0}, Lbhz;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onLoadDataStart()V
    .locals 4

    iget-object v0, p0, Lbhz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lbhz;->d:Lhi;

    invoke-virtual {v3}, Lhi;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbhz;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 4

    const v3, 0x7f0b01b3

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v2

    iget-object v0, p0, Lbhz;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sparse-switch v2, :sswitch_data_0

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lbhz;->b:Lsy;

    new-instance v2, Lbic;

    invoke-direct {v2, p0}, Lbic;-><init>(Lbhz;)V

    invoke-virtual {v0, v1, v2}, Lsy;->a(ILdv;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lbhz;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_1

    :sswitch_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lbhz;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/BatchOperateActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "OPERATE_KEY"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lbhz;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lbhz;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v2, p0, Lbhz;->mDataList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbhz;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {p1, v1, v0}, La;->a(Landroid/view/Menu;ZZ)V

    return v1

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public final onResume()V
    .locals 2

    invoke-virtual {p0}, Lbhz;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiq;

    invoke-virtual {v0}, Laiq;->a()V

    iget-object v0, p0, Lbhz;->c:Lho;

    invoke-virtual {v0}, Lho;->N()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lbhz;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbhz;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    instance-of v0, v0, Lbki;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbhz;->c:Lho;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lho;->h(I)V

    iget-object v0, p0, Lbhz;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v0, Lbki;

    invoke-virtual {v0}, Lbki;->a()V

    :cond_0
    iget-object v0, p0, Lbhz;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final refreshListData()V
    .locals 7

    const/4 v6, 0x0

    iput-boolean v6, p0, Lbhz;->f:Z

    iget-object v0, p0, Lbhz;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbhz;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    instance-of v0, v0, Lbki;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbhz;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v0, Lbki;

    invoke-virtual {v0}, Lbki;->a()V

    :cond_0
    iget-object v0, p0, Lbhz;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lbhz;->hideEmptyView()V

    :goto_0
    invoke-virtual {p0}, Lbhz;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiq;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lbhz;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Laiq;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbhz;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v6}, Lbhz;->setReloadData(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lbhz;->e:Lhq;

    invoke-virtual {v0}, Lhq;->c()I

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0b05c9

    invoke-virtual {p0, v0}, Lbhz;->setEmptyText(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0b05c8

    invoke-virtual {p0, v0}, Lbhz;->setEmptyText(I)V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    return-void
.end method
