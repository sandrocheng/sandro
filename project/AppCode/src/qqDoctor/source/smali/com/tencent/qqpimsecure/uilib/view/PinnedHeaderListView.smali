.class public Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
.super Landroid/widget/ListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$IPinnedHeaderAdapter;,
        Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final DONE:I = 0x3

.field private static final LOADING:I = 0x4

.field private static final MAX_ALPHA:I = 0xff

.field private static final PULL_To_REFRESH:I = 0x1

.field private static final RATIO:I = 0x3

.field private static final REFRESHING:I = 0x2

.field private static final RELEASE_To_REFRESH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PinnedHeaderListView"


# instance fields
.field private animation:Landroid/view/animation/RotateAnimation;

.field private arrowImageView:Landroid/widget/ImageView;

.field private firstItemIndex:I

.field private headContentHeight:I

.field private headContentWidth:I

.field private headView:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private isBack:Z

.field private isRecored:Z

.field public isRefreshable:Z

.field private lastUpdatedTextView:Landroid/widget/TextView;

.field private mAdapter:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$IPinnedHeaderAdapter;

.field private mContext:Landroid/content/Context;

.field private mHeaderViewHeight:I

.field private mHeaderViewVisible:Z

.field private mHeaderViewWidth:I

.field private mPinnedHeaderView:Landroid/view/View;

.field private progressBar:Landroid/widget/ProgressBar;

.field private refreshListener:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;

.field private reverseAnimation:Landroid/view/animation/RotateAnimation;

.field private startY:I

.field private state:I

.field private tipsTextview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private changeHeaderViewByState()V
    .locals 5

    const v4, 0x7f0b001b

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isBack:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isBack:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0029

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->arrowImageView:Landroid/widget/ImageView;

    const v1, 0x7f02013e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->lastUpdatedTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initRefreshView(Landroid/content/Context;)V
    .locals 13

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc

    const/4 v12, 0x0

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->inflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300ef

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f080315

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v5, 0x46

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v5, 0x1e

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f080316

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->progressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f080313

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->tipsTextview:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    const v5, 0x7f080314

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->lastUpdatedTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->measureView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headContentHeight:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headContentWidth:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headContentHeight:I

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v12, v5, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "width:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headContentWidth:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " height:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headContentHeight:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->animation:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->animation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->animation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    iput-boolean v12, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isRefreshable:Z

    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->refreshListener:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->refreshListener:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;->onRefresh()V

    :cond_0
    return-void
.end method


# virtual methods
.method public configureHeaderView(I)V
    .locals 6

    const/16 v0, 0xff

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mAdapter:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$IPinnedHeaderAdapter;

    invoke-interface {v1, p1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$IPinnedHeaderAdapter;->getPinnedHeaderState(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mAdapter:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$IPinnedHeaderAdapter;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-interface {v1, v3, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$IPinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mHeaderViewWidth:I

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iput-boolean v5, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v1, v3, :cond_4

    sub-int/2addr v1, v3

    add-int v0, v3, v1

    mul-int/lit16 v0, v0, 0xff

    div-int/2addr v0, v3

    :goto_1
    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mAdapter:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$IPinnedHeaderAdapter;

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-interface {v3, v4, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$IPinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mHeaderViewWidth:I

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mHeaderViewHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_3
    iput-boolean v5, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mHeaderViewVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mHeaderViewWidth:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->configureHeaderView(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mHeaderViewWidth:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mHeaderViewHeight:I

    :cond_0
    return-void
.end method

.method public onRefreshComplete()V
    .locals 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->lastUpdatedTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, La;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->changeHeaderViewByState()V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->firstItemIndex:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x2

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isRefreshable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->firstItemIndex:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isRecored:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isRecored:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->startY:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    if-ne v0, v3, :cond_1

    iput v5, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->changeHeaderViewByState()V

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    if-nez v0, :cond_2

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->changeHeaderViewByState()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->refreshListener:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->refreshListener:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;->onRefresh()V

    :cond_2
    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isRecored:Z

    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isBack:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isRecored:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->firstItemIndex:I

    if-nez v1, :cond_3

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isRecored:Z

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->startY:I

    :cond_3
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isRecored:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    if-eq v1, v6, :cond_0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    if-nez v1, :cond_4

    invoke-virtual {p0, v4}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setSelection(I)V

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->startY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headContentHeight:I

    if-ge v1, v2, :cond_8

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_8

    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->changeHeaderViewByState()V

    :cond_4
    :goto_1
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    if-ne v1, v3, :cond_5

    invoke-virtual {p0, v4}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setSelection(I)V

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->startY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headContentHeight:I

    if-lt v1, v2, :cond_9

    iput v4, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isBack:Z

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->changeHeaderViewByState()V

    :cond_5
    :goto_2
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    if-ne v1, v5, :cond_6

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_6

    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->changeHeaderViewByState()V

    :cond_6
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->startY:I

    sub-int v3, v0, v3

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_7
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->startY:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headContentHeight:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_8
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_4

    iput v5, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->changeHeaderViewByState()V

    goto :goto_1

    :cond_9
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_5

    iput v5, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->state:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->changeHeaderViewByState()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    instance-of v0, p1, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$IPinnedHeaderAdapter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$IPinnedHeaderAdapter;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mAdapter:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$IPinnedHeaderAdapter;

    :cond_0
    return-void
.end method

.method public setOnRefreshListener(Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->initRefreshView(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->headView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setHeaderDividersEnabled(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->isRefreshable:Z

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->refreshListener:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView$OnRefreshListener;

    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setFadingEdgeLength(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->requestLayout()V

    return-void
.end method
