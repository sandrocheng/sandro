.class public Lcom/tencent/qqpimsecure/uilib/view/TipsView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private mAlphaAnimation:Landroid/view/animation/Animation;

.field private mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mContext:Landroid/content/Context;

.field private mFlipper:Landroid/widget/ViewFlipper;

.field public mHandler:Landroid/os/Handler;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mRemoveTipsThread:Ljava/lang/Thread;

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

.field private mTranslateAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TipsModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mTipsModelList:Ljava/util/List;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/TipsView$2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/TipsView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/TipsView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mRemoveTipsThread:Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/TipsView$3;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/TipsView$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/TipsView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mTipsModelList:Ljava/util/List;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->init()V

    invoke-virtual {p0, p2}, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->addTips(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/TipsView;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/TipsView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mTipsModelList:Ljava/util/List;

    return-object v0
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->setOrientation(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0802ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mFlipper:Landroid/widget/ViewFlipper;

    return-void
.end method


# virtual methods
.method public addTips(Ljava/util/List;)V
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

    invoke-virtual {p0, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->createItem(ILjava/lang/String;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/TipsView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/TipsView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/TipsView;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mTipsModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public close()V
    .locals 11

    const-wide/16 v9, 0xfa

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v8, v3

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mTranslateAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mTranslateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mTranslateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mAlphaAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public createItem(ILjava/lang/String;Z)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mContext:Landroid/content/Context;

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

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-object v3

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public show()V
    .locals 11

    const-wide/16 v9, 0x3e8

    const/4 v1, 0x2

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x4348

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mTranslateAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mTranslateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mTranslateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mAlphaAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mAlphaAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/TipsView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
