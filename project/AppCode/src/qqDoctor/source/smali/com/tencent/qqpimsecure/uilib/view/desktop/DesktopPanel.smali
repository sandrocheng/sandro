.class public Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;,
        Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;,
        Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x1

.field public static final LEFT:I = 0x2

.field public static final RIGHT:I = 0x3

.field public static final TOP:I


# instance fields
.field private final ANIMATION_ONCE_TIME:I

.field private final ANIMATION_TIME:I

.field protected mAnimating:Z

.field protected mAnimatingY:I

.field private mAnimationRunner:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;

.field private mClickOrScroll:Z

.field private mClosedHandle:Landroid/graphics/drawable/Drawable;

.field private mContent:Landroid/view/View;

.field protected mContentHeight:I

.field protected mContentWidth:I

.field private mFireScrolled:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;

.field protected mHandle:Landroid/view/View;

.field private mHandleButton:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mInitLayout:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mOnPanelListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;

.field protected mOpen:Z

.field protected mOrientation:I

.field protected mPosition:I

.field protected mScrollY:I

.field protected mScrolling:Z

.field private mTopDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

.field protected mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v2, 0x1e

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->ANIMATION_ONCE_TIME:I

    const/16 v2, 0x12c

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->ANIMATION_TIME:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrolling:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimating:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;

    invoke-direct {v2, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mTouchListener:Landroid/view/View$OnTouchListener;

    sget-object v2, Ldp;->Panel:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mPosition:I

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mPosition:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mPosition:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOrientation:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->setOrientation(I)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mGestureListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mGestureListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;

    invoke-direct {v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimationRunner:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mClickOrScroll:Z

    return v0
.end method

.method static synthetic access$202(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mClickOrScroll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mFireScrolled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mFireScrolled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mTopDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    return-object v0
.end method

.method private changedHandleAndCallBack()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->callBackAfter()V

    return-void
.end method

.method private initLayout()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mInitLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->getPaddingBottomHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentWidth:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->getPaddingBottomHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mHandleButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mClosedHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOpen:Z

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    neg-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    neg-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimatingY:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    invoke-virtual {p0, v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->scrollTo(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mInitLayout:Z

    :cond_2
    return-void
.end method


# virtual methods
.method protected callBackAfter()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOnPanelListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOpen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->onPanelOpened()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOnPanelListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;->onPanelOpened(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->onPanelClosed()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOnPanelListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;->onPanelClosed(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)V

    goto :goto_0
.end method

.method protected callBackBefore()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOnPanelListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOpen:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->onBeforePanelOpened()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOnPanelListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;->onBeforePanelOpened(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->onBeforePanelClosed()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOnPanelListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;

    invoke-interface {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;->onBeforePanelClosed(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)V

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method protected getPaddingBottomHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOpen:Z

    return v0
.end method

.method protected onBeforePanelClosed()V
    .locals 0

    return-void
.end method

.method protected onBeforePanelOpened()V
    .locals 0

    return-void
.end method

.method protected onEndAnimation(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOpen:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOpen:Z

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->callBackAfter()V

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimating:Z

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mFireScrolled:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f08017a

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mHandle:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f080180

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContent:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->removeView(Landroid/view/View;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mPosition:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mPosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->addView(Landroid/view/View;)V

    :goto_0
    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mHandleButton:Landroid/widget/ImageButton;

    const v0, 0x7f080182

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mTopDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->initLayout()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPanelClosed()V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    neg-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    neg-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimatingY:I

    return-void
.end method

.method protected onPanelOpened()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimatingY:I

    return-void
.end method

.method protected onScrollEndAnimation()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrolling:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimatingY:I

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    neg-int v3, v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimatingY:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    neg-int v3, v3

    if-ne v2, v3, :cond_3

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mAnimatingY == -mContentHeight && mScrollY == 0: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrolling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->onEndAnimation(Z)V

    :goto_0
    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrolling:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onScrollEndAnimation: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrolling:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mFireScrolled:Z

    return-void

    :cond_3
    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimatingY:I

    if-nez v2, :cond_4

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    if-eqz v2, :cond_5

    :cond_4
    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimatingY:I

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    neg-int v3, v3

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    neg-int v3, v3

    if-ne v2, v3, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mAnimatingY == 0 && mScrollY == 0: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrolling:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->onEndAnimation(Z)V

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    neg-int v2, v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    if-lt v3, v2, :cond_8

    move v2, v0

    :goto_1
    if-eqz v2, :cond_9

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    rsub-int/lit8 v2, v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    :cond_7
    move v6, v2

    move v2, v0

    move v0, v6

    :goto_2
    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    iput v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimatingY:I

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimationRunner:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->setInterPlolator(Landroid/view/animation/Interpolator;IZ)V

    goto :goto_0

    :cond_8
    move v2, v1

    goto :goto_1

    :cond_9
    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_3
    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_3
.end method

.method protected onStartAnimation()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimating:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimating:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimationRunner:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->setInterPlolator(Landroid/view/animation/Interpolator;IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimationRunner:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mInterpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$AnimationRunner;->setInterPlolator(Landroid/view/animation/Interpolator;IZ)V

    goto :goto_0
.end method

.method public resetLayout()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mInitLayout:Z

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->initLayout()V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setOnPanelListener(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mOnPanelListener:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$OnPanelListener;

    return-void
.end method

.method public setOpen(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->isOpen()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->onStartAnimation()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->callBackBefore()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->callBackAfter()V

    goto :goto_0
.end method
