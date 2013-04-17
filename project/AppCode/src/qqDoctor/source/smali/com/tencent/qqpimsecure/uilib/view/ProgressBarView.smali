.class public Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;
    }
.end annotation


# static fields
.field private static final MSG_PROGRESS_ANIM:I = 0x1

.field private static final MSG_SET_PROGRESS:I = 0x2


# instance fields
.field private isGreedPar:Z

.field private mAnimToProgress:I

.field private mCurrentProgress:I

.field private mHandler:Landroid/os/Handler;

.field private mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressText:Landroid/widget/TextView;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTargetProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressBar:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mSummaryText:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->isGreedPar:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->initProgressBar(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressBar:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mSummaryText:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->isGreedPar:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->initProgressBar(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mAnimToProgress:I

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mCurrentProgress:I

    return v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mTargetProgress:I

    return v0
.end method

.method private initProgressBar(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f08022b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f08022c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressText:Landroid/widget/TextView;

    const v0, 0x7f08022d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mSummaryText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mCurrentProgress:I

    return v0
.end method

.method public setBlueProgressDrawable()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->isGreedPar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02029a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->isGreedPar:Z

    :cond_0
    return-void
.end method

.method public setGreedProgressDrawable()V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->isGreedPar:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02029e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->isGreedPar:Z

    :cond_0
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressBar:Landroid/widget/ProgressBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mCurrentProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setProgressDrawable(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->isGreedPar:Z

    return-void
.end method

.method public setProgressTextVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public declared-synchronized setProgressWithAnim(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mTargetProgress:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mCurrentProgress:I

    if-le v0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mCurrentProgress:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgressWithAnim(ILcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSummaryText(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mSummaryText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mSummaryText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public startAnimation(ILcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;)V
    .locals 2

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mAnimToProgress:I

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView$onAnimationFinishListener;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method
