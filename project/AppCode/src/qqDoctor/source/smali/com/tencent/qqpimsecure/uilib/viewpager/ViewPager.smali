.class public Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$1;,
        Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$DataSetObserver;,
        Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;,
        Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SimpleOnPageChangeListener;,
        Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;,
        Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final INVALID_POINTER:I = -0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCurItem:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter$DataSetObserver;

.field private mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredCurItem:I

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollState:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredCurItem:I

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollState:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->initViewPager()V

    return-void
.end method

.method private completeScroll()V
    .locals 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrolling:Z

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    if-ne v1, v4, :cond_1

    if-eq v3, v5, :cond_2

    :cond_1
    invoke-virtual {p0, v4, v5}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->scrollTo(II)V

    :cond_2
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollState:I

    if-eqz v1, :cond_3

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollState:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    invoke-interface {v1, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_3
    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mPopulatePending:Z

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrolling:Z

    move v1, v2

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;

    iget-boolean v4, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    iput-boolean v2, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->scrolling:Z

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->populate()V

    :cond_6
    return-void
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsUnableToDrag:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    invoke-static {p1, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollState:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method addNewItem(II)V
    .locals 2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;-><init>()V

    iput p1, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    if-gez p2, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mChildWidthMeasureSpec:I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "computeScroll: finished="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->scrollTo(II)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getWidth()I

    move-result v0

    div-int v1, v2, v0

    rem-int/2addr v2, v0

    int-to-float v3, v2

    int-to-float v0, v0

    div-float v0, v3, v0

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    invoke-interface {v3, v1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->invalidate()V

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 9

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    move v3, v2

    move v4, v5

    move v6, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;

    iget-object v7, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    iget-object v8, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v7

    if-eq v7, v5, :cond_6

    const/4 v8, -0x2

    if-ne v7, v8, :cond_1

    iget-object v6, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    iget-object v6, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    iget v7, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    iget-object v8, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v8}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    iget v6, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    iget v0, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v6, v0, :cond_7

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    invoke-virtual {v4}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v0, v3

    move v3, v4

    move v4, v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v6, v4

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget v8, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    if-eq v8, v7, :cond_6

    iget v6, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    if-ne v6, v8, :cond_2

    move v4, v7

    :cond_2
    iput v7, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    move v0, v3

    move v3, v4

    move v4, v1

    goto :goto_2

    :cond_3
    if-ltz v4, :cond_5

    invoke-virtual {p0, v4, v2, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->populate()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->requestLayout()V

    :cond_4
    return-void

    :cond_5
    move v1, v6

    goto :goto_3

    :cond_6
    move v0, v3

    move v3, v4

    move v4, v6

    goto :goto_2

    :cond_7
    move v0, v3

    move v3, v4

    move v4, v1

    goto :goto_2
.end method

.method public getAdapter()Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    return-object v0
.end method

.method infoForChild(Landroid/view/View;)Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    iget-object v3, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setWillNotDraw(Z)V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mMaximumVelocity:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->populate()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    if-ne v2, v0, :cond_2

    :cond_0
    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsUnableToDrag:Z

    iput v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsUnableToDrag:Z

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    sparse-switch v2, :sswitch_data_0

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    goto :goto_0

    :sswitch_0
    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    if-eq v2, v4, :cond_4

    invoke-static {p1, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionY:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onInterceptTouchEvent Moved x to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " diff="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_7

    cmpl-float v2, v4, v5

    if-lez v2, :cond_7

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getWidth()I

    move-result v2

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    invoke-virtual {v6}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/2addr v2, v5

    int-to-float v2, v2

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    sub-float/2addr v5, v3

    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_5

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    :cond_5
    cmpl-float v2, v5, v2

    if-ltz v2, :cond_6

    invoke-direct {p0, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    :cond_6
    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setScrollState(I)V

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_1

    :cond_7
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v5, v1

    if-lez v1, :cond_4

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsUnableToDrag:Z

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mInitialMotionX:F

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionY:F

    invoke-static {p1, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsUnableToDrag:Z

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setScrollState(I)V

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Down at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsBeingDragged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsUnableToDrag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsUnableToDrag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->completeScroll()V

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsUnableToDrag:Z

    goto :goto_2

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mInLayout:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->populate()V

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mInLayout:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v5, v4, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    mul-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getPaddingTop()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Positioning #"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " f="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v4, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v3, v5, v6, v4, v7}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/high16 v3, 0x4000

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mChildWidthMeasureSpec:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mChildHeightMeasureSpec:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mInLayout:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->populate()V

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mInLayout:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Measuring #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mChildWidthMeasureSpec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mChildWidthMeasureSpec:I

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    iget-object v1, p1, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v0, p1, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;->position:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;->position:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredCurItem:I

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    iput v0, v1, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;->position:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->completeScroll()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v0, v4

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->completeScroll()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    invoke-static {p1, v3}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getWidth()I

    move-result v5

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/2addr v1, v5

    int-to-float v1, v1

    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    invoke-static {p1, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    iget v7, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {p1, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    iget v8, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionY:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Moved x to "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " diff="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v2, v7, v2

    if-lez v2, :cond_5

    cmpl-float v2, v7, v8

    if-lez v2, :cond_5

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    sub-float/2addr v2, v6

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    cmpg-float v6, v2, v0

    if-gtz v6, :cond_7

    invoke-direct {p0, v3}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setScrollState(I)V

    :cond_5
    :goto_2
    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    invoke-static {p1, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iget v6, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    sub-float/2addr v6, v2

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v6

    cmpg-float v7, v2, v0

    if-gtz v7, :cond_9

    invoke-direct {p0, v3}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setScrollState(I)V

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    :goto_3
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    float-to-int v1, v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->scrollTo(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_6

    float-to-int v1, v0

    div-int/2addr v1, v5

    float-to-int v2, v0

    rem-int/2addr v2, v5

    int-to-float v3, v2

    int-to-float v7, v5

    div-float/2addr v3, v7

    iget-object v7, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    invoke-interface {v7, v6}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;->onPageScrollDeltaX(F)V

    iget-object v7, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    invoke-interface {v7, v1, v3, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Moved mIsBeingDragged deltaX  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scrollX  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "width  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    cmpl-float v2, v2, v1

    if-ltz v2, :cond_8

    invoke-direct {p0, v3}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setScrollState(I)V

    goto :goto_2

    :cond_8
    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    invoke-direct {p0, v4}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setScrollState(I)V

    invoke-direct {p0, v4}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    :cond_9
    cmpl-float v0, v2, v1

    if-ltz v0, :cond_a

    invoke-direct {p0, v3}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setScrollState(I)V

    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    move v0, v1

    goto :goto_3

    :cond_a
    invoke-direct {p0, v4}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setScrollState(I)V

    move v0, v2

    goto :goto_3

    :pswitch_3
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mPopulatePending:Z

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mMinimumVelocity:I

    if-gt v0, v1, :cond_b

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d

    :cond_b
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mInitialMotionX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v4, v4}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    :goto_4
    iput v5, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->endDrag()V

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v4, v4}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_4

    :cond_d
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0, v4, v4}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_4

    :pswitch_4
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0, v4, v4}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    iput v5, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->endDrag()V

    goto/16 :goto_1

    :pswitch_5
    invoke-static {p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    invoke-static {p1, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mLastMotionX:F

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method populate()V
    .locals 9

    const/4 v4, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mPopulatePending:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->startUpdate(Landroid/view/View;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->getCount()I

    move-result v0

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_4

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "populating: startPos="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " endPos="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v3, v4

    move v5, v6

    :goto_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;

    iget v7, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    if-lt v7, v1, :cond_2

    iget v7, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    if-le v7, v2, :cond_5

    :cond_2
    iget-boolean v7, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->scrolling:Z

    if-nez v7, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "removing: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " @ "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    iget v7, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    iget-object v8, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v7, v8}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    move v5, v3

    :goto_4
    iget v3, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    add-int/lit8 v0, v5, 0x1

    move v5, v3

    move v3, v0

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    move v1, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto :goto_2

    :cond_5
    if-ge v5, v2, :cond_c

    iget v7, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    if-le v7, v1, :cond_c

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_6

    move v5, v1

    :cond_6
    :goto_5
    if-gt v5, v2, :cond_c

    iget v7, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    if-ge v5, v7, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "inserting: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->addNewItem(II)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;

    iget v0, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    :goto_6
    if-ge v0, v2, :cond_a

    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_8

    move v1, v0

    :cond_8
    :goto_7
    if-gt v1, v2, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "appending: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->addNewItem(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    move v0, v6

    goto :goto_6

    :cond_a
    :goto_8
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;

    iget v0, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->position:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_c
    move v5, v3

    goto/16 :goto_4
.end method

.method public setAdapter(Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->setDataSetObserver(Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter$DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mObserver:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter$DataSetObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$DataSetObserver;

    invoke-direct {v0, p0, v3}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$DataSetObserver;-><init>(Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$1;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mObserver:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter$DataSetObserver;

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mObserver:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter$DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->setDataSetObserver(Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter$DataSetObserver;)V

    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mPopulatePending:Z

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredCurItem:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredCurItem:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v4, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredCurItem:I

    iput-object v3, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iput-object v3, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->populate()V

    goto :goto_0
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mPopulatePending:Z

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p3, :cond_3

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    goto :goto_0

    :cond_3
    if-gez p1, :cond_6

    move p1, v1

    :cond_4
    :goto_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_5

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_7

    :cond_5
    move v2, v1

    :goto_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;

    iput-boolean v3, v0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mAdapter:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    if-eq v0, p1, :cond_8

    move v0, v3

    :goto_3
    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->populate()V

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-virtual {p0, v2, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->smoothScrollTo(II)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_a
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->completeScroll()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public setOnPageChangeListener(Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    return-void
.end method

.method smoothScrollTo(II)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->getScrollY()I

    move-result v1

    sub-int v2, p1, v0

    sub-int v3, p2, v1

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->completeScroll()V

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v4, v5, :cond_3

    iput-boolean v5, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    :cond_3
    iput-boolean v5, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrolling:Z

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollState:I

    if-eq v4, v6, :cond_4

    iput v6, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScrollState:I

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mOnPageChangeListener:Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;

    invoke-interface {v4, v6}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_4
    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/viewpager/ViewPager;->invalidate()V

    goto :goto_0
.end method
