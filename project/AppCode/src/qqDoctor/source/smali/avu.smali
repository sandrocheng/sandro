.class public final Lavu;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# instance fields
.field private a:Lsy;

.field private b:Lzs;

.field private c:Ljp;

.field private d:Lho;

.field private e:Lki;

.field private f:Lhq;

.field private g:Z

.field private h:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private i:Z

.field private j:Z

.field private k:Ljm;

.field private l:Lnd;

.field private m:Luk;

.field private n:Ldv;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lavu;->g:Z

    iput-boolean v0, p0, Lavu;->i:Z

    iput-boolean v0, p0, Lavu;->j:Z

    new-instance v0, Lavv;

    invoke-direct {v0, p0}, Lavv;-><init>(Lavu;)V

    iput-object v0, p0, Lavu;->n:Ldv;

    new-instance v0, Lawd;

    invoke-direct {v0, p0}, Lawd;-><init>(Lavu;)V

    iput-object v0, p0, Lavu;->o:Landroid/view/View$OnClickListener;

    new-instance v0, Lawe;

    invoke-direct {v0, p0}, Lawe;-><init>(Lavu;)V

    iput-object v0, p0, Lavu;->p:Landroid/view/View$OnClickListener;

    new-instance v0, Lawf;

    invoke-direct {v0, p0}, Lawf;-><init>(Lavu;)V

    iput-object v0, p0, Lavu;->q:Landroid/view/View$OnClickListener;

    new-instance v0, Lavw;

    invoke-direct {v0, p0}, Lavw;-><init>(Lavu;)V

    iput-object v0, p0, Lavu;->r:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lavu;->h:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    return-void
.end method

.method static synthetic A(Lavu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lavu;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic B(Lavu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lavu;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic C(Lavu;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic D(Lavu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic E(Lavu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic F(Lavu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic G(Lavu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic H(Lavu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lavu;->d:Lho;

    invoke-virtual {v0}, Lho;->b()I

    move-result v1

    const-string v0, ""

    if-nez v1, :cond_2

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    const v1, 0x7f0b027c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lavu;->mContext:Landroid/content/Context;

    const v2, 0x7f0b058d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lavu;->h:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lavu;->h:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-ne v1, v3, :cond_3

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    const v1, 0x7f0b027d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    const v1, 0x7f0b027e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    const v1, 0x7f0b027f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lavu;)Z
    .locals 1

    iget-boolean v0, p0, Lavu;->j:Z

    return v0
.end method

.method static synthetic b(Lavu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lavu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lavu;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lavu;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lavu;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic e(Lavu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lavu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lavu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lavu;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic h(Lavu;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lavu;)Ldv;
    .locals 1

    iget-object v0, p0, Lavu;->n:Ldv;

    return-object v0
.end method

.method static synthetic j(Lavu;)Lsy;
    .locals 1

    iget-object v0, p0, Lavu;->a:Lsy;

    return-object v0
.end method

.method static synthetic k(Lavu;)Lnd;
    .locals 1

    iget-object v0, p0, Lavu;->l:Lnd;

    return-object v0
.end method

.method static synthetic l(Lavu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lavu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lavu;)Lki;
    .locals 1

    iget-object v0, p0, Lavu;->e:Lki;

    return-object v0
.end method

.method static synthetic o(Lavu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lavu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lavu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lavu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic s(Lavu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lavu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic t(Lavu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lavu;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic u(Lavu;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic v(Lavu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lavu;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic w(Lavu;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic x(Lavu;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lavu;->g:Z

    return v0
.end method

.method static synthetic y(Lavu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lavu;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic z(Lavu;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lavu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b020b

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b0045

    new-instance v2, Lavz;

    invoke-direct {v2, p0, p1, v0}, Lavz;-><init>(Lavu;ILcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lawa;

    invoke-direct {v2, v0}, Lawa;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method public final a(Lmk;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    invoke-static {v0}, La;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lavu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f02027c

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIcon(I)V

    const v1, 0x7f0b0486

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v1, p0, Lavu;->d:Lho;

    invoke-virtual {v1}, Lho;->aH()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b048a

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    :goto_0
    const v1, 0x7f0b0045

    new-instance v2, Lawb;

    invoke-direct {v2, v0}, Lawb;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Lavu;->d:Lho;

    invoke-virtual {v0}, Lho;->aI()V

    new-instance v0, Lmh;

    invoke-direct {v0}, Lmh;-><init>()V

    iput v5, v0, Lmh;->a:I

    iget-object v1, p1, Lmk;->phonenum:Ljava/lang/String;

    invoke-static {v1}, Lfu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfu;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lmh;->b:I

    iget-wide v1, p1, Lmk;->date:J

    iput-wide v1, v0, Lmh;->c:J

    iget-object v1, p1, Lmk;->body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lmh;->d:I

    iget-object v1, p0, Lavu;->k:Ljm;

    invoke-virtual {v1, v0}, Ljm;->a(Lmh;)V

    iget-object v0, p0, Lavu;->k:Ljm;

    invoke-virtual {v0, v5}, Ljm;->c(I)V

    iput-boolean v6, p1, Lmk;->k:Z

    :goto_1
    iget-object v0, p0, Lavu;->b:Lzs;

    new-instance v1, Lzv;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v6, p1, v2}, Lzv;-><init>(Lzs;ZLmk;Ldv;)V

    invoke-virtual {v1}, Lzv;->start()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000

    mul-double/2addr v1, v3

    double-to-int v1, v1

    if-nez v1, :cond_1

    const v1, 0x7f0b048b

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0b048c

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, -0x3e9

    invoke-static {v0, v1, p0}, La;->a(Landroid/content/Context;ILcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    goto :goto_1
.end method

.method public final b(I)Z
    .locals 8

    const/4 v3, 0x1

    iget-object v0, p0, Lavu;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lmk;

    iget-object v0, p0, Lavu;->c:Ljp;

    invoke-virtual {v0, v6}, Ljp;->a(Lmk;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v0, 0x7f0b01c5

    :goto_0
    iget-object v1, p0, Lavu;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lha;->a(Landroid/content/Context;I)V

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lmk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v4, Lvk$a;

    const/16 v0, 0xf

    invoke-direct {v4, v6, v0}, Lvk$a;-><init>(Lmk;I)V

    iget-object v0, p0, Lavu;->a:Lsy;

    iget-object v1, v6, Lmk;->name:Ljava/lang/String;

    invoke-virtual {v6}, Lmk;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lavu;->n:Ldv;

    invoke-virtual/range {v0 .. v5}, Lsy;->a(Ljava/lang/String;Ljava/lang/String;ILvk$a;Ldv;)V

    :cond_0
    iget-object v0, p0, Lavu;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lavu;->b:Lzs;

    const/16 v1, 0xc

    invoke-virtual {v0, v6, v3, v1}, Lzs;->a(Lmk;ZI)V

    :cond_1
    return v7

    :cond_2
    const v0, 0x7f0b01cd

    goto :goto_0
.end method

.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 8

    new-instance v0, Laiw;

    iget-object v1, p0, Lavu;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Lavu;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1, v2, p0}, Laiw;-><init>(Landroid/content/Context;Ljava/util/List;Lavu;)V

    return-object v0
.end method

.method public final getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
    .locals 1

    iget-object v0, p0, Lavu;->h:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lavu;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lavu;->i:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lavu;->i:Z

    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    iget-object v1, p0, Lavu;->c:Ljp;

    invoke-virtual {v1}, Ljp;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v1, v2

    :goto_0
    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v3, p0, Lavu;->k:Ljm;

    invoke-virtual {v3, v0}, Ljm;->a(Lmk;)Z

    move-result v3

    iput-boolean v3, v0, Lmk;->k:Z

    iget-object v3, p0, Lavu;->f:Lhq;

    iget-object v4, v0, Lmk;->phonenum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lhq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lmk;->name:Ljava/lang/String;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lmk;

    invoke-direct {v0}, Lmk;-><init>()V

    iget-object v1, p0, Lavu;->mDataList:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lavu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiw;

    iget-object v1, p0, Lavu;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Laiw;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lavu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiw;

    iget-object v1, p0, Lavu;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Laiw;->b(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lavu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiw;

    iget-object v1, p0, Lavu;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Laiw;->c(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lavu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiw;

    iget-object v1, p0, Lavu;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Laiw;->d(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lavu;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public final onBackClick()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onBackClick()V

    sget-object v0, Lug;->g:Lug;

    if-nez v0, :cond_0

    new-instance v0, Lug;

    invoke-direct {v0}, Lug;-><init>()V

    sput-object v0, Lug;->g:Lug;

    :cond_0
    sget-object v0, Lug;->g:Lug;

    if-eqz v0, :cond_2

    sget-object v0, Lug;->g:Lug;

    if-nez v0, :cond_1

    new-instance v0, Lug;

    invoke-direct {v0}, Lug;-><init>()V

    sput-object v0, Lug;->g:Lug;

    :cond_1
    sget-object v0, Lug;->g:Lug;

    invoke-virtual {v0}, Lug;->a()V

    :cond_2
    return-void
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    iput-object v0, p0, Lavu;->e:Lki;

    new-instance v0, Lzs;

    iget-object v1, p0, Lavu;->mContext:Landroid/content/Context;

    invoke-direct {v0}, Lzs;-><init>()V

    iput-object v0, p0, Lavu;->b:Lzs;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lavu;->d:Lho;

    invoke-virtual {p0}, Lavu;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-static {v0}, Lsy;->b(Landroid/app/Activity;)Lsy;

    move-result-object v0

    iput-object v0, p0, Lavu;->a:Lsy;

    new-instance v0, Ljp;

    const-string v1, "smslog"

    const-string v2, "mms_pdu"

    const-string v3, "mms_parts"

    invoke-direct {v0, v1, v2, v3}, Ljp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lavu;->c:Ljp;

    new-instance v0, Lhq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    iput-object v0, p0, Lavu;->f:Lhq;

    sget-object v0, Ljm;->b:Ljm;

    if-nez v0, :cond_0

    new-instance v0, Ljm;

    invoke-direct {v0}, Ljm;-><init>()V

    sput-object v0, Ljm;->b:Ljm;

    :cond_0
    sget-object v0, Ljm;->b:Ljm;

    iput-object v0, p0, Lavu;->k:Ljm;

    invoke-virtual {p0}, Lavu;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {p0}, Lavu;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerForContextMenu(Landroid/view/View;)V

    new-instance v0, Luk;

    invoke-direct {v0}, Luk;-><init>()V

    iput-object v0, p0, Lavu;->m:Luk;

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    iput-object v0, p0, Lavu;->l:Lnd;

    iget-object v0, p0, Lavu;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x2

    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    :goto_0
    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lavu;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    :goto_1
    if-gez v4, :cond_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lavu;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lavu;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v1, v0, Lmk;->id:I

    if-eqz v1, :cond_0

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v1, p0, Lavu;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v5, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setContextItemPosition(I)V

    iget-object v1, v0, Lmk;->phonenum:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v6, p0, Lavu;->g:Z

    if-eqz v6, :cond_0

    iput-boolean v3, p0, Lavu;->g:Z

    iget-object v6, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v6, :cond_3

    invoke-static {}, Lu;->a()Lu;

    move-result-object v6

    invoke-virtual {v6}, Lu;->b()I

    move-result v6

    if-gt v6, v2, :cond_3

    new-instance v6, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v6}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-boolean v7, v0, Lmk;->k:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lavu;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0055

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    :goto_3
    const/16 v7, 0xb

    iput v7, v6, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_8

    invoke-static {v1}, Lfu;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_4
    if-eqz v1, :cond_4

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lavu;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0190

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/16 v2, 0xa

    iput v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lavu;->mContext:Landroid/content/Context;

    const v3, 0x7f0b018f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v2, 0x5

    iput v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Lavu;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0188

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v9, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v1, Lavy;

    invoke-direct {v1, p0, v5}, Lavy;-><init>(Lavu;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v5, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, v0, Lmk;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lmk;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v9, :cond_5

    const/4 v0, 0x0

    :cond_5
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    move-object v0, v1

    :cond_6
    :goto_5
    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    goto/16 :goto_2

    :cond_7
    iget-object v7, p0, Lavu;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0053

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    move v1, v3

    goto :goto_4

    :cond_9
    if-nez v0, :cond_6

    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_a
    move v4, v0

    goto/16 :goto_1
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onDestroy()V

    sget-object v0, Lug;->g:Lug;

    if-nez v0, :cond_0

    new-instance v0, Lug;

    invoke-direct {v0}, Lug;-><init>()V

    sput-object v0, Lug;->g:Lug;

    :cond_0
    sget-object v0, Lug;->g:Lug;

    if-eqz v0, :cond_2

    sget-object v0, Lug;->g:Lug;

    if-nez v0, :cond_1

    new-instance v0, Lug;

    invoke-direct {v0}, Lug;-><init>()V

    sput-object v0, Lug;->g:Lug;

    :cond_1
    sget-object v0, Lug;->g:Lug;

    invoke-virtual {v0}, Lug;->a()V

    :cond_2
    iget-object v0, p0, Lavu;->m:Luk;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lavu;->m:Luk;

    invoke-virtual {v0}, Luk;->e()V

    :cond_3
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lavu;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setTag(Ljava/lang/Object;)V

    iget v1, v0, Lmk;->id:I

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lavu;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/BatchReportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "OPERATE_KEY"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lavu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget v1, v0, Lmk;->a:I

    if-nez v1, :cond_1

    iput v4, v0, Lmk;->a:I

    iget-object v1, p0, Lavu;->c:Ljp;

    iget v2, v0, Lmk;->id:I

    invoke-virtual {v1, v2}, Ljp;->b(I)V

    iget-object v1, p0, Lavu;->h:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lavu;->h:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    instance-of v1, v1, Lawg;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lavu;->h:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v1, Lawg;

    invoke-virtual {v1}, Lawg;->a()V

    :cond_1
    iget-boolean v5, v0, Lmk;->m:Z

    move v2, v3

    :goto_1
    iget-object v1, p0, Lavu;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lavu;->mDataList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmk;

    iput-boolean v4, v1, Lmk;->m:Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    if-nez v5, :cond_3

    move v3, v4

    :cond_3
    iput-boolean v3, v0, Lmk;->m:Z

    invoke-virtual {p0}, Lavu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lavu;->a()V

    goto :goto_0
.end method

.method public final onLoadDataStart()V
    .locals 1

    iget-boolean v0, p0, Lavu;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lavu;->a()V

    :cond_0
    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 7

    const v5, 0x7f0b01b2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v3

    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_0

    move v0, v1

    :goto_0
    sparse-switch v3, :sswitch_data_0

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :sswitch_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v3, p0, Lavu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v4}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v5, p0, Lavu;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0750

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v2, v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v4, p0, Lavu;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0751

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v1, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v2, Lavx;

    invoke-direct {v2, p0, v0}, Lavx;-><init>(Lavu;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v2, 0x7f0b052b

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_1

    :sswitch_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lavu;->a:Lsy;

    new-instance v3, Lawc;

    invoke-direct {v3, p0}, Lawc;-><init>(Lavu;)V

    invoke-virtual {v0, v2, v3}, Lsy;->a(ILdv;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_1

    :sswitch_2
    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lavu;->mContext:Landroid/content/Context;

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/BatchOperateActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "OPERATE_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lavu;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lavu;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lha;->a(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0x13 -> :sswitch_1
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lavu;->j:Z

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onPause()V

    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9

    const/16 v8, 0x13

    const/16 v7, 0x9

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_3

    move v3, v4

    :goto_2
    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b052c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v8, v2, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v0, :cond_4

    const v3, 0x7f0201fb

    :goto_3
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_5

    :goto_4
    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b0031

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v7, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v0, :cond_6

    const v0, 0x7f0201f8

    :goto_5
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    const v3, 0x7f0201f9

    goto :goto_3

    :cond_5
    move v4, v2

    goto :goto_4

    :cond_6
    const v0, 0x7f0201fa

    goto :goto_5

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method public final onResume()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lavu;->j:Z

    iget-object v0, p0, Lavu;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lavu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiw;

    invoke-virtual {v0}, Laiw;->a()V

    return-void
.end method

.method public final onRetry()V
    .locals 2

    iget-object v0, p0, Lavu;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lavu;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    invoke-virtual {p0, v0}, Lavu;->a(Lmk;)V

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onStart()V

    return-void
.end method

.method public final refreshListData()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lavu;->i:Z

    iget-object v0, p0, Lavu;->h:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavu;->h:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    instance-of v0, v0, Lawg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavu;->h:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v0, Lawg;

    invoke-virtual {v0}, Lawg;->a()V

    :cond_0
    iget-object v0, p0, Lavu;->c:Ljp;

    invoke-virtual {v0}, Ljp;->d()V

    iget-object v0, p0, Lavu;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_1

    invoke-virtual {p0}, Lavu;->hideEmptyView()V

    :goto_0
    invoke-virtual {p0}, Lavu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laiw;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Lavu;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Laiw;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lavu;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v5}, Lavu;->setReloadData(Z)V

    return-void

    :cond_1
    const v0, 0x7f0b05c5

    invoke-virtual {p0, v0}, Lavu;->setEmptyText(I)V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    return-void
.end method
