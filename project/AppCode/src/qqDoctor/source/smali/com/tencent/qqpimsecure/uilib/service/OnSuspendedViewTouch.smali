.class public abstract Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field protected static final SIDE_LEFT:I = 0x1

.field protected static final SIDE_RIGHT:I = 0x2


# instance fields
.field private final MSG_ANIMATION_FINISH:I

.field private final MSG_ANIMATION_INTER:I

.field private final MSG_ANIMATION_NEXT_FRAME:I

.field protected isDragging:Z

.field protected isLongclicked:Z

.field protected isRocketUp:Z

.field protected mAnim:Landroid/view/animation/Animation;

.field private mAnimDistance:I

.field private mAnimHandler:Landroid/os/Handler;

.field private mAnimStop:Z

.field protected mDoingAnim:Z

.field protected mLeft:I

.field protected mLenghtOutOfScreen:I

.field protected mMoving:Z

.field private mScreenWidth:I

.field private mScreenX:F

.field private mScreenY:F

.field protected mSelfWidth:I

.field protected mSideMoveTo:I

.field protected mTop:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field protected mViewSideWithScreen:I

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnim:Landroid/view/animation/Animation;

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->isLongclicked:Z

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->MSG_ANIMATION_NEXT_FRAME:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->MSG_ANIMATION_FINISH:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->MSG_ANIMATION_INTER:I

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mMoving:Z

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->isDragging:Z

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->isRocketUp:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch$1;-><init>(Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimHandler:Landroid/os/Handler;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Lft;->d(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenWidth:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSelfWidth:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mTouchSlop:I

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->setClickable(Z)V

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->isWholeViewOnTouchable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->doAnimation()V

    return-void
.end method

.method private doAnimation()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimStop:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimDistance:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->getSuggestedMinimumWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->getSuggestedMinimumWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mWindowManager:Landroid/view/WindowManager;

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mTop:I

    invoke-virtual {p0, v3, v4}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLenghtOutOfScreen:I

    rsub-int/lit8 v3, v3, 0x0

    if-gt v2, v3, :cond_3

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLenghtOutOfScreen:I

    rsub-int/lit8 v2, v2, 0x0

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private setAnimDistance()V
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, -0x14

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimDistance:I

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimDistance:I

    goto :goto_0
.end method

.method private updateLocation(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenX:F

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mTouchX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->isAllowVerticalMove()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenY:F

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mTouchY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mTop:I

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mTop:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->getAnimationYOffset()I

    move-result v1

    sub-int/2addr v0, v1

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mWindowManager:Landroid/view/WindowManager;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    invoke-virtual {p0, v2, v0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public ActionDown()V
    .locals 0

    return-void
.end method

.method public ActionMove()V
    .locals 0

    return-void
.end method

.method public ActionUp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract changeViewSide(I)V
.end method

.method public dealWithInterrupt()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected getAnimationYOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;
.end method

.method public isAllowVerticalMove()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->isDragging:Z

    return v0
.end method

.method public isWholeViewOnTouchable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected moveToScreen(I)V
    .locals 2

    const/4 v1, 0x1

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    if-ne v0, v1, :cond_0

    const/16 v0, -0x14

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimDistance:I

    :goto_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mViewSideWithScreen:I

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mDoingAnim:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimStop:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimDistance:I

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mDoingAnim:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->isRocketUp:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenWidth:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenY:F

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenY:F

    int-to-float v2, v2

    sub-float v2, v3, v2

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenY:F

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mMoving:Z

    goto :goto_0

    :pswitch_0
    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->isDragging:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->ActionDown()V

    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->isLongclicked:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mTouchY:F

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->updateLocation(Landroid/view/View;)V

    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mMoving:Z

    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->isRocketUp:Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mTouchX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mTouchY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mTouchSlop:I

    if-gt v1, v3, :cond_3

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mTouchSlop:I

    if-gt v2, v1, :cond_3

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mMoving:Z

    if-eqz v1, :cond_2

    :cond_3
    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mMoving:Z

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->updateLocation(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->ActionMove()V

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mViewSideWithScreen:I

    if-ne v1, v0, :cond_5

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_4

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    if-ne v1, v0, :cond_4

    iput v5, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->changeViewSide(I)V

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    if-ne v1, v5, :cond_2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->changeViewSide(I)V

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenWidth:I

    shl-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x3

    if-gt v1, v2, :cond_6

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    if-ne v1, v5, :cond_6

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->changeViewSide(I)V

    goto/16 :goto_1

    :cond_6
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenWidth:I

    shl-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x3

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    if-ne v1, v0, :cond_2

    iput v5, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->changeViewSide(I)V

    goto/16 :goto_1

    :pswitch_2
    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->isDragging:Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->ActionUp()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->isRocketUp:Z

    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->isRocketUp:Z

    if-eqz v1, :cond_7

    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mMoving:Z

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->setAnimDistance()V

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSideMoveTo:I

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mViewSideWithScreen:I

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mDoingAnim:Z

    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimStop:Z

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public abstract saveLocation(II)V
.end method

.method public setRocketDone()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->isRocketUp:Z

    return-void
.end method

.method public setSelfWidth(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mSelfWidth:I

    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenWidth:I

    iput-boolean v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mDoingAnim:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mAnimStop:Z

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    iput v2, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mScreenWidth:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/service/OnSuspendedViewTouch;->mLeft:I

    goto :goto_0
.end method
