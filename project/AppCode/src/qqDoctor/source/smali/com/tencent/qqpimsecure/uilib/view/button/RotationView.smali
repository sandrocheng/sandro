.class public Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;
.super Landroid/widget/ImageView;


# instance fields
.field private final ANIMATION_ONCE_TIME:I

.field private final MAX_ANIMATION_TIME:I

.field private final MAX_ROTATE:I

.field private mAnimating:Z

.field private mCenterX:I

.field private mCenterY:I

.field private mHandler:Landroid/os/Handler;

.field private mRotate:I

.field private mStartTime:J

.field private mStop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xdac

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->MAX_ANIMATION_TIME:I

    const/16 v0, 0x9d8

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->MAX_ROTATE:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->ANIMATION_ONCE_TIME:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mStartTime:J

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mAnimating:Z

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mCenterX:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mCenterY:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mRotate:I

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mStop:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xdac

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->MAX_ANIMATION_TIME:I

    const/16 v0, 0x9d8

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->MAX_ROTATE:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->ANIMATION_ONCE_TIME:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mStartTime:J

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mAnimating:Z

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mCenterX:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mCenterY:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mRotate:I

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mStop:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xdac

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->MAX_ANIMATION_TIME:I

    const/16 v0, 0x9d8

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->MAX_ROTATE:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->ANIMATION_ONCE_TIME:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mStartTime:J

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mAnimating:Z

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mCenterX:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mCenterY:I

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mRotate:I

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mStop:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mStop:Z

    return v0
.end method

.method static synthetic access$202(Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mRotate:I

    return p1
.end method

.method static synthetic access$302(Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mAnimating:Z

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mRotate:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mCenterY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public startRotationAnimation()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mAnimating:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mCenterX:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mCenterY:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mAnimating:Z

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mStop:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public stopRotationAnimation()V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mAnimating:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mStop:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/button/RotationView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
