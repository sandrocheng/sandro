.class public Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final INVALID_SCREEN:I = -0x1

.field private static final MARGIN_SCROLL_DIVISOR:I = 0x3

.field private static final SNAP_VELOCITY:I = 0xf

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field public defualtScreen:I

.field public isAllowSlideView:Z

.field private isMarginScroll:Z

.field private isNormalScroll:Z

.field private isNotifySlideStart:Z

.field public mAllowLongPress:Z

.field final mClipBounds:Landroid/graphics/Rect;

.field private mCurrentScreenIndex:I

.field final mDrawerBounds:Landroid/graphics/Rect;

.field mDrawerContentHeight:I

.field mDrawerContentWidth:I

.field private mFirstLayout:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private slideCallBackInterfaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mFirstLayout:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mNextScreen:I

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mTouchState:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mDrawerBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mClipBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isMarginScroll:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isNormalScroll:Z

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isAllowSlideView:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->defualtScreen:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isNotifySlideStart:Z

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->initData()V

    return-void
.end method

.method private initData()V
    .locals 2

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mScroller:Landroid/widget/Scroller;

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->defualtScreen:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mMaximumVelocity:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->slideCallBackInterfaceList:Ljava/util/ArrayList;

    return-void
.end method

.method private notifySlideNextCanvas(I)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->slideCallBackInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->slideCallBackInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;

    invoke-interface {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;->onNextCanvas(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySlideStart()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isNotifySlideStart:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->slideCallBackInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->slideCallBackInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;->onSlideStart()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isNotifySlideStart:Z

    goto :goto_0
.end method

.method private notifySlideStop()V
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->slideCallBackInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->slideCallBackInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;->onSlideStop()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isNotifySlideStart:Z

    return-void
.end method

.method private snapToDestination()V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->snapToScreen(I)V

    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public addSlideCallBackInterface(Lcom/tencent/qqpimsecure/uilib/view/slide/SlideCallBackInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->slideCallBackInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Lcom/tencent/qqpimsecure/uilib/view/slide/SlideViewGroup;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    const/4 v3, -0x1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isAllowSlideView:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->postInvalidate()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mNextScreen:I

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mNextScreen:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mNextScreen:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->notifySlideNextCanvas(I)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mTouchState:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mNextScreen:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getDrawingTime()J

    move-result-wide v3

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mNextScreen:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mNextScreen:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mNextScreen:I

    sub-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mNextScreen:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildCount()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getCurrentScreen()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->snapToScreen(I)V

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->snapToScreen(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentScreen()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    return v0
.end method

.method isDefaultScreenShowing()Z
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->defualtScreen:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveToDefaultScreen()V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->defualtScreen:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->snapToScreen(I)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->defualtScreen:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isAllowSlideView:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mTouchState:I

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mTouchState:I

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mLastMotionX:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mLastMotionY:F

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v4, v3

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mTouchSlop:I

    if-le v0, v5, :cond_6

    move v3, v2

    :goto_2
    if-le v4, v5, :cond_7

    move v0, v2

    :goto_3
    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    :cond_4
    if-eqz v3, :cond_5

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mTouchState:I

    :cond_5
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mAllowLongPress:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mAllowLongPress:Z

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1

    :cond_6
    move v3, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :pswitch_1
    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mLastMotionX:F

    iput v4, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mLastMotionY:F

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mAllowLongPress:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_4
    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mTouchState:I

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_4

    :pswitch_2
    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mTouchState:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mAllowLongPress:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v6, v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v0, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onMeasure height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " width "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mFirstLayout:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    mul-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->scrollTo(II)V

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mFirstLayout:Z

    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mNextScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mNextScreen:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isAllowSlideView:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mLastMotionX:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mTouchState:I

    if-ne v0, v5, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mLastMotionX:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildCount()I

    move-result v3

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mLastMotionX:F

    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isNormalScroll:Z

    if-nez v2, :cond_6

    if-gez v0, :cond_4

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    if-eqz v2, :cond_5

    :cond_4
    if-lez v0, :cond_6

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_6

    :cond_5
    iput-boolean v5, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isMarginScroll:Z

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->scrollBy(II)V

    :goto_1
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->notifySlideStart()V

    goto :goto_0

    :cond_6
    if-gez v0, :cond_7

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getScrollX()I

    move-result v2

    if-lez v2, :cond_c

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getScrollX()I

    move-result v2

    neg-int v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isMarginScroll:Z

    if-eqz v2, :cond_8

    div-int/lit8 v0, v0, 0x3

    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->scrollBy(II)V

    goto :goto_1

    :cond_7
    if-lez v0, :cond_c

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_c

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_8
    iput-boolean v5, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isNormalScroll:Z

    goto :goto_3

    :pswitch_2
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mTouchState:I

    if-ne v0, v5, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mMaximumVelocity:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    const/16 v2, 0xf

    if-le v0, v2, :cond_a

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    if-lez v2, :cond_a

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->snapToScreen(I)V

    :goto_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_9
    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isMarginScroll:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->isNormalScroll:Z

    :pswitch_3
    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mTouchState:I

    goto/16 :goto_0

    :cond_a
    const/16 v2, -0xf

    if-ge v0, v2, :cond_b

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_b

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->snapToScreen(I)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->snapToScreen(I)V

    goto :goto_4

    :cond_c
    move v0, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->snapToScreen(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentScreen(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    return-void
.end method

.method public snapToScreen(I)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    if-eq v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mNextScreen:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v3, v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getWidth()I

    move-result v0

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->invalidate()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->notifySlideStop()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public snapToScreen(II)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    if-eq v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mNextScreen:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v3, v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getWidth()I

    move-result v0

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->getScrollX()I

    move-result v1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->invalidate()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/slide/SlideLayout;->notifySlideStop()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
