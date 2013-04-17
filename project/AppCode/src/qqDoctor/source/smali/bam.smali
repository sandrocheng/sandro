.class public final Lbam;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Lho;

.field private f:Liu;

.field private g:Lwr;

.field private h:Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const v0, 0x7f030073

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    iput-boolean v2, p0, Lbam;->a:Z

    iput-boolean v2, p0, Lbam;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbam;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbam;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbam;->n:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbam;->o:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbam;->q:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbam;->r:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbam;->t:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbam;->u:Ljava/util/List;

    iput-object p1, p0, Lbam;->mContext:Landroid/content/Context;

    iput v3, p0, Lbam;->d:I

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbam;->e:Lho;

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbam;->f:Liu;

    iget-object v0, p0, Lbam;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v0

    iput-object v0, p0, Lbam;->g:Lwr;

    const-class v0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    iput-object v0, p0, Lbam;->h:Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    invoke-virtual {p0}, Lbam;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "report_check"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lbam;->c:Z

    const-string v1, "guide_type"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbam;->d:I

    :cond_0
    return-void
.end method

.method static synthetic a(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;
    .locals 1

    iget-object v0, p0, Lbam;->p:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-boolean v0, p0, Lbam;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Liy;->a()Lcom/tencent/lbsapi/model/QLBSPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbam;->k:Ljava/util/List;

    iget-object v2, p0, Lbam;->l:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/model/QLBSPosition;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lfs;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbam;->a:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lbam;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lbam;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lbam;->d:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lbam;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    invoke-virtual {p0, v0}, Lbam;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lbam;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    goto :goto_0
.end method

.method static synthetic b(Lbam;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbam;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lbam;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Liy;->a()Lcom/tencent/lbsapi/model/QLBSPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbam;->n:Ljava/util/List;

    iget-object v2, p0, Lbam;->o:Ljava/util/List;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/model/QLBSPosition;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lfs;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbam;->b:Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;
    .locals 1

    iget-object v0, p0, Lbam;->s:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    return-object v0
.end method

.method static synthetic d(Lbam;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbam;->t:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lbam;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbam;->u:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lbam;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbam;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lbam;)Lwr;
    .locals 1

    iget-object v0, p0, Lbam;->g:Lwr;

    return-object v0
.end method

.method static synthetic h(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;
    .locals 1

    iget-object v0, p0, Lbam;->m:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    return-object v0
.end method

.method static synthetic i(Lbam;)Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;
    .locals 1

    iget-object v0, p0, Lbam;->j:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    return-object v0
.end method

.method static synthetic j(Lbam;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbam;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lbam;)V
    .locals 0

    invoke-direct {p0}, Lbam;->b()V

    return-void
.end method

.method static synthetic l(Lbam;)V
    .locals 0

    invoke-direct {p0}, Lbam;->a()V

    return-void
.end method

.method static synthetic m(Lbam;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbam;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lbam;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbam;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lbam;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbam;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic p(Lbam;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbam;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lbam;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbam;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final createOperatingBarDataList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    const v5, 0x7f0b0726

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lbam;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-direct {v1, v2, v5, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b03be

    invoke-direct {v1, v3, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lbam;->d:I

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-direct {v1, v2, v5, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b0727

    invoke-direct {v1, v3, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x3

    const v3, 0x7f0b0045

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x4

    const v3, 0x7f0b0033

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lbam;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbam;->i:Landroid/widget/TextView;

    iget-boolean v0, p0, Lbam;->c:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lbam;->i:Landroid/widget/TextView;

    const v3, 0x7f0b071a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lbam;->g:Lwr;

    iget-object v0, p0, Lbam;->g:Lwr;

    invoke-virtual {v0}, Lwr;->l()[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lbam;->k:Ljava/util/List;

    iget-object v4, p0, Lbam;->l:Ljava/util/List;

    invoke-static {v0, v3, v4}, Lwr;->a([Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0}, Lbam;->a()V

    const v0, 0x7f08012d

    invoke-virtual {p0, v0}, Lbam;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    iput-object v0, p0, Lbam;->j:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    iget-object v0, p0, Lbam;->e:Lho;

    invoke-virtual {v0}, Lho;->cr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_0
    move v0, v2

    :cond_1
    :goto_1
    iget-object v4, p0, Lbam;->j:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    const v5, 0x7f0b070e

    iget-object v6, p0, Lbam;->l:Ljava/util/List;

    invoke-virtual {v4, v5, v6, v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->init(ILjava/util/List;I)V

    if-ltz v0, :cond_18

    iget-object v4, p0, Lbam;->g:Lwr;

    iget-object v4, p0, Lbam;->g:Lwr;

    invoke-virtual {v4, v3}, Lwr;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbam;->n:Ljava/util/List;

    iget-object v5, p0, Lbam;->o:Ljava/util/List;

    invoke-static {v3, v4, v5}, Lwr;->a([Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0}, Lbam;->b()V

    iget-object v3, p0, Lbam;->e:Lho;

    invoke-virtual {v3}, Lho;->cs()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_2
    move v3, v2

    :cond_3
    :goto_2
    const v0, 0x7f08012e

    invoke-virtual {p0, v0}, Lbam;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    iput-object v0, p0, Lbam;->m:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    iget-object v0, p0, Lbam;->m:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    const v4, 0x7f0b070f

    iget-object v5, p0, Lbam;->o:Ljava/util/List;

    invoke-virtual {v0, v4, v5, v3}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->init(ILjava/util/List;I)V

    if-gez v3, :cond_f

    invoke-direct {p0, v1}, Lbam;->a(Z)V

    :goto_3
    iget-object v0, p0, Lbam;->m:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    new-instance v3, Lbap;

    invoke-direct {v3, p0}, Lbap;-><init>(Lbam;)V

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setOnSelectChangeListener(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;)V

    new-instance v0, Lbaq;

    invoke-direct {v0, p0}, Lbaq;-><init>(Lbam;)V

    iget-object v3, p0, Lbam;->m:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lbar;

    invoke-direct {v0, p0}, Lbar;-><init>(Lbam;)V

    iget-object v3, p0, Lbam;->j:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbam;->j:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    new-instance v3, Lbas;

    invoke-direct {v3, p0}, Lbas;-><init>(Lbam;)V

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setOnSelectChangeListener(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;)V

    iget-object v0, p0, Lbam;->g:Lwr;

    iget-object v0, p0, Lbam;->g:Lwr;

    invoke-virtual {v0}, Lwr;->m()[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lbam;->q:Ljava/util/List;

    iget-object v4, p0, Lbam;->r:Ljava/util/List;

    invoke-static {v0, v3, v4}, Lwr;->a([Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    const v0, 0x7f08012f

    invoke-virtual {p0, v0}, Lbam;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    iput-object v0, p0, Lbam;->p:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    iget-object v0, p0, Lbam;->e:Lho;

    invoke-virtual {v0}, Lho;->ct()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_4
    invoke-static {}, Lft;->d()I

    move-result v3

    if-nez v3, :cond_10

    const-string v0, "CMCC"

    :cond_5
    :goto_4
    move-object v3, v0

    :goto_5
    if-eqz v3, :cond_6

    move v0, v1

    :goto_6
    iget-object v4, p0, Lbam;->q:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lbam;->q:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move v2, v0

    :cond_6
    iget-object v0, p0, Lbam;->p:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    const v4, 0x7f0b0710

    iget-object v5, p0, Lbam;->r:Ljava/util/List;

    invoke-virtual {v0, v4, v5, v2}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->init(ILjava/util/List;I)V

    if-ltz v2, :cond_8

    iget-object v0, p0, Lbam;->g:Lwr;

    iget-object v0, p0, Lbam;->g:Lwr;

    invoke-virtual {v0, v3}, Lwr;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lbam;->t:Ljava/util/List;

    iget-object v4, p0, Lbam;->u:Ljava/util/List;

    invoke-static {v0, v3, v4}, Lwr;->a([Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lbam;->e:Lho;

    invoke-virtual {v0}, Lho;->cu()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_7
    iget-object v0, p0, Lbam;->q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "CMCC"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "20000"

    :goto_7
    iget-object v3, p0, Lbam;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    iget-object v3, p0, Lbam;->t:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v2, v1

    :cond_8
    const v0, 0x7f080130

    invoke-virtual {p0, v0}, Lbam;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    iput-object v0, p0, Lbam;->s:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    iget-object v0, p0, Lbam;->s:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    const v1, 0x7f0b0711

    iget-object v3, p0, Lbam;->u:Ljava/util/List;

    invoke-virtual {v0, v1, v3, v2}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->init(ILjava/util/List;I)V

    new-instance v0, Lban;

    invoke-direct {v0, p0}, Lban;-><init>(Lbam;)V

    iget-object v1, p0, Lbam;->s:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lbam;->p:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    new-instance v2, Lbao;

    invoke-direct {v2, p0, v0}, Lbao;-><init>(Lbam;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->setOnSelectChangeListener(Lcom/tencent/qqpimsecure/uilib/view/SpinnerView$OnSelectChangeListener;)V

    iget-object v0, p0, Lbam;->e:Lho;

    invoke-virtual {v0}, Lho;->cr()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbam;->e:Lho;

    invoke-virtual {v1}, Lho;->cs()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Liy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Liy;->a()Lcom/tencent/lbsapi/model/QLBSPosition;

    move-result-object v2

    if-nez v2, :cond_a

    if-eqz v0, :cond_9

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v1, :cond_9

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-static {}, Liv;->a()Liv;

    move-result-object v0

    invoke-virtual {v0}, Liv;->c()V

    :cond_a
    return-void

    :cond_b
    iget v0, p0, Lbam;->d:I

    if-ne v0, v8, :cond_c

    iget-object v0, p0, Lbam;->i:Landroid/widget/TextView;

    const v3, 0x7f0b0719

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lbam;->i:Landroid/widget/TextView;

    const v3, 0x7f0b0718

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_d
    move v0, v1

    :goto_8
    iget-object v4, p0, Lbam;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_19

    iget-object v4, p0, Lbam;->k:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_e
    move v3, v1

    :goto_9
    iget-object v5, p0, Lbam;->n:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_18

    iget-object v5, p0, Lbam;->n:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_f
    invoke-direct {p0, v7}, Lbam;->a(Z)V

    goto/16 :goto_3

    :cond_10
    if-ne v3, v7, :cond_11

    const-string v0, "UNICOM"

    goto/16 :goto_4

    :cond_11
    if-ne v3, v8, :cond_5

    const-string v0, "TELECOM"

    goto/16 :goto_4

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_13
    iget-object v0, p0, Lbam;->q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UNICOM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "70000"

    goto/16 :goto_7

    :cond_14
    iget-object v0, p0, Lbam;->q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "TELECOM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "60000"

    goto/16 :goto_7

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_16
    move-object v0, v3

    goto/16 :goto_7

    :cond_17
    move-object v3, v0

    goto/16 :goto_5

    :cond_18
    move v3, v0

    goto/16 :goto_2

    :cond_19
    move v0, v1

    goto/16 :goto_1
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    if-ne v0, v2, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p0, Lbam;->c:Z

    if-eqz v1, :cond_1

    const-string v1, "intent_from"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {p0}, Lbam;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    sget v2, Lfs;->a:I

    invoke-static {v1, v2, v0}, Lfs;->a(Landroid/app/Activity;ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Lbam;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v1, "intent_from"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    :cond_3
    iget-object v0, p0, Lbam;->j:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->getSelectedIndex()I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lbam;->m:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->getSelectedIndex()I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lbam;->p:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->getSelectedIndex()I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lbam;->s:Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/SpinnerView;->getSelectedIndex()I

    move-result v0

    if-gez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lbam;->mContext:Landroid/content/Context;

    const v1, 0x7f0b071e

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lbam;->c:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lwh;->a()Lwh;

    move-result-object v0

    invoke-virtual {v0}, Lwh;->b()V

    iget-object v0, p0, Lbam;->h:Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    new-instance v1, Lbat;

    invoke-direct {v1, p0}, Lbat;-><init>(Lbam;)V

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->addTask(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lbam;->mContext:Landroid/content/Context;

    const v1, 0x7f0b028b

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    new-instance v0, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Liy;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "network_had_reported"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_2
    iget-object v0, p0, Lbam;->f:Liu;

    invoke-virtual {v0, v2}, Liu;->c(Z)V

    iget-object v0, p0, Lbam;->f:Liu;

    invoke-virtual {v0, v3}, Liu;->a(Z)V

    iget-object v0, p0, Lbam;->f:Liu;

    invoke-virtual {v0, v2}, Liu;->d(Z)V

    iget-object v0, p0, Lbam;->f:Liu;

    invoke-virtual {v0}, Liu;->k()V

    iget-object v0, p0, Lbam;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lbam;->h:Lcom/tencent/tmsecure/module/tools/RunableTaskManager;

    new-instance v1, Lbau;

    invoke-direct {v1, p0}, Lbau;-><init>(Lbam;)V

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/tmsecure/module/tools/RunableTaskManager;->addTask(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbam;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    iget-boolean v0, p0, Lbam;->c:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b03bd

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    :goto_0
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    return-void

    :cond_0
    const v0, 0x7f0b071f

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    goto :goto_0
.end method
