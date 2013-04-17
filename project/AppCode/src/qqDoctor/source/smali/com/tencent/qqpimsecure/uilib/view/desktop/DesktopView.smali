.class public Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
.super Landroid/widget/GridView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;
    }
.end annotation


# instance fields
.field private mAnimCount:I

.field private mAnimPlaying:Z

.field private mContext:Landroid/content/Context;

.field private mCurSelectedIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mLastRuntime:J

.field private mLastSelectedIndex:I

.field private mLastSelectedView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

.field private mPositionListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;

.field mPushAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTempIndex:J

.field private mTimeCount:J

.field private mTouchMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/16 v1, 0x63

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedIndex:I

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mCurSelectedIndex:I

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mAnimPlaying:Z

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTouchMode:Z

    iput-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTimeCount:J

    const-wide/16 v0, 0x63

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTempIndex:J

    iput-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastRuntime:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mPushAnimListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/16 v1, 0x63

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedIndex:I

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mCurSelectedIndex:I

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mAnimPlaying:Z

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTouchMode:Z

    iput-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTimeCount:J

    const-wide/16 v0, 0x63

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTempIndex:J

    iput-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastRuntime:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mPushAnimListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-wide/16 v2, 0x0

    const/16 v1, 0x63

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedIndex:I

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mCurSelectedIndex:I

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mAnimPlaying:Z

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTouchMode:Z

    iput-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTimeCount:J

    const-wide/16 v0, 0x63

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTempIndex:J

    iput-wide v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastRuntime:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mPushAnimListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mAnimCount:I

    return v0
.end method

.method static synthetic access$010(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)I
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mAnimCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mAnimCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mPositionListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mCurSelectedIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mCurSelectedIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTouchMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mAnimPlaying:Z

    return p1
.end method

.method private move(III)V
    .locals 6

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedIndex:I

    if-ne p3, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mAnimPlaying:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTempIndex:J

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    int-to-long v0, p3

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTempIndex:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastRuntime:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTimeCount:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastRuntime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTimeCount:J

    iget-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTimeCount:J

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastRuntime:J

    goto :goto_0

    :cond_3
    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mCurSelectedIndex:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedIndex:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v2, v0, v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v1, p3, v0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedIndex:I

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mAnimCount:I

    if-le v2, v1, :cond_4

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->startPushAnimation(Landroid/view/View;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v2, 0x1

    :goto_2
    if-gt v0, v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->startPushAnimation(Landroid/view/View;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mAnimPlaying:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->invalidate()V

    goto :goto_0
.end method

.method private startPushAnimation(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {v2, v3, v0, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mPushAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearFocusPosition()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->setFocusPosition(I)V

    return-void
.end method

.method public createSelectedView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;I)Landroid/view/View;
    .locals 7

    const-wide/high16 v5, 0x3ff8

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->setMinimumHeight(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->setDesktopLayout(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastSelectedIndex()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedIndex:I

    return v0
.end method

.method public getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    return-object v0
.end method

.method public getPositionListener()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mPositionListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;

    return-object v0
.end method

.method public isTouchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTouchMode:Z

    return v0
.end method

.method public move(II)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTouchMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->pointToPosition(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->move(III)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendUpTouchEvent(ZII)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    int-to-float v5, p2

    int-to-float v6, p3

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setLastSelectedView(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    return-void
.end method

.method public setPositionListener(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mPositionListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$PositionListener;

    return-void
.end method

.method public setTouchOrder(ZZ)V
    .locals 2

    const/16 v1, 0x63

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTouchMode:Z

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mAnimPlaying:Z

    if-nez v0, :cond_0

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedIndex:I

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mCurSelectedIndex:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->setFocusPosition(I)V

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public startDragMode(I)V
    .locals 1

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mLastSelectedIndex:I

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mCurSelectedIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->mTouchMode:Z

    return-void
.end method
