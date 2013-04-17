.class public Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProgress:I

.field private mProgressView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mProgress:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mProgress:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->initView()V

    return-void
.end method

.method private cutCanvas(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mProgress:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return-void
.end method

.method private initView()V
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mProgressView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mProgressView:Landroid/widget/ImageView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mProgressView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mProgressView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mProgress:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setGreenLevel()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mProgressView:Landroid/widget/ImageView;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mProgress:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRedLevel()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mProgressView:Landroid/widget/ImageView;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setYellowLevel()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/SuspendTrafficeWindowProgressView;->mProgressView:Landroid/widget/ImageView;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
