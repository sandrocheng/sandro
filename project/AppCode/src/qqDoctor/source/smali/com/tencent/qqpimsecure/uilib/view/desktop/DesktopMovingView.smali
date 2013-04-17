.class public Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private mDesktopLayout:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

.field private mDownTouch:Z

.field private mNotificationHeight:I

.field private mScreenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mDownTouch:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mNotificationHeight:I

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->getHeight(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mDownTouch:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mNotificationHeight:I

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->getHeight(Landroid/content/Context;)V

    return-void
.end method

.method private getHeight(Landroid/content/Context;)V
    .locals 1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mScreenHeight:I

    return-void
.end method

.method private getNotificationBarHeight()I
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mNotificationHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mNotificationHeight:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mNotificationHeight:I

    goto :goto_0
.end method

.method private onActionMove(Landroid/view/MotionEvent;)V
    .locals 7

    const-wide/high16 v5, 0x3fe0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v5

    sub-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->getHeight()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->getNotificationBarHeight()I

    move-result v3

    int-to-double v3, v3

    sub-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mDesktopLayout:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mDesktopLayout:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    invoke-virtual {v3, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->getWindowParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onActionUp(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/high16 v1, -0x4080

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mScreenHeight:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mDesktopLayout:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mDesktopLayout:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->sendUpTouchEvent(ZII)V

    :goto_1
    iput-boolean v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mDownTouch:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mDesktopLayout:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    int-to-float v0, v0

    sub-float v0, v3, v0

    float-to-int v0, v0

    invoke-virtual {v1, v4, v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->sendUpTouchEvent(ZII)V

    goto :goto_1
.end method

.method public onDesktopActionUp()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mDesktopLayout:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->sendUpTouchEvent(ZII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mDownTouch:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mDownTouch:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mDownTouch:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->onActionMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->onActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->onActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setDesktopLayout(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->mDesktopLayout:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    return-void
.end method
