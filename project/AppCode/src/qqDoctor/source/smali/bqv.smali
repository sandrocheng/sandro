.class public final Lbqv;
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
.field protected a:Landroid/os/Handler;

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

.field private e:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lzo;

.field private h:Lho;

.field private i:Z

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lblt;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbqv;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbqv;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbqv;->i:Z

    new-instance v0, Lbqz;

    invoke-direct {v0, p0}, Lbqz;-><init>(Lbqv;)V

    iput-object v0, p0, Lbqv;->a:Landroid/os/Handler;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbqv;->h:Lho;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbqv;->f:Ljava/util/List;

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v0

    iput-object v0, p0, Lbqv;->g:Lzo;

    invoke-static {}, Lvh;->a()Lvh;

    new-instance v0, Lbqw;

    invoke-direct {v0, p0}, Lbqw;-><init>(Lbqv;)V

    iput-object v0, p0, Lbqv;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lbqv;)V
    .locals 2

    invoke-virtual {p0}, Lbqv;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionNotifyImg(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbqv;->i:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lbqv;J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {p1, p2}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbqv;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbqv;->mContext:Landroid/content/Context;

    const v4, 0x7f0b054b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lbqv;)Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;
    .locals 1

    iget-object v0, p0, Lbqv;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    return-object v0
.end method

.method static synthetic c(Lbqv;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbqv;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lbqv;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbqv;->d:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lbqv;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lbqv;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalz;

    iget-object v1, p0, Lbqv;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkw;

    iget-object v3, p0, Lbqv;->g:Lzo;

    invoke-virtual {v3, v1}, Lzo;->c(Lkw;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lkw;->w()V

    iget-object v3, p0, Lbqv;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lalz;->b(Lkw;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lkw;->w()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e()Ljava/util/List;
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

    iget-object v2, p0, Lbqv;->d:Ljava/util/List;

    iget-object v3, p0, Lbqv;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0322

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbqv;->b:Ljava/util/List;

    iget-object v3, p0, Lbqv;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0321

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic e(Lbqv;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbqv;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lbqv;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbqv;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lbqv;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbqv;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lbqv;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbqv;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lbqv;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbqv;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lbqv;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbqv;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lbqv;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbqv;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lbqv;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbqv;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lbqv;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbqv;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lbqv;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f020256

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionNotifyImg(I)V

    iput-boolean v3, p0, Lbqv;->i:Z

    iget-object v0, p0, Lbqv;->h:Lho;

    invoke-virtual {v0}, Lho;->dI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqv;->j:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final bridge synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-virtual {p0}, Lbqv;->createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

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

    new-instance v0, Lalz;

    invoke-direct {p0}, Lbqv;->e()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lalz;-><init>(Lbqv;Ljava/util/List;)V

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

    const v3, 0x7f0b0964

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final isPinnedHeaderListView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final loadDataList()V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbqv;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbqv;->d:Ljava/util/List;

    iget-object v0, p0, Lbqv;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbqv;->g:Lzo;

    invoke-virtual {v0}, Lzo;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lhg;

    invoke-direct {v3}, Lhg;-><init>()V

    iget-object v3, v3, Lhg;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lkw;->G()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lbqv;->g:Lzo;

    invoke-static {v0}, Lzo;->d(Lkw;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbqv;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v0, v6}, Lkw;->b(I)V

    iget-object v2, p0, Lbqv;->g:Lzo;

    invoke-virtual {v2, v0}, Lzo;->b(Lkw;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v6}, Lkw;->c(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lbqv;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lkw;->c(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbqv;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbqv;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lbqv;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lbqv;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lbqv;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lbqv;->d()V

    iget-object v0, p0, Lbqv;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Lblt;->onCreate()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v1, p0, Lbqv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbqv;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lbqv;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0278

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbqv;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lbqv;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    new-instance v1, Lbqx;

    invoke-direct {v1, p0}, Lbqx;-><init>(Lbqv;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lbqv;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v1, p0, Lbqv;->mContext:Landroid/content/Context;

    const v2, 0x7f0b043e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->g()V

    iget-object v0, p0, Lbqv;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v0, p0, Lbqv;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lhg;

    invoke-direct {v2}, Lhg;-><init>()V

    iget-object v2, v2, Lhg;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbqv;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setContextItemPosition(I)V

    iget-object v0, p0, Lbqv;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    goto :goto_0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->onClick(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbqv;->a()V

    :cond_0
    return-void
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
    invoke-virtual {p0}, Lbqv;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalz;

    invoke-virtual {v0}, Lalz;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbqv;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setAction(Z)V

    invoke-virtual {p0}, Lbqv;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {p0}, Lbqv;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {p0, v0}, Lbqv;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    invoke-virtual {p0}, Lbqv;->getListView()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setEnabled(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbqy;

    invoke-direct {v1, p0}, Lbqy;-><init>(Lbqv;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onOptionClick(I)V
    .locals 4

    iget-boolean v0, p0, Lbqv;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbqv;->h:Lho;

    invoke-virtual {v0}, Lho;->dH()V

    :cond_0
    invoke-virtual {p0}, Lbqv;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionNotifyImg(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbqv;->i:Z

    :cond_1
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x667a

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    invoke-virtual {p0}, Lbqv;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lbqv;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/systemoptimize/UserWhiteListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Lblt;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lblt;->onResume()V

    iget-object v0, p0, Lbqv;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lbqv;->d()V

    iget-object v0, p0, Lbqv;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final refreshListData()V
    .locals 4

    invoke-virtual {p0}, Lbqv;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-direct {p0}, Lbqv;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbqv;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalz;

    iget-object v1, p0, Lbqv;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lalz;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lbqv;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Lalz;

    invoke-virtual {v0}, Lalz;->a()V

    invoke-virtual {p0}, Lbqv;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbqv;->setReloadData(Z)V

    invoke-virtual {p0}, Lbqv;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lvh;->f()J

    move-result-wide v1

    const/16 v3, 0x34

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const/16 v3, 0xa

    shl-long/2addr v1, v3

    invoke-static {v1, v2}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbqv;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarRamAndProcessCount(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 3

    const v0, 0x7f0b0963

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    invoke-static {}, Lvh;->f()J

    move-result-wide v0

    const/16 v2, 0x34

    invoke-virtual {p1, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const/16 v2, 0xa

    shl-long/2addr v0, v2

    invoke-static {v0, v1}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbqv;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarRamAndProcessCount(Ljava/lang/String;I)V

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    return-void
.end method
