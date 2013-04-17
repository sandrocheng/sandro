.class public final Lauu;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Lky;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private b:Lsy;

.field private c:Lzs;

.field private d:Lho;

.field private e:Lki;

.field private f:Lhi;

.field private g:Ljm;

.field private h:Ljb;

.field private i:Z

.field private j:Z

.field private k:Ldv;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lauu;->i:Z

    iput-boolean v0, p0, Lauu;->j:Z

    new-instance v0, Lauv;

    invoke-direct {v0, p0}, Lauv;-><init>(Lauu;)V

    iput-object v0, p0, Lauu;->k:Ldv;

    new-instance v0, Lavc;

    invoke-direct {v0, p0}, Lavc;-><init>(Lauu;)V

    iput-object v0, p0, Lauu;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Lauw;

    invoke-direct {v0, p0}, Lauw;-><init>(Lauu;)V

    iput-object v0, p0, Lauu;->m:Landroid/view/View$OnClickListener;

    new-instance v0, Lauy;

    invoke-direct {v0, p0}, Lauy;-><init>(Lauu;)V

    iput-object v0, p0, Lauu;->n:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lauu;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-void
.end method

.method static synthetic a(Lauu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lauu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lauu;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    invoke-static {v0}, La;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmh;

    invoke-direct {v0}, Lmh;-><init>()V

    iput v3, v0, Lmh;->a:I

    iget-object v1, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-static {v1}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lmh;->b:I

    iget-wide v1, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    iput-wide v1, v0, Lmh;->c:J

    const/4 v1, 0x0

    iput v1, v0, Lmh;->d:I

    iget-object v1, p0, Lauu;->g:Ljm;

    invoke-virtual {v1, v0}, Ljm;->a(Lmh;)V

    iget-object v0, p0, Lauu;->g:Ljm;

    invoke-virtual {v0, v3}, Ljm;->c(I)V

    :goto_0
    iget-object v0, p0, Lauu;->c:Lzs;

    new-instance v1, Lavb;

    invoke-direct {v1}, Lavb;-><init>()V

    new-instance v2, Laaa;

    invoke-direct {v2, v0, v3, p1, v1}, Laaa;-><init>(Lzs;ZLcom/tencent/tmsecure/module/aresengine/CallLogEntity;Ldv;)V

    invoke-virtual {v2}, Laaa;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, -0x3e9

    invoke-static {v0, v1, p0}, La;->a(Landroid/content/Context;ILcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lauu;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lauu;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lauu;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lauu;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic d(Lauu;)Ldv;
    .locals 1

    iget-object v0, p0, Lauu;->k:Ldv;

    return-object v0
.end method

.method static synthetic e(Lauu;)Lsy;
    .locals 1

    iget-object v0, p0, Lauu;->b:Lsy;

    return-object v0
.end method

.method static synthetic f(Lauu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lauu;)Lki;
    .locals 1

    iget-object v0, p0, Lauu;->e:Lki;

    return-object v0
.end method

.method static synthetic h(Lauu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lauu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lauu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lauu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lauu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lauu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lauu;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic m(Lauu;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lauu;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lauu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lauu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lauu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lauu;)Ljb;
    .locals 1

    iget-object v0, p0, Lauu;->h:Ljb;

    return-object v0
.end method

.method static synthetic r(Lauu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic s(Lauu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lauu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic t(Lauu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lauu;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic u(Lauu;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lauu;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic v(Lauu;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lauu;->i:Z

    return v0
.end method

.method static synthetic w(Lauu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lauu;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method


# virtual methods
.method public final a(Lky;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lky;->e:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v5}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    aget-object v6, v2, v0

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v7, v6, v8

    iput-object v7, v5, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f02027e

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setIcon(I)V

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v0, Lavd;

    invoke-direct {v0, p0, v3, p1}, Lavd;-><init>(Lauu;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;Lky;)V

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0650

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v4, p1, Lky;->phonenum:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    new-instance v0, Lave;

    invoke-direct {v0, p0, p1}, Lave;-><init>(Lauu;Lky;)V

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lauu;->h:Ljb;

    iget-object v2, p1, Lky;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljb;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    const v1, 0x7f0b064d

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lauu;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 8

    new-instance v0, Laif;

    iget-object v1, p0, Lauu;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lauu;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1, v2}, Laif;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public final getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
    .locals 1

    iget-object v0, p0, Lauu;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lauu;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lauu;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lauu;->j:Z

    iget-object v0, p0, Lauu;->f:Lhi;

    invoke-virtual {v0}, Lhi;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lauu;->mDataList:Ljava/util/List;

    iget-object v0, p0, Lauu;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lauu;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky;

    iget-object v4, p0, Lauu;->h:Ljb;

    iget-object v5, v0, Lky;->phonenum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljb;->a(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lky;->e:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lky;

    invoke-direct {v0}, Lky;-><init>()V

    iget-object v1, p0, Lauu;->mDataList:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lauu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laif;

    iget-object v1, p0, Lauu;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Laif;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lauu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laif;

    iget-object v1, p0, Lauu;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Laif;->b(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lauu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laif;

    iget-object v1, p0, Lauu;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Laif;->c(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lauu;->mHandler:Landroid/os/Handler;

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
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lauu;->d:Lho;

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    iput-object v0, p0, Lauu;->e:Lki;

    invoke-virtual {p0}, Lauu;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-static {v0}, Lsy;->b(Landroid/app/Activity;)Lsy;

    move-result-object v0

    iput-object v0, p0, Lauu;->b:Lsy;

    new-instance v0, Lhi;

    invoke-direct {v0, v2}, Lhi;-><init>(I)V

    iput-object v0, p0, Lauu;->f:Lhi;

    new-instance v0, Lzs;

    iget-object v1, p0, Lauu;->mContext:Landroid/content/Context;

    invoke-direct {v0}, Lzs;-><init>()V

    iput-object v0, p0, Lauu;->c:Lzs;

    sget-object v0, Ljm;->b:Ljm;

    if-nez v0, :cond_0

    new-instance v0, Ljm;

    invoke-direct {v0}, Ljm;-><init>()V

    sput-object v0, Ljm;->b:Ljm;

    :cond_0
    sget-object v0, Ljm;->b:Ljm;

    iput-object v0, p0, Lauu;->g:Ljm;

    invoke-static {}, Ljb;->a()Ljb;

    move-result-object v0

    iput-object v0, p0, Lauu;->h:Ljb;

    iget-object v0, p0, Lauu;->d:Lho;

    invoke-virtual {v0, v2}, Lho;->o(I)V

    invoke-virtual {p0}, Lauu;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {p0}, Lauu;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    const/4 v1, -0x2

    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    :goto_0
    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lauu;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_1
    if-gez v1, :cond_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lauu;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lauu;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lauu;->i:Z

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setContextItemPosition(I)V

    iget-object v0, p0, Lauu;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v4, p0, Lauu;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0190

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/16 v4, 0x9

    iput v4, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v4, p0, Lauu;->mContext:Landroid/content/Context;

    const v5, 0x7f0b000c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v4, 0x2

    iput v4, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v4}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lauu;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0042

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v0, Lky;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lky;->name:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    iget-object v1, v0, Lky;->phonenum:Ljava/lang/String;

    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/16 v1, 0x8

    iput v1, v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v4, p0, Lauu;->mContext:Landroid/content/Context;

    const v5, 0x7f0b018b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v4, 0x6

    iput v4, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v1, Lauz;

    invoke-direct {v1, p0, v2}, Lauz;-><init>(Lauu;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, v0, Lky;->name:Ljava/lang/String;

    iget-object v0, v0, Lky;->phonenum:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    const/4 v0, 0x0

    :cond_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    move-object v0, v1

    :cond_5
    :goto_4
    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    goto/16 :goto_2

    :cond_6
    iget-object v1, v0, Lky;->name:Ljava/lang/String;

    goto :goto_3

    :cond_7
    if-nez v0, :cond_5

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
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

    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

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

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lauu;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lky;

    iget-boolean v1, v0, Lky;->f:Z

    if-nez v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lauu;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lky;

    iget v1, v1, Lky;->id:I

    if-nez v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lauu;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/BatchReportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "OPERATE_KEY"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lauu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_2
    iget-object v1, p0, Lauu;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    iget-object v1, p0, Lauu;->mDataList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lky;

    iput-boolean v3, v1, Lky;->f:Z

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_2
    iput-boolean v2, v0, Lky;->f:Z

    invoke-virtual {p0}, Lauu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public final onLoadDataStart()V
    .locals 4

    const-string v0, ""

    iget-object v1, p0, Lauu;->d:Lho;

    invoke-virtual {v1}, Lho;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lauu;->mContext:Landroid/content/Context;

    const v2, 0x7f0b058d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lauu;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lauu;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    const v1, 0x7f0b027c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    const v1, 0x7f0b027d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    const v1, 0x7f0b027e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    const v1, 0x7f0b027f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 4

    const v3, 0x7f0b01b4

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v2

    iget-object v0, p0, Lauu;->mDataList:Ljava/util/List;

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

    iget-object v0, p0, Lauu;->b:Lsy;

    new-instance v2, Lava;

    invoke-direct {v2, p0}, Lava;-><init>(Lauu;)V

    invoke-virtual {v0, v1, v2}, Lsy;->a(ILdv;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_1

    :sswitch_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lauu;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/BatchOperateActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "OPERATE_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lauu;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lauu;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lauu;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lauu;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    invoke-static {p1, v2, v0}, La;->a(Landroid/view/Menu;ZZ)V

    return v1

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final onResume()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lauu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laif;

    invoke-virtual {v0}, Laif;->a()V

    iget-object v0, p0, Lauu;->d:Lho;

    invoke-virtual {v0}, Lho;->G()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lauu;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lauu;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    instance-of v0, v0, Lawg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lauu;->d:Lho;

    invoke-virtual {v0, v1}, Lho;->d(I)V

    iget-object v0, p0, Lauu;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v0, Lawg;

    invoke-virtual {v0}, Lawg;->a()V

    :cond_0
    iget-object v0, p0, Lauu;->d:Lho;

    invoke-virtual {v0}, Lho;->N()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lauu;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lauu;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    instance-of v0, v0, Lbki;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lauu;->d:Lho;

    invoke-virtual {v0, v1}, Lho;->h(I)V

    iget-object v0, p0, Lauu;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v0, Lbki;

    invoke-virtual {v0}, Lbki;->a()V

    :cond_1
    iget-object v0, p0, Lauu;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final refreshListData()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lauu;->j:Z

    iget-object v0, p0, Lauu;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lauu;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    instance-of v0, v0, Lawg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lauu;->a:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v0, Lawg;

    invoke-virtual {v0}, Lawg;->a()V

    :cond_0
    iget-object v0, p0, Lauu;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_1

    invoke-virtual {p0}, Lauu;->hideEmptyView()V

    :goto_0
    invoke-virtual {p0}, Lauu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laif;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lauu;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Laif;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lauu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v5}, Lauu;->setReloadData(Z)V

    return-void

    :cond_1
    const v0, 0x7f0b05c6

    invoke-virtual {p0, v0}, Lauu;->setEmptyText(I)V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    return-void
.end method
