.class public Layp;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# instance fields
.field private A:Lho;

.field private B:Landroid/widget/LinearLayout;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkv;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/lang/Thread;

.field private E:Lcom/tencent/tmsecure/common/BaseServiceConnection;

.field private F:Landroid/content/DialogInterface$OnCancelListener;

.field private G:Z

.field private H:J

.field private I:Lkv;

.field private J:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private K:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

.field private L:Landroid/os/Handler;

.field private M:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

.field public a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field public c:Landroid/os/Handler;

.field private d:I

.field private e:Z

.field private f:Landroid/widget/RelativeLayout;

.field private g:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageButton;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private q:Landroid/widget/ImageButton;

.field private r:Laib;

.field private s:Lajx;

.field private t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

.field private u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Lkc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0300cb

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Layp;->a:Ljava/util/Stack;

    iput v1, p0, Layp;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Layp;->e:Z

    const-string v0, "history_list"

    iput-object v0, p0, Layp;->w:Ljava/lang/String;

    const-string v0, "found_list"

    iput-object v0, p0, Layp;->x:Ljava/lang/String;

    iput v1, p0, Layp;->y:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layp;->C:Ljava/util/List;

    new-instance v0, Lcom/tencent/tmsecure/common/BaseServiceConnection;

    const-class v1, Layp;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/common/BaseServiceConnection;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Layp;->E:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    new-instance v0, Layr;

    invoke-direct {v0, p0}, Layr;-><init>(Layp;)V

    iput-object v0, p0, Layp;->c:Landroid/os/Handler;

    new-instance v0, Layv;

    invoke-direct {v0, p0}, Layv;-><init>(Layp;)V

    iput-object v0, p0, Layp;->F:Landroid/content/DialogInterface$OnCancelListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Layp;->H:J

    new-instance v0, Layw;

    invoke-direct {v0, p0}, Layw;-><init>(Layp;)V

    iput-object v0, p0, Layp;->L:Landroid/os/Handler;

    new-instance v0, Layx;

    invoke-direct {v0, p0}, Layx;-><init>(Layp;)V

    iput-object v0, p0, Layp;->M:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    return-void
.end method

.method static synthetic a(Layp;I)I
    .locals 0

    iput p1, p0, Layp;->y:I

    return p1
.end method

.method static synthetic a(Layp;J)J
    .locals 0

    iput-wide p1, p0, Layp;->H:J

    return-wide p1
.end method

.method static synthetic a(Layp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Layp;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Layp;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Layp;->D:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Layp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Layp;->C:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Layp;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Layp;->C:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Layp;Lcom/tencent/tmsecure/module/market/IFetchHotWordListener;)V
    .locals 5

    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    new-instance v1, LQQPIM/HotWordReqInfo;

    const/4 v2, 0x1

    iget v3, p0, Layp;->d:I

    const/16 v4, 0xc8

    invoke-direct {v1, v2, v3, v4}, LQQPIM/HotWordReqInfo;-><init>(III)V

    iget v2, p0, Layp;->d:I

    add-int/lit16 v2, v2, 0xc8

    iput v2, p0, Layp;->d:I

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchHotWords(LQQPIM/HotWordReqInfo;Lcom/tencent/tmsecure/module/market/IFetchHotWordListener;)V

    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static synthetic b(Layp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Layp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Layp;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/market/MarketManager;

    new-instance v1, Lcom/tencent/tmsecure/module/market/RequestInfo;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/market/RequestInfo;-><init>()V

    const/16 v2, 0x8

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->type:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchOffset:I

    const/16 v2, 0x28

    iput v2, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->fetchSize:I

    iput-object p1, v1, Lcom/tencent/tmsecure/module/market/RequestInfo;->keyWord:Ljava/lang/String;

    new-instance v2, Layq;

    invoke-direct {v2, p0}, Layq;-><init>(Layp;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/market/MarketManager;->fetchSoftwareList(Lcom/tencent/tmsecure/module/market/RequestInfo;Lcom/tencent/tmsecure/module/market/IMarketManagerListener;)V

    return-void
.end method

.method static synthetic b(Ljava/util/ArrayList;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic c(Layp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Layp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0}, Layp;->d(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic d(Layp;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    iget-object v0, p0, Layp;->F:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method private static d(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-array v4, v2, [I

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v7, v4, v6

    if-eqz v7, :cond_2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aput v0, v4, v6

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_0

    aget v1, v4, v0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method static synthetic e(Layp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Layp;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Layp;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Layp;->D:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic g(Layp;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Layp;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method private g(Lkv;)V
    .locals 4

    const/4 v3, -0x3

    iget-object v0, p0, Layp;->J:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v1, p1, Lkv;->d:Lkw;

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lkv;->d:Lkw;

    invoke-virtual {v2}, Lkw;->D()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppVersionStatus(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Lkv;->mState:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    iget v0, p1, Lkv;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :cond_1
    const/4 v0, -0x4

    iput v0, p1, Lkv;->mState:I

    goto :goto_0

    :pswitch_1
    iput v3, p1, Lkv;->mState:I

    goto :goto_0

    :pswitch_2
    iget v0, p1, Lkv;->mState:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x3

    iput v0, p1, Lkv;->mState:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic h(Layp;)Lho;
    .locals 1

    iget-object v0, p0, Layp;->A:Lho;

    return-object v0
.end method

.method static synthetic i(Layp;)V
    .locals 0

    invoke-direct {p0}, Layp;->m()V

    return-void
.end method

.method static synthetic j(Layp;)Z
    .locals 1

    iget-boolean v0, p0, Layp;->e:Z

    return v0
.end method

.method private k()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Layp;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Layp;->g:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;->c()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Layp;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Layp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Layp;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic k(Layp;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Layp;->e:Z

    return v0
.end method

.method static synthetic l(Layp;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Layp;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method private l()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkv;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Layp;->C:Ljava/util/List;

    iget-object v3, p0, Layp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00be

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic m(Layp;)Lcom/tencent/qqpimsecure/view/market/SearchCenterView;
    .locals 1

    iget-object v0, p0, Layp;->g:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    return-object v0
.end method

.method private m()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Layp;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Layp;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Layp;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v0, v1

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Layp;->n:Ljava/util/ArrayList;

    iget-object v4, p0, Layp;->m:Ljava/util/ArrayList;

    iget v5, p0, Layp;->o:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Layp;->o:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Layp;->o:I

    if-le v3, v2, :cond_2

    iput v1, p0, Layp;->o:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic n(Layp;)I
    .locals 1

    iget v0, p0, Layp;->y:I

    return v0
.end method

.method private n()Z
    .locals 5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    :goto_0
    if-ne v2, v1, :cond_2

    iget-object v1, p0, Layp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Layp;->mContext:Landroid/content/Context;

    const v3, 0x7f0b088a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return v0

    :cond_0
    invoke-static {}, La;->b()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    if-ne v2, v3, :cond_3

    iget-object v1, p0, Layp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Layp;->mContext:Landroid/content/Context;

    const v3, 0x7f0b088d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic o(Layp;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Layp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Layp;->C:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Layp;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Layp;->C:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    invoke-direct {p0, v0}, Layp;->g(Lkv;)V

    goto :goto_1

    :cond_2
    iput-object v1, p0, Layp;->C:Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic p(Layp;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Layp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic q(Layp;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Layp;->v:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic r(Layp;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Layp;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic s(Layp;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Layp;->B:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic t(Layp;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Layp;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Layp;->g:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Layp;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic u(Layp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Layp;->L:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic v(Layp;)J
    .locals 2

    iget-wide v0, p0, Layp;->H:J

    return-wide v0
.end method


# virtual methods
.method protected final a()Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;
    .locals 1

    iget-object v0, p0, Layp;->K:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Layp;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1, p0}, La;->a(Landroid/content/Context;ILcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Layp;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkv;",
            ">;)V"
        }
    .end annotation

    const/4 v3, -0x2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iput v3, v0, Lkv;->mState:I

    const/4 v2, 0x0

    iput v2, v0, Lkv;->mProgress:F

    invoke-direct {p0, v0}, Layp;->g(Lkv;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected final a(Lkv;)V
    .locals 2

    const/4 v1, -0x2

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget v0, p1, Lkv;->mErrorCode:I

    const/16 v1, -0x427

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Layp;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tencent/tmsecure/utils/WifiUtil;->sRedirectLocation:Ljava/lang/String;

    invoke-static {v0, v1}, La;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Layp;->r:Laib;

    iget-object v1, p0, Layp;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Laib;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Layp;->r:Laib;

    invoke-virtual {v0}, Laib;->notifyDataSetChanged()V

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Layp;->q:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-direct {p0}, Layp;->k()V

    iget-object v0, p0, Layp;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Layp;->a:Ljava/util/Stack;

    iget-object v1, p0, Layp;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Layp;->q:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Layp;->h:Landroid/widget/EditText;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Layp;->r:Laib;

    invoke-virtual {v0}, Laib;->a()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Layp;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Layp;->z:Lkc;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lkc;->a(Ljava/lang/String;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Layp;->r:Laib;

    invoke-virtual {v0}, Laib;->b()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v1, v2

    :goto_0
    iget-object v0, p0, Layp;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Layp;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Layp;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    move v0, v2

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Layp;->z:Lkc;

    invoke-virtual {v0, p1}, Lkc;->a(Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Layp;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Layp;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Lmj;

    invoke-direct {v0}, Lmj;-><init>()V

    iput-object p1, v0, Lmj;->a:Ljava/lang/String;

    iget-object v1, p0, Layp;->z:Lkc;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "body"

    iget-object v5, v0, Lmj;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lkc;->a:Lhs;

    iget-object v5, v1, Lkc;->b:Ljava/lang/String;

    const-string v6, "id"

    invoke-virtual {v4, v5, v6, v3}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v1, v1, Lkc;->a:Lhs;

    invoke-virtual {v1}, Lhs;->b()V

    iget-object v1, p0, Layp;->j:Ljava/util/ArrayList;

    iget-object v0, v0, Lmj;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method protected final b(Lkv;)V
    .locals 2

    const/4 v1, -0x2

    iput v1, p1, Lkv;->mState:I

    const/4 v0, 0x0

    iput v0, p1, Lkv;->mProgress:F

    invoke-direct {p0, p1}, Layp;->g(Lkv;)V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Layp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Layp;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Layp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    return-void
.end method

.method protected final c()V
    .locals 2

    const/4 v1, -0x2

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final c(Lkv;)V
    .locals 2

    invoke-direct {p0}, Layp;->n()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Layp;->K:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->startTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    iget-object v0, p0, Layp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01f0

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected final d()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, -0x2

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final d(Lkv;)V
    .locals 2

    invoke-direct {p0}, Layp;->n()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Layp;->K:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->continueTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    iget-object v0, p0, Layp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01f0

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected final e()V
    .locals 2

    const/4 v1, -0x2

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final e(Lkv;)V
    .locals 2

    invoke-static {p1}, Lof;->d(Lkv;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Layp;->J:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->installApp(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b5

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Layp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b088e

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected final f()V
    .locals 2

    const/4 v1, -0x2

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final f(Lkv;)V
    .locals 1

    iget-object v0, p0, Layp;->K:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->pauseTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    return-void
.end method

.method protected final g()V
    .locals 2

    const/4 v1, -0x2

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected final h()V
    .locals 2

    const/4 v1, -0x2

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected final i()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, -0x2

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Layp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Layp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Layp;->k()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Layp;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto :goto_0
.end method

.method public onBackClick()V
    .locals 1

    invoke-virtual {p0}, Layp;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-object v0, p0, Layp;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Layp;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Layp;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Layp;->r:Laib;

    iget-object v1, p0, Layp;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Laib;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Layp;->r:Laib;

    invoke-virtual {v0}, Laib;->notifyDataSetChanged()V

    iget-object v0, p0, Layp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Layp;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v0, p0, Layp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Layp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Layp;->b(Ljava/lang/String;)V

    iget-object v1, p0, Layp;->c:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v0, 0xf

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Layp;->m()V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Layp;->g:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;->c()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Layp;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080242
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    return-void
.end method

.method public onCreate()V
    .locals 8

    const/16 v7, 0x11

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/16 v6, 0x8

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    new-instance v0, Lof;

    invoke-direct {v0}, Lof;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    const-class v0, Lof;

    iget-object v1, p0, Layp;->E:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->bindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iput-object v0, p0, Layp;->K:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Layp;->J:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    new-instance v0, Lkc;

    invoke-direct {v0}, Lkc;-><init>()V

    iput-object v0, p0, Layp;->z:Lkc;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Layp;->A:Lho;

    const v0, 0x7f080242

    invoke-virtual {p0, v0}, Layp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Layp;->h:Landroid/widget/EditText;

    iget-object v0, p0, Layp;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Layp;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080243

    invoke-virtual {p0, v0}, Layp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Layp;->i:Landroid/widget/ImageButton;

    iget-object v0, p0, Layp;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v0, p0, Layp;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080248

    invoke-virtual {p0, v0}, Layp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Layp;->p:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Layp;->p:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080244

    invoke-virtual {p0, v0}, Layp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Layp;->q:Landroid/widget/ImageButton;

    iget-object v0, p0, Layp;->q:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Layp;->q:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f080245

    invoke-virtual {p0, v0}, Layp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Layp;->f:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v1, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    iget-object v4, p0, Layp;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, p0}, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;-><init>(Landroid/content/Context;Layp;)V

    iput-object v1, p0, Layp;->g:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    iget-object v1, p0, Layp;->g:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/view/market/SearchCenterView;->b()V

    iget-object v1, p0, Layp;->f:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Layp;->g:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f080247

    invoke-virtual {p0, v0}, Layp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Layp;->B:Landroid/widget/LinearLayout;

    const v0, 0x7f08024a

    invoke-virtual {p0, v0}, Layp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iput-object v0, p0, Layp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    const v0, 0x7f080249

    invoke-virtual {p0, v0}, Layp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iput-object v0, p0, Layp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    const v0, 0x7f08024b

    invoke-virtual {p0, v0}, Layp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Layp;->v:Landroid/widget/RelativeLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layp;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layp;->k:Ljava/util/ArrayList;

    iget-object v0, p0, Layp;->z:Lkc;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "SELECT * FROM "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lkc;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ORDER BY id DESC"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lkc;->a:Lhs;

    invoke-virtual {v4, v1}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-static {v1}, Lkc;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v4

    iget-object v0, v0, Lkc;->a:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v5, p0, Layp;->j:Ljava/util/ArrayList;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmj;

    iget-object v0, v0, Lmj;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Layp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Layp;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setTag(Ljava/lang/Object;)V

    new-instance v0, Laib;

    iget-object v1, p0, Layp;->mContext:Landroid/content/Context;

    iget-object v4, p0, Layp;->k:Ljava/util/ArrayList;

    iget-object v5, p0, Layp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-direct {v0, v1, v4, v5, p0}, Laib;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/ListView;Layp;)V

    iput-object v0, p0, Layp;->r:Laib;

    iget-object v0, p0, Layp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Layp;->r:Laib;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Layp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Layp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0201a5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Layp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Layp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v6}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Layp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Layp;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Layp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v6}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    new-instance v0, Lajx;

    iget-object v1, p0, Layp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-direct {p0}, Layp;->l()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, p0, v1, v4}, Lajx;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;Ljava/util/List;)V

    iput-object v0, p0, Layp;->s:Lajx;

    iget-object v0, p0, Layp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Layp;->s:Lajx;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Layp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Layp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Layp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f030114

    iget-object v5, p0, Layp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v1, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Layp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Layp;->s:Lajx;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Layp;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layp;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Layp;->n:Ljava/util/ArrayList;

    iput v2, p0, Layp;->o:I

    iget-object v0, p0, Layp;->A:Lho;

    invoke-virtual {v0}, Lho;->cR()J

    move-result-wide v0

    const-wide/32 v4, 0x5265c00

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    move v2, v3

    :cond_1
    if-nez v2, :cond_2

    iget-object v0, p0, Layp;->A:Lho;

    invoke-virtual {v0}, Lho;->bp()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    const/16 v1, 0x10

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    invoke-virtual {p0}, Layp;->getMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/market/SearchLinearLayout;

    iget-object v1, p0, Layp;->g:Lcom/tencent/qqpimsecure/view/market/SearchCenterView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/market/SearchLinearLayout;->setSearchCenterView(Lcom/tencent/qqpimsecure/view/market/SearchCenterView;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65c1

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void

    :cond_3
    iget-object v0, p0, Layp;->A:Lho;

    invoke-virtual {v0}, Lho;->bp()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Layp;->m:Ljava/util/ArrayList;

    iget-object v0, p0, Layp;->m:Ljava/util/ArrayList;

    invoke-static {v0}, Layp;->d(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Layp;->m()V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    const-class v0, Lof;

    iget-object v1, p0, Layp;->E:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->unBindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Layp;->E:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {}, Lof;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lof;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Ljava/lang/Class;)Z

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Layp;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Layp;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Layp;->h:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Layp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Layp;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layp;->C:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget-object v1, v0, Lkv;->d:Lkw;

    iget-object v0, p0, Layp;->C:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkv;

    iget v2, v0, Lkv;->mState:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_2

    iget v2, v0, Lkv;->mState:I

    const/4 v3, -0x4

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-static {v0}, Lof;->a(Lkv;)V

    iput-object v0, p0, Layp;->I:Lkv;

    :cond_3
    invoke-virtual {p0}, Layp;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    const v2, 0x2dc6c0

    add-int/lit8 v3, p3, 0x1

    invoke-static {v0, v1, v2, v3}, Lkw;->a(Landroid/content/Context;Lkw;II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    const/4 v2, -0x2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    invoke-direct {p0}, Layp;->o()V

    iget-object v0, p0, Layp;->s:Lajx;

    invoke-direct {p0}, Layp;->l()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajx;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Layp;->s:Lajx;

    invoke-virtual {v0}, Lajx;->notifyDataSetChanged()V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRetry()V
    .locals 4

    iget-object v0, p0, Layp;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Layp;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Layp;->l:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Layp;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    const/4 v2, -0x2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStart()V

    iget-object v0, p0, Layp;->K:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Layp;->M:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->registListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V

    iget-boolean v0, p0, Layp;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Layp;->G:Z

    invoke-direct {p0}, Layp;->o()V

    iget-object v0, p0, Layp;->s:Lajx;

    invoke-direct {p0}, Layp;->l()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajx;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Layp;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Layp;->I:Lkv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Layp;->I:Lkv;

    invoke-static {v0}, Lof;->b(Lkv;)V

    const/4 v0, 0x0

    iput-object v0, p0, Layp;->I:Lkv;

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStop()V

    iget-object v0, p0, Layp;->K:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Layp;->M:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->unregistListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Layp;->G:Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Layp;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Layp;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Layp;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Layp;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Layp;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Layp;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Layp;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Layp;->t:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public refreshListData()V
    .locals 2

    invoke-direct {p0}, Layp;->o()V

    iget-object v0, p0, Layp;->s:Lajx;

    invoke-direct {p0}, Layp;->l()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lajx;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Layp;->s:Lajx;

    invoke-virtual {v0}, Lajx;->notifyDataSetChanged()V

    return-void
.end method

.method protected subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b09a0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
