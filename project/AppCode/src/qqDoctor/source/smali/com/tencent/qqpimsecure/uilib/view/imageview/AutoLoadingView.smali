.class public abstract Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;
.super Landroid/widget/ImageView;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final ANIMATION_ONCE_TIME:I

.field private final MAX_ROTATE:I

.field private mAnimating:Z

.field private mAnimationTime:I

.field private mCenterX:I

.field private mCenterY:I

.field private mHandler:Landroid/os/Handler;

.field private mReallyRotate:I

.field private mRotate:I

.field private mStart:Z

.field private mStartTime:J

.field private mStop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x168

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->MAX_ROTATE:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->ANIMATION_ONCE_TIME:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mAnimationTime:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStartTime:J

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mAnimating:Z

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mCenterX:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mCenterY:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mRotate:I

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStart:Z

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStop:Z

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mReallyRotate:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x168

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->MAX_ROTATE:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->ANIMATION_ONCE_TIME:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mAnimationTime:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStartTime:J

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mAnimating:Z

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mCenterX:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mCenterY:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mRotate:I

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStart:Z

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStop:Z

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mReallyRotate:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x168

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->MAX_ROTATE:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->ANIMATION_ONCE_TIME:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mAnimationTime:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStartTime:J

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mAnimating:Z

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mCenterX:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mCenterY:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mRotate:I

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStart:Z

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStop:Z

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mReallyRotate:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->getImageResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->getAnimationTime()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mAnimationTime:I

    return-void
.end method


# virtual methods
.method public abstract getAnimationTime()I
.end method

.method public abstract getImageResource()I
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStart:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStartTime:J

    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStart:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    mul-float/2addr v0, v5

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mAnimationTime:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    cmpl-float v1, v0, v5

    if-lez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStartTime:J

    iput v4, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mRotate:I

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->postInvalidate()V

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStop:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/high16 v1, 0x43b4

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mRotate:I

    goto :goto_0
.end method

.method public isClockwise()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->isClockwise()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mRotate:I

    :goto_0
    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mReallyRotate:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mReallyRotate:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mCenterY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mRotate:I

    neg-int v0, v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mCenterX:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mCenterY:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->stopRotationAnimation()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startRotationAnimation()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mAnimating:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mAnimating:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStart:Z

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStop:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public stopRotationAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mAnimating:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mAnimating:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/imageview/AutoLoadingView;->mStop:Z

    goto :goto_0
.end method
