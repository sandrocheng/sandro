.class public Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;
.super Ljava/lang/Object;


# instance fields
.field mContext:Landroid/content/Context;

.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mTipsAnimation:Landroid/view/animation/Animation;

.field private mTipsHandler:Landroid/os/Handler;

.field private mTipsLayout:Landroid/view/View;

.field private mTipsModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TipsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "LQQPIM/CloudInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsModelList:Ljava/util/List;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e6

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    const v1, 0x7f0802ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, p2}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->showCloudInfo(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsModelList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->closeTipsView()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)Landroid/widget/ViewFlipper;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mFlipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method private addTips(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TipsModel;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->getIcon()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->isShowCloseIcon()Z

    move-result v4

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->createTipsItem(Lcom/tencent/qqpimsecure/uilib/model/TipsModel;ILjava/lang/String;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$5;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$5;-><init>(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private closeTipsView()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mContext:Landroid/content/Context;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$1;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private createRemoveTipsThread()V
    .locals 1

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$3;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private createTipsItem(Lcom/tencent/qqpimsecure/uilib/model/TipsModel;ILjava/lang/String;Z)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f080095

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08001c

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0800af

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$4;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$4;-><init>(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showTipsView()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$3;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private showTipsView(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TipsModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->addTips(Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->addTips(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$3;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public setTips(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TipsModel;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mFlipper:Landroid/widget/ViewFlipper;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mContext:Landroid/content/Context;

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mContext:Landroid/content/Context;

    const v2, 0x7f040012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->addTips(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->addTips(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$3;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public showCloudInfo(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/CloudInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/CloudInfo;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lss;->a(Landroid/content/Context;LQQPIM/CloudInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;-><init>()V

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getTips()LQQPIM/TipsInfo;

    move-result-object v4

    invoke-virtual {v4}, LQQPIM/TipsInfo;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->setCloseTime(I)V

    const v4, 0x7f020342

    invoke-virtual {v3, v4}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->setIcon(I)V

    invoke-virtual {v3, v6}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->setShowCloseIcon(Z)V

    invoke-virtual {v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->setSingle(Z)V

    invoke-virtual {v0}, LQQPIM/CloudInfo;->getBase()LQQPIM/BaseInfo;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/BaseInfo;->getTipsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/TipsModel;->setUrl(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mFlipper:Landroid/widget/ViewFlipper;

    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mContext:Landroid/content/Context;

    const v3, 0x7f040011

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mContext:Landroid/content/Context;

    const v3, 0x7f040012

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    :cond_2
    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->showTipsView(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public view()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->mTipsLayout:Landroid/view/View;

    return-object v0
.end method
