.class public final Lbbp;
.super Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView",
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

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmb;",
            ">;"
        }
    .end annotation
.end field

.field private c:Laik;

.field private d:Lja;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private f:Z

.field private g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private h:I

.field private i:Landroid/os/Handler;

.field private j:Landroid/view/View;

.field private k:Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
            "<",
            "Lmb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbp;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbp;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbp;->f:Z

    const/4 v0, -0x1

    iput v0, p0, Lbbp;->h:I

    new-instance v0, Lbbq;

    invoke-direct {v0, p0}, Lbbq;-><init>(Lbbp;)V

    iput-object v0, p0, Lbbp;->i:Landroid/os/Handler;

    iput-object p2, p0, Lbbp;->e:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    iget-object v0, p0, Lbbp;->e:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v0, Lbby;

    iget v0, v0, Lbby;->a:I

    iput v0, p0, Lbbp;->h:I

    return-void
.end method

.method static synthetic a(Lbbp;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lbbp;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic a(Lbbp;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 0

    iput-object p1, p0, Lbbp;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object p1
.end method

.method static synthetic a(Lbbp;I)V
    .locals 0

    invoke-direct {p0, p1}, Lbbp;->b(I)V

    return-void
.end method

.method static synthetic b(Lbbp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbbp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 6
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

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbbp;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lbbp;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbbp;->b:Ljava/util/List;

    iget-object v3, p0, Lbbp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0b35

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lbbp;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbbp;->a:Ljava/util/List;

    iget-object v3, p0, Lbbp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0b34

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lbbp;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lbbp;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbbp;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lbbp;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private b(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lbbp;->j:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbbp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbp;->j:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lbbp;->j:Landroid/view/View;

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lbbp;->j:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbbp;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbbp;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTipsView(Landroid/view/View;)V

    :cond_1
    return-void

    :sswitch_0
    const v1, 0x7f0b0b3d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbbp;->j:Landroid/view/View;

    new-instance v1, Lbbt;

    invoke-direct {v1, p0}, Lbbt;-><init>(Lbbp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lbbp;->j:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0703

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lbbp;->j:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b06fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lbbp;->j:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0708

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_0
        -0x63 -> :sswitch_2
        -0x8 -> :sswitch_3
        -0x7 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic c(Lbbp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbbp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lbbp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbbp;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lbbp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbbp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lbbp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbbp;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/16 v4, 0x31

    const/4 v3, 0x0

    invoke-virtual {p0}, Lbbp;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lbbp;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lbbp;->j:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbbp;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->removeExistedTipsView()V

    iput-object v3, p0, Lbbp;->j:Landroid/view/View;

    :cond_2
    invoke-virtual {p0}, Lbbp;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iget-object v1, p0, Lbbp;->c:Laik;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lbbp;->c:Laik;

    invoke-virtual {v1}, Laik;->a()V

    :cond_4
    iget v1, p0, Lbbp;->h:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    iget v1, p0, Lbbp;->h:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    :cond_5
    iget-object v0, p0, Lbbp;->j:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lbbp;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->removeExistedTipsView()V

    iput-object v3, p0, Lbbp;->j:Landroid/view/View;

    :cond_6
    invoke-virtual {p0}, Lbbp;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {p0}, Lbbp;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbbp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b070a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    :goto_1
    iget v0, p0, Lbbp;->h:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbp;->j:Landroid/view/View;

    if-nez v0, :cond_7

    iget-object v0, p0, Lbbp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbp;->j:Landroid/view/View;

    :cond_7
    iget-object v0, p0, Lbbp;->j:Landroid/view/View;

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lbbp;->j:Landroid/view/View;

    new-instance v2, Lbbs;

    invoke-direct {v2, p0}, Lbbs;-><init>(Lbbp;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b06f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lbbp;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbbp;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTipsView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lho;->di()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbbp;->b(I)V

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Lho;->di()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lxi;->b()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lho;->dz()I

    move-result v0

    invoke-direct {p0, v0}, Lbbp;->b(I)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lbbp;->j:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lbbp;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->removeExistedTipsView()V

    iput-object v3, p0, Lbbp;->j:Landroid/view/View;

    :cond_b
    iget-object v0, p0, Lbbp;->c:Laik;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lbbp;->c:Laik;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->di()Z

    invoke-virtual {v0}, Laik;->a()V

    :cond_c
    invoke-virtual {p0}, Lbbp;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    goto :goto_1
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Lbbp;->h:I

    invoke-virtual {p0}, Lbbp;->a()V

    iget-object v0, p0, Lbbp;->c:Laik;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbp;->c:Laik;

    invoke-virtual {v0, p1}, Laik;->a(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbp;->f:Z

    return-void
.end method

.method public final bridge synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-virtual {p0}, Lbbp;->createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
            "<",
            "Lmb;",
            ">;"
        }
    .end annotation

    new-instance v0, Laik;

    iget-object v1, p0, Lbbp;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lbbp;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Laik;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;Ljava/util/List;)V

    iput-object v0, p0, Lbbp;->c:Laik;

    iget-object v0, p0, Lbbp;->c:Laik;

    iget v1, p0, Lbbp;->h:I

    invoke-virtual {v0, v1}, Laik;->a(I)V

    iget-object v0, p0, Lbbp;->c:Laik;

    iput-object v0, p0, Lbbp;->k:Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    iget-object v0, p0, Lbbp;->k:Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    return-object v0
.end method

.method public final getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
    .locals 1

    iget-object v0, p0, Lbbp;->e:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lbbp;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final isPinnedHeaderListView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final loadDataList()V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lbbp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbbp;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbbp;->d:Lja;

    invoke-virtual {v0, v4}, Lja;->a(Z)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb;

    iget-boolean v2, v1, Lmb;->d:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lmb;->c:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v1, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmb;->b:Ljava/lang/String;

    iget v2, v1, Lmb;->c:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_3

    iget-object v2, p0, Lbbp;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    iget v2, v1, Lmb;->c:I

    if-eq v2, v3, :cond_4

    iget v2, v1, Lmb;->c:I

    if-nez v2, :cond_1

    :cond_4
    iget-object v2, p0, Lbbp;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lbbp;->mHandler:Landroid/os/Handler;

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
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->onCreate()V

    new-instance v0, Lja;

    invoke-direct {v0}, Lja;-><init>()V

    iput-object v0, p0, Lbbp;->d:Lja;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->onResume()V

    iget-object v0, p0, Lbbp;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lbbp;->a()V

    return-void
.end method

.method public final refreshListData()V
    .locals 2

    invoke-virtual {p0}, Lbbp;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->clearDataList()V

    invoke-virtual {p0}, Lbbp;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-direct {p0}, Lbbp;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbbp;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lbbp;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbbp;->setReloadData(Z)V

    :cond_0
    iget-object v0, p0, Lbbp;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbbp;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lbbp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0b39

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbp;->setEmptyText(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lbbp;->hideEmptyView()V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    return-void
.end method
