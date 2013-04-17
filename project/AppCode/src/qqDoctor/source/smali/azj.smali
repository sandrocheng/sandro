.class public final Lazj;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private A:Lho;

.field private B:Z

.field private C:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

.field private D:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

.field private E:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

.field private F:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

.field private G:Landroid/os/Handler;

.field private a:I

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/ViewStub;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;

.field private q:Landroid/widget/HorizontalScrollView;

.field private r:Landroid/widget/LinearLayout;

.field private s:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

.field private t:Landroid/widget/ListView;

.field private u:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

.field private v:I

.field private w:Z

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/tencent/tmsecure/module/network/NetworkManager;

.field private z:Liu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7f03008a

    invoke-direct {p0, p1, v2}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    iput v1, p0, Lazj;->v:I

    iput-boolean v0, p0, Lazj;->w:Z

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v2

    invoke-virtual {v2}, Lqx;->h()I

    move-result v2

    sget v3, Lqx$a;->q:I

    if-ne v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lazj;->B:Z

    new-instance v0, Lazk;

    invoke-direct {v0, p0}, Lazk;-><init>(Lazj;)V

    iput-object v0, p0, Lazj;->E:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    new-instance v0, Lazm;

    invoke-direct {v0, p0}, Lazm;-><init>(Lazj;)V

    iput-object v0, p0, Lazj;->F:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    new-instance v0, Lazn;

    invoke-direct {v0, p0}, Lazn;-><init>(Lazj;)V

    iput-object v0, p0, Lazj;->G:Landroid/os/Handler;

    iput-object p1, p0, Lazj;->mContext:Landroid/content/Context;

    new-instance v0, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lazj;->z:Liu;

    const-class v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkManager;

    iput-object v0, p0, Lazj;->y:Lcom/tencent/tmsecure/module/network/NetworkManager;

    iget-object v0, p0, Lazj;->y:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->findMonitor(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lazj;->C:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v0, p0, Lazj;->y:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/network/NetworkManager;->findMonitor(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lazj;->D:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lazj;->A:Lho;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lazj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lazj;->G:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lazj;F)V
    .locals 8

    const v7, 0x7f090090

    const v6, 0x7f090033

    const/16 v4, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lazj;->z:Liu;

    invoke-virtual {v0}, Liu;->getTotalForMonth()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lazj;->l:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lazj;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lazj;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lazj;->m:Landroid/widget/TextView;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lazj;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lazj;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lazj;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v3, p1

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lazj;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lazj;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lazj;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lazj;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lazj;Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    .locals 3

    iget-object v0, p0, Lazj;->k:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-static {v1, v2}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a()Z
    .locals 8

    const v7, 0x7f080011

    const/4 v1, 0x1

    const/16 v6, 0x8

    const/4 v0, 0x0

    new-instance v2, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v2, v2, Liy;->a:Landroid/content/SharedPreferences;

    const-string v3, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v4

    invoke-virtual {v4}, Lnp;->f()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lazj;->z:Liu;

    invoke-virtual {v2}, Liu;->getTotalForMonth()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lazj;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lazj;->c:Landroid/view/ViewStub;

    invoke-virtual {v2, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p0, v7}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lazj;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lazj;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v2, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lazj;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v2, Lazq;

    invoke-direct {v2, p0}, Lazq;-><init>(Lazj;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lazj;->z:Liu;

    invoke-virtual {v2}, Liu;->j()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lazj;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lazj;->c:Landroid/view/ViewStub;

    invoke-virtual {v2, v0}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p0, v7}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lazj;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lazj;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v2, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0717

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lazj;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v2, Lazr;

    invoke-direct {v2, p0}, Lazr;-><init>(Lazj;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lazj;->c:Landroid/view/ViewStub;

    invoke-virtual {v1, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v1, p0, Lazj;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lazj;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lazj;->c:Landroid/view/ViewStub;

    invoke-virtual {v1, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lazj;->z:Liu;

    invoke-virtual {v0}, Liu;->t()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lazj;->x:Ljava/util/List;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lazj;->x:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lazj;->p:Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;

    iget-object v0, p0, Lazj;->p:Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->getGPRSFlowColumnWidth()I

    move-result v0

    iget-object v1, p0, Lazj;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lazj;->a:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lazj;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lazj;->p:Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->getGPRSFlowHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lazj;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lazj;->r:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lazj;->p:Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lazj;Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    .locals 13

    const/high16 v12, 0x42c8

    const-wide/16 v10, 0x12c

    const v9, 0x7f090033

    const v8, 0x7f020192

    const/4 v1, 0x0

    iget-object v0, p0, Lazj;->z:Liu;

    invoke-virtual {v0}, Liu;->getTotalForMonth()J

    move-result-wide v2

    iget-object v0, p0, Lazj;->g:Landroid/widget/TextView;

    iget-wide v4, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    invoke-static {v4, v5}, La;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lazj;->z:Liu;

    invoke-virtual {v0}, Liu;->getTotalForMonth()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    iget-object v0, p0, Lazj;->z:Liu;

    invoke-virtual {v0}, Liu;->getUsedForMonth()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    long-to-double v6, v2

    div-double/2addr v4, v6

    double-to-float v0, v4

    :goto_0
    const/high16 v4, 0x42b4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090079

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v5, p0, Lazj;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lazj;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    const v2, 0x4479c000

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5

    const/high16 v2, 0x42b4

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    iget-object v1, p0, Lazj;->s:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    sub-float v0, v12, v0

    invoke-virtual {v1, v0, v10, v11}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->reflashInAnimation(FJ)V

    iget-object v0, p0, Lazj;->n:Landroid/widget/ImageView;

    const v1, 0x7f020195

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    const v1, 0x7f0b0311

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-wide v0, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mRetialForMonth:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    iget-object v0, p0, Lazj;->h:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mRetialForMonth:J

    neg-long v1, v1

    invoke-static {v1, v2}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lazj;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    new-instance v0, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Liy;->a:Landroid/content/SharedPreferences;

    const-string v1, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v2

    invoke-virtual {v2}, Lnp;->f()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lazj;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    const v1, 0x7f0b030f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lazj;->g:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForMonth:J

    invoke-static {v1, v2}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lazj;->j:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-static {v1, v2}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09007a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v5, p0, Lazj;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lazj;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_3
    cmpg-float v2, v0, v12

    if-gez v2, :cond_4

    iget-object v1, p0, Lazj;->s:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    sub-float v0, v12, v0

    invoke-virtual {v1, v0, v10, v11}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->reflashInAnimation(FJ)V

    iget-object v0, p0, Lazj;->n:Landroid/widget/ImageView;

    const v1, 0x7f020190

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    const v1, 0x7f0b0312

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lazj;->s:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    invoke-virtual {v0, v1, v10, v11}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->reflashInAnimation(FJ)V

    iget-object v0, p0, Lazj;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    const v1, 0x7f0b0313

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lazj;->s:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    invoke-virtual {v0, v1, v10, v11}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->reflashInAnimation(FJ)V

    iget-object v0, p0, Lazj;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    const v1, 0x7f0b0313

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lazj;->h:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mRetialForMonth:J

    invoke-static {v1, v2}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lazj;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    const v2, 0x7f0b061f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lazj;->s:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->reflashPercentImage(F)V

    iget-object v0, p0, Lazj;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    const v1, 0x7f0b0310

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lazj;->i:Landroid/widget/TextView;

    const v1, 0x7f0b061f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lazj;->h:Landroid/widget/TextView;

    const v1, 0x7f0b0173

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3
.end method

.method static synthetic b(Lazj;)Z
    .locals 1

    iget-boolean v0, p0, Lazj;->B:Z

    return v0
.end method

.method static synthetic c(Lazj;)V
    .locals 0

    invoke-direct {p0}, Lazj;->b()V

    return-void
.end method

.method static synthetic c(Lazj;Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lazj;->k:Landroid/widget/TextView;

    iget-wide v1, p1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-static {v1, v2}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lazj;->k:Landroid/widget/TextView;

    new-instance v1, Liz;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Liz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Liz;->getTodayNetworkInfoEntity()Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    move-result-object v1

    iget-wide v1, v1, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mUsedForDay:J

    invoke-static {v1, v2}, La;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic d(Lazj;)Z
    .locals 1

    iget-boolean v0, p0, Lazj;->w:Z

    return v0
.end method

.method static synthetic e(Lazj;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lazj;->q:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic f(Lazj;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lazj;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    const/16 v0, 0x23

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lazj;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v4, v0}, La;->a(Ljava/util/List;Ljava/util/Date;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lazj;->p:Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/network/GPRSFlowView;->getGPRSFlowColumnWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lazj;->q:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lazj;->v:I

    iget v0, p0, Lazj;->v:I

    if-gez v0, :cond_1

    iput v2, p0, Lazj;->v:I

    :cond_1
    iget-object v0, p0, Lazj;->q:Landroid/widget/HorizontalScrollView;

    iget v1, p0, Lazj;->v:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method

.method static synthetic g(Lazj;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lazj;->w:Z

    return v0
.end method

.method static synthetic h(Lazj;)V
    .locals 8

    const/16 v7, 0x70

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v7}, Ljava/util/Date;->setYear(I)V

    invoke-virtual {v1, v5}, Ljava/util/Date;->setMonth(I)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/util/Date;->setDate(I)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v7}, Ljava/util/Date;->setYear(I)V

    invoke-virtual {v2, v5}, Ljava/util/Date;->setMonth(I)V

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Ljava/util/Date;->setDate(I)V

    iget-object v0, p0, Lazj;->A:Lho;

    invoke-virtual {v0}, Lho;->V()I

    move-result v0

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_3

    :cond_0
    iget-object v0, p0, Lazj;->x:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lazj;->z:Liu;

    invoke-virtual {v0}, Liu;->t()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lazj;->x:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lazj;->x:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lazj;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lazj;->x:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    iget-object v0, p0, Lazj;->x:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {p0}, Lazj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b04d1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    const v2, 0x7f0b021b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0339

    new-instance v2, Lazo;

    invoke-direct {v2, p0, v0}, Lazo;-><init>(Lazj;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0480

    new-instance v2, Lazp;

    invoke-direct {v2, v0}, Lazp;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_3
    return-void
.end method

.method static synthetic i(Lazj;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lazj;->x:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lazj;)Liu;
    .locals 1

    iget-object v0, p0, Lazj;->z:Liu;

    return-object v0
.end method

.method static synthetic k(Lazj;)Lcom/tencent/tmsecure/module/network/NetworkManager;
    .locals 1

    iget-object v0, p0, Lazj;->y:Lcom/tencent/tmsecure/module/network/NetworkManager;

    return-object v0
.end method

.method static synthetic l(Lazj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lazj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lazj;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lazj;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;
    .locals 1

    iget-object v0, p0, Lazj;->C:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    return-object v0
.end method

.method static synthetic o(Lazj;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;
    .locals 1

    iget-object v0, p0, Lazj;->D:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    return-object v0
.end method


# virtual methods
.method public final onBackClick()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "extra_back_to_main"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lazj;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lazj;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66c8

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/network/NetworkAccurateGuideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onCreate()V
    .locals 6

    const v5, 0x7f0801c6

    const v4, 0x7f0801bd

    const v3, 0x7f0801ba

    const v2, 0x7f0801b9

    const/16 v1, 0x8

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    iget-boolean v0, p0, Lazj;->B:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0801be

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0801c8

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    const v0, 0x7f0801c5

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lazj;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lazj;->o:Landroid/widget/TextView;

    const v1, 0x7f0b061b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v5}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lazj;->j:Landroid/widget/TextView;

    const v0, 0x7f0801c7

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lazj;->k:Landroid/widget/TextView;

    :goto_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lazj;->u:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    iget-object v0, p0, Lazj;->t:Landroid/widget/ListView;

    iget-object v1, p0, Lazj;->u:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lazj;->t:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lazj;->t:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/common/ViewUtil;->resetListViewHeight(Landroid/widget/ListView;)V

    invoke-static {}, Lfs;->a()V

    invoke-virtual {p0}, Lazj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_where"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "messageboxcenter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lazj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazj;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->performClick()Z

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0801c4

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lazj;->c:Landroid/view/ViewStub;

    const v0, 0x7f0801c2

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lazj;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lazj;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lazj;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    const v0, 0x7f0801bf

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lazj;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lazj;->l:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lazj;->m:Landroid/widget/TextView;

    const v0, 0x7f0801bc

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lazj;->n:Landroid/widget/ImageView;

    const v0, 0x7f0801c1

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lazj;->h:Landroid/widget/TextView;

    const v0, 0x7f0801c0

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lazj;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lazj;->j:Landroid/widget/TextView;

    const v0, 0x7f0801c7

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lazj;->k:Landroid/widget/TextView;

    const v0, 0x7f0801c9

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lazj;->q:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0801ca

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lazj;->r:Landroid/widget/LinearLayout;

    const v0, 0x7f0801cb

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lazj;->t:Landroid/widget/ListView;

    const v0, 0x7f0801b8

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    iput-object v0, p0, Lazj;->s:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    iget-object v0, p0, Lazj;->s:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    new-instance v1, Lazs;

    invoke-direct {v1, p0}, Lazs;-><init>(Lazj;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->addChangeListener(Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView$ProcessChangeListener;)V

    goto/16 :goto_0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-static {p1}, La;->e(Landroid/view/Menu;)V

    invoke-static {p1}, Lcom/tencent/qqpimsecure/ui/activity/HelpActivity;->a(Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lazj;->u:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65ec

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/network/TrafficFilterAndRankActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public final onOptionClick(I)V
    .locals 3

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65ed

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/network/NetWorkManageSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lazj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0045

    new-instance v2, Lazt;

    invoke-direct {v2, p0, v0}, Lazt;-><init>(Lazj;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lazl;

    invoke-direct {v2, v0}, Lazl;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPause()V

    iget-object v0, p0, Lazj;->G:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lazj;->G:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lazj;->G:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lazj;->C:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazj;->C:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v1, p0, Lazj;->E:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/network/INetworkMonitor;->removeCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)Z

    :cond_0
    iget-object v0, p0, Lazj;->D:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lazj;->D:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v1, p0, Lazj;->F:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/module/network/INetworkMonitor;->removeCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)Z

    :cond_1
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-static {p1}, La;->e(Landroid/view/Menu;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final onResume()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iget-object v0, p0, Lazj;->s:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->getPrePercent()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget-object v0, p0, Lazj;->s:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    const/high16 v3, 0x42c8

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->setPrePercent(F)V

    :cond_0
    iget-object v0, p0, Lazj;->s:Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/network/FlowPercentView;->setReStart(Z)V

    iget-object v0, p0, Lazj;->C:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lazj;->y:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v3, "mobile"

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/network/NetworkManager;->findMonitor(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lazj;->C:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    :cond_1
    iget-object v0, p0, Lazj;->D:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    if-nez v0, :cond_2

    iget-object v0, p0, Lazj;->y:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/network/NetworkManager;->findMonitor(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lazj;->D:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    :cond_2
    iget-object v0, p0, Lazj;->C:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    if-nez v0, :cond_3

    iget-object v0, p0, Lazj;->y:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v3, "mobile"

    new-instance v4, Liu;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Liu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmsecure/module/network/NetworkManager;->addDefaultMobileMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    iget-object v0, p0, Lazj;->y:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v3, "mobile"

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/network/NetworkManager;->findMonitor(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lazj;->C:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    :cond_3
    iget-object v0, p0, Lazj;->D:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    if-nez v0, :cond_4

    iget-object v0, p0, Lazj;->y:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v3, "wifi"

    new-instance v4, Liz;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Liz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4}, Lcom/tencent/tmsecure/module/network/NetworkManager;->addDefaultWifiMonitor(Ljava/lang/String;Lcom/tencent/tmsecure/module/network/INetworkInfoDao;)Z

    iget-object v0, p0, Lazj;->y:Lcom/tencent/tmsecure/module/network/NetworkManager;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/network/NetworkManager;->findMonitor(Ljava/lang/String;)Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lazj;->D:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    :cond_4
    iget-object v0, p0, Lazj;->C:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lazj;->C:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v3, p0, Lazj;->E:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-interface {v0, v3}, Lcom/tencent/tmsecure/module/network/INetworkMonitor;->addCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)I

    :cond_5
    iget-object v0, p0, Lazj;->D:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lazj;->D:Lcom/tencent/tmsecure/module/network/INetworkMonitor;

    iget-object v3, p0, Lazj;->F:Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;

    invoke-interface {v0, v3}, Lcom/tencent/tmsecure/module/network/INetworkMonitor;->addCallback(Lcom/tencent/tmsecure/module/network/INetworkChangeCallBack;)I

    :cond_6
    iget-object v0, p0, Lazj;->y:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->notifyConfigChange()V

    new-instance v0, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Liy;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Liy;->a:Landroid/content/SharedPreferences;

    const-string v3, "netword_service_status"

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v4

    invoke-virtual {v4}, Lnp;->f()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lazj;->n:Landroid/widget/ImageView;

    const v3, 0x7f020192

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    const v3, 0x7f0b030f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lazj;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    invoke-direct {p0}, Lazj;->a()Z

    move-result v0

    iget-object v3, p0, Lazj;->z:Liu;

    invoke-virtual {v3}, Liu;->g()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v0, :cond_a

    iget-object v0, p0, Lazj;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->performClick()Z

    :goto_0
    iget-object v0, p0, Lazj;->y:Lcom/tencent/tmsecure/module/network/NetworkManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/network/NetworkManager;->isSupportTrafficState()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lazj;->u:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->notifyDataSetChanged()V

    :cond_8
    :try_start_0
    invoke-virtual {p0}, Lazj;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v3

    if-nez v3, :cond_c

    move v0, v1

    :goto_1
    if-nez v0, :cond_9

    invoke-virtual {p0}, Lazj;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v0, p0, Lazj;->z:Liu;

    invoke-virtual {v0}, Liu;->s()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    const/4 v3, 0x1

    aget-boolean v3, v0, v3

    if-eqz v1, :cond_9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lazj;->z:Liu;

    invoke-virtual {v1}, Liu;->getClosingDayForMonth()I

    move-result v1

    add-int/lit8 v4, v0, 0x1e

    sub-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x1e

    if-ge v4, v11, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "less than 3 days , now = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " closeDay = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_2
    return-void

    :cond_a
    iget-object v0, p0, Lazj;->A:Lho;

    invoke-virtual {v0}, Lho;->T()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lazj;->A:Lho;

    invoke-virtual {v0}, Lho;->U()V

    iget-object v0, p0, Lazj;->G:Landroid/os/Handler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v11, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    invoke-direct {p0}, Lazj;->b()V

    iget-object v0, p0, Lazj;->G:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lazj;->G:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const v0, 0x7f0801b6

    invoke-virtual {p0, v0}, Lazj;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto/16 :goto_0

    :cond_c
    :try_start_1
    iget-object v0, p0, Lazj;->z:Liu;

    invoke-virtual {v0}, Liu;->r()[Z

    move-result-object v0

    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    const/4 v5, 0x1

    aget-boolean v5, v0, v5

    if-nez v4, :cond_d

    move v0, v1

    goto/16 :goto_1

    :cond_d
    if-nez v5, :cond_f

    iget-object v0, p0, Lazj;->z:Liu;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Liu;->a(I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "times in month = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-lt v0, v11, :cond_e

    move v0, v1

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lazj;->z:Liu;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Liu;->b(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x240c8400

    cmp-long v0, v6, v8

    if-gez v0, :cond_f

    move v0, v1

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e8

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0801e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f0b0b7e

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTipsView(Landroid/view/View;)V

    iget-object v0, p0, Lazj;->z:Liu;

    const/4 v1, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Liu;->a(IJ)V

    iget-object v0, p0, Lazj;->z:Liu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Liu;->a(ZZ)V

    iget-object v0, p0, Lazj;->G:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lazj;->G:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v3, 0x1f40

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v2

    goto/16 :goto_1

    :cond_10
    if-eqz v3, :cond_11

    const v0, 0x7f0b0b7d

    move v1, v0

    :goto_3
    iget-object v0, p0, Lazj;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f0300e8

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0801e3

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTipsView(Landroid/view/View;)V

    iget-object v0, p0, Lazj;->z:Liu;

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Liu;->a(IJ)V

    iget-object v0, p0, Lazj;->z:Liu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Liu;->b(ZZ)V

    iget-object v0, p0, Lazj;->G:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lazj;->G:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_11
    :try_start_2
    iget-object v0, p0, Lazj;->z:Liu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Liu;->a(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "times in month = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ge v0, v10, :cond_9

    if-lez v0, :cond_12

    const v0, 0x7f0b0b7d

    move v1, v0

    goto :goto_3

    :cond_12
    const v0, 0x7f0b0b7c

    move v1, v0

    goto :goto_3
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStart()V

    const v0, 0x7f0b0001

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStop()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const v0, 0x7f0b035f

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    return-void
.end method
