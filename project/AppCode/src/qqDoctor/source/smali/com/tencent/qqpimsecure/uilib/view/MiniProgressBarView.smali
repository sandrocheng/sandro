.class public Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;
    }
.end annotation


# static fields
.field private static final MSG_PROGRESS_ANIM:I = 0x1


# instance fields
.field private mCurrentProgress:I

.field private mHandler:Landroid/os/Handler;

.field private mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;

.field private mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;

.field private mTargetProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mCurrentProgress:I

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mTargetProgress:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f08022e

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;

    return-void
.end method


# virtual methods
.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mProgressBar:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->setProgress(I)V

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mCurrentProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgressWithAnim(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mTargetProgress:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgressWithAnim(ILcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mTargetProgress:I

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mOnAnimationFinishListener:Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView$onAnimationFinishListener;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBarView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
