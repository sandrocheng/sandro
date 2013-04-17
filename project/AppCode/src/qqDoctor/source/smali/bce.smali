.class public final Lbce;
.super Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbce$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView",
        "<",
        "Lmb$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmb$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmb$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Laii;

.field private d:Lja;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private g:Landroid/view/View;

.field private h:Z

.field private i:I

.field private j:Landroid/os/Handler;

.field private k:Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
            "<",
            "Lmb$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbce;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbce;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbce;->h:Z

    const/4 v0, -0x1

    iput v0, p0, Lbce;->i:I

    new-instance v0, Lbcf;

    invoke-direct {v0, p0}, Lbcf;-><init>(Lbce;)V

    iput-object v0, p0, Lbce;->j:Landroid/os/Handler;

    new-instance v0, Lbci;

    invoke-direct {v0, p0}, Lbci;-><init>(Lbce;)V

    iput-object v0, p0, Lbce;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Lbcl;

    invoke-direct {v0, p0}, Lbcl;-><init>(Lbce;)V

    iput-object v0, p0, Lbce;->m:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lbce;->e:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    iget-object v0, p0, Lbce;->e:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    check-cast v0, Lbby;

    iget v0, v0, Lbby;->a:I

    iput v0, p0, Lbce;->i:I

    return-void
.end method

.method static synthetic a(Lbce;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lbce;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic a(Lbce;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 0

    iput-object p1, p0, Lbce;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object p1
.end method

.method static synthetic a(Lbce;I)V
    .locals 0

    invoke-direct {p0, p1}, Lbce;->b(I)V

    return-void
.end method

.method static synthetic b(Lbce;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbce;->mContext:Landroid/content/Context;

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
            "Lmb$a;",
            ">;>;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbce;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbce;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbce;->a:Ljava/util/List;

    iget-object v3, p0, Lbce;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0b32

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lbce;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbce;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbce;->b:Ljava/util/List;

    iget-object v3, p0, Lbce;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0b33

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lbce;->mDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lbce;->a:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbce;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lbce;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lbce;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v1, p0, Lbce;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lbce;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lbce;->mDataList:Ljava/util/List;

    iget-object v2, p0, Lbce;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method private b(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lbce;->g:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbce;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbce;->g:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lbce;->g:Landroid/view/View;

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lbce;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbce;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbce;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTipsView(Landroid/view/View;)V

    :cond_1
    return-void

    :sswitch_0
    const v1, 0x7f0b0b3d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbce;->g:Landroid/view/View;

    new-instance v1, Lbcm;

    invoke-direct {v1, p0}, Lbcm;-><init>(Lbce;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lbce;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0703

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lbce;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b06fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lbce;->g:Landroid/view/View;

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

.method static synthetic c(Lbce;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbce;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lbce;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbce;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lbce;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbce;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lbce;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbce;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lbce;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbce;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lbce;)Lja;
    .locals 1

    iget-object v0, p0, Lbce;->d:Lja;

    return-object v0
.end method

.method static synthetic i(Lbce;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbce;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lbce;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbce;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lbce;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbce;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lbce;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbce;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lbce;)V
    .locals 1

    iget-object v0, p0, Lbce;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lwn;->a(Landroid/content/Context;)Lwn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lwn;->b()V

    :cond_0
    return-void
.end method

.method static synthetic n(Lbce;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbce;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lbce;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbce;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lbce;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbce;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic q(Lbce;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbce;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/16 v4, 0x31

    const/4 v3, 0x0

    invoke-virtual {p0}, Lbce;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lbce;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lbce;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbce;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->removeExistedTipsView()V

    iput-object v3, p0, Lbce;->g:Landroid/view/View;

    :cond_1
    invoke-virtual {p0}, Lbce;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbce;->c:Laii;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbce;->c:Laii;

    invoke-virtual {v0}, Laii;->b()V

    :cond_3
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iget v1, p0, Lbce;->i:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    iget v1, p0, Lbce;->i:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    :cond_4
    iget-object v0, p0, Lbce;->g:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lbce;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbce;->g:Landroid/view/View;

    :cond_5
    iget-object v0, p0, Lbce;->g:Landroid/view/View;

    const v1, 0x7f0801e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lbce;->g:Landroid/view/View;

    new-instance v2, Lbch;

    invoke-direct {v2, p0}, Lbch;-><init>(Lbce;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b06f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lbce;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lbce;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTipsView(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lho;->di()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbce;->b(I)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lxi;->b()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lho;->dz()I

    move-result v0

    invoke-direct {p0, v0}, Lbce;->b(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lbce;->g:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lbce;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->removeExistedTipsView()V

    iput-object v3, p0, Lbce;->g:Landroid/view/View;

    :cond_9
    iget-object v0, p0, Lbce;->c:Laii;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbce;->c:Laii;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->di()Z

    invoke-virtual {v0}, Laii;->b()V

    :cond_a
    invoke-virtual {p0}, Lbce;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    goto/16 :goto_0
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Lbce;->i:I

    invoke-virtual {p0}, Lbce;->a()V

    iget-object v0, p0, Lbce;->c:Laii;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbce;->c:Laii;

    invoke-virtual {v0, p1}, Laii;->a(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbce;->h:Z

    return-void
.end method

.method public final bridge synthetic createAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    invoke-virtual {p0}, Lbce;->createAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

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
            "Lmb$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Laii;

    iget-object v1, p0, Lbce;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lbce;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Laii;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;Ljava/util/List;)V

    iput-object v0, p0, Lbce;->c:Laii;

    iget-object v0, p0, Lbce;->c:Laii;

    iget v1, p0, Lbce;->i:I

    invoke-virtual {v0, v1}, Laii;->a(I)V

    iget-object v0, p0, Lbce;->c:Laii;

    iput-object v0, p0, Lbce;->k:Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    iget-object v0, p0, Lbce;->k:Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    return-object v0
.end method

.method public final getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;
    .locals 1

    iget-object v0, p0, Lbce;->e:Lcom/tencent/qqpimsecure/uilib/view/BaseView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lbce;->getMainView()Landroid/view/View;

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

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lbce;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbce;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbce;->d:Lja;

    invoke-virtual {v0, v4}, Lja;->a(Z)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb;

    iget-object v8, v1, Lmb;->a:Ljava/lang/String;

    invoke-virtual {v0, v8, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/tencent/tmsecure/module/software/AppEntity;->getAppName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lmb;->b:Ljava/lang/String;

    iget-object v1, v1, Lmb;->f:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lbce$a;

    invoke-direct {v0, p0}, Lbce$a;-><init>(Lbce;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb$a;

    iget v3, v0, Lmb$a;->e:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    if-eqz v3, :cond_4

    iget-object v3, p0, Lbce;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lmb$a;->i:Lmb;

    iget-boolean v3, v3, Lmb;->d:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lmb$a;->i:Lmb;

    iget v3, v3, Lmb;->c:I

    if-eqz v3, :cond_5

    move v3, v4

    :goto_4
    if-nez v3, :cond_2

    iget-object v3, p0, Lbce;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move v3, v2

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lbce;->mHandler:Landroid/os/Handler;

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
    .locals 3

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->onCreate()V

    new-instance v0, Lja;

    invoke-direct {v0}, Lja;-><init>()V

    iput-object v0, p0, Lbce;->d:Lja;

    invoke-virtual {p0}, Lbce;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Laii;

    iget-object v1, p0, Lbce;->m:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lbce;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Laii;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

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

    invoke-virtual {p0}, Lbce;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    check-cast v0, Laii;

    invoke-virtual {v0}, Laii;->a()I

    move-result v1

    if-eq v1, p3, :cond_0

    invoke-virtual {v0, p3}, Laii;->b(I)V

    :goto_0
    invoke-virtual {v0}, Laii;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laii;->b(I)V

    goto :goto_0
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lbce;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v2, 0x1248c57

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lbce;->d:Lja;

    invoke-virtual {v0, v1}, Lja;->a(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lbce;->d:Lja;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmb;

    invoke-static {v0}, Lja;->c(Lmb;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66b8

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lbce;->d:Lja;

    iget-object v0, v0, Lja;->a:Lhs;

    const-string v1, "notification_msg"

    invoke-virtual {v0, v1}, Lhs;->c(Ljava/lang/String;)I

    iget-object v0, p0, Lbce;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/16 v3, 0x4d

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0538

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201fa

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BasePinnedListView;->onResume()V

    iget-object v0, p0, Lbce;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lbce;->a()V

    iget-object v0, p0, Lbce;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x1248c57

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final refreshListData()V
    .locals 2

    invoke-virtual {p0}, Lbce;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-direct {p0}, Lbce;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Lbce;->getAdapter()Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lbce;->isReloadData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbce;->setReloadData(Z)V

    :cond_0
    iget-object v0, p0, Lbce;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbce;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lbce;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0b38

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbce;->setEmptyText(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lbce;->hideEmptyView()V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    return-void
.end method
