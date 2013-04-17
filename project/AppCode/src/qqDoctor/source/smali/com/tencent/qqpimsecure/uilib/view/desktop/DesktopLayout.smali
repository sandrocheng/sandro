.class public Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$DesktopLayoutRunnable;
    }
.end annotation


# static fields
.field public static final FOCUS_BOTTOM_GRID_VIEW:I = 0x0

.field public static final FOCUS_TOP_GRID_VIEW:I = 0x1


# instance fields
.field private mAnimLayout:Landroid/widget/LinearLayout;

.field private mAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimating:Z

.field private mAnimlistenerBySelf:Landroid/view/animation/Animation$AnimationListener;

.field private mBottomGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

.field private mContext:Landroid/content/Context;

.field private mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

.field private mFromIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mLastAnimView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

.field private mLineHeight:I

.field private mOffsetY:I

.field private mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

.field private mToIndex:I

.field private mToolBoxDao:Lkk;

.field private mTopGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimating:Z

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOffsetY:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mLineHeight:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mY:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$3;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimlistenerBySelf:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->initParams(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimating:Z

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    iput v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOffsetY:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mLineHeight:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mY:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$3;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimlistenerBySelf:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->initParams(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mY:I

    return v0
.end method

.method static synthetic access$1000(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->onPositionChangedBySelf()V

    return-void
.end method

.method static synthetic access$1100(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setTopGridViewXY(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setBottomGridViewXY(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->onPositionChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimating:Z

    return p1
.end method

.method private addAnimView(Landroid/widget/GridView;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getImageResId()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getTextResId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->createAnimView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mLastAnimView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mLastAnimView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mLastAnimView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private convertPosition(II)V
    .locals 6

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mTopGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    rem-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    rem-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-direct {p0, v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->addAnimView(Landroid/widget/GridView;Landroid/view/View;)V

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->startAnimation(IIIILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    goto :goto_1
.end method

.method private convertPositionBySelft(II)V
    .locals 6

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-ne p1, p2, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setLastSelectedView(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mTopGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    rem-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    rem-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-direct {p0, v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->addAnimView(Landroid/widget/GridView;Landroid/view/View;)V

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimlistenerBySelf:Landroid/view/animation/Animation$AnimationListener;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->startAnimation(IIIILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    rem-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    rem-int/lit8 v2, v2, 0x4

    if-gt v1, v2, :cond_6

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    if-ge v1, v2, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOffsetY:I

    add-int/2addr v4, v0

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    rem-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    rem-int/lit8 v2, v2, 0x4

    if-gt v1, v2, :cond_7

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    if-le v1, v2, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOffsetY:I

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    rem-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    rem-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_8

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    if-ge v1, v2, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOffsetY:I

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    goto/16 :goto_1

    :cond_8
    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    rem-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    rem-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_9

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    if-le v1, v2, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOffsetY:I

    add-int/2addr v4, v0

    goto/16 :goto_1

    :cond_9
    move v2, v4

    move v3, v4

    move v1, v4

    goto/16 :goto_1
.end method

.method private createAnimView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->setBackgroundColor(I)V

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->setMinimumWidth(I)V

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->setMinimumHeight(I)V

    return-object v0
.end method

.method private initParams(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lkk;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lkk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToolBoxDao:Lkk;

    return-void
.end method

.method private onPositionChanged()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    invoke-interface {v0, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->saveTopIndex()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->saveBottomIndex()V

    return-void
.end method

.method private onPositionChangedBySelf()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mFromIndex:I

    invoke-interface {v3, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToIndex:I

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->saveTopIndex()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->saveBottomIndex()V

    return-void
.end method

.method private saveBottomIndex()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mBottomGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToolBoxDao:Lkk;

    invoke-virtual {v0, v1}, Lkk;->b(Ljava/util/List;)V

    return-void
.end method

.method private saveTopIndex()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mTopGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mToolBoxDao:Lkk;

    invoke-virtual {v0, v1}, Lkk;->a(Ljava/util/List;)V

    return-void
.end method

.method private setBottomGridViewXY(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mBottomGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOffsetY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mY:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mY:I

    goto :goto_0
.end method

.method private setOffsetY()V
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOffsetY:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOffsetY:I

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mLineHeight:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mTopGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mBottomGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mLineHeight:I

    :cond_1
    return-void
.end method

.method private setTopGridViewXY(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mTopGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOffsetY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mY:I

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mY:I

    goto :goto_0
.end method

.method private startAnimation(IIIILandroid/view/animation/Animation$AnimationListener;)V
    .locals 5

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mLastAnimView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimating:Z

    return-void
.end method


# virtual methods
.method public getOffsetY()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOffsetY:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setOffsetY()V

    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOffsetY:I

    return v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getWindowParams(II)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimating:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->isTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mCurrentGridView.isTouchMode(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->isTouchMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mTopGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mTopGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mTopGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->onDesktopActionUp()V

    :cond_1
    :goto_2
    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mBottomGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mBottomGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mBottomGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;->onDesktopActionUp()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v5, -0x1

    const/high16 v3, -0x4080

    const-wide/high16 v7, 0x3fe0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->isTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v2, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->isTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimating:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setOffsetY()V

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setBottomGridViewXY(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mY:I

    invoke-virtual {v0, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->pointToPosition(II)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedIndex()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v7

    sub-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4043

    sub-double/2addr v3, v5

    double-to-int v3, v3

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->getWindowParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0, v2, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setTouchOrder(ZZ)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setLastSelectedView(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->isTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimating:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setOffsetY()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mY:I

    invoke-virtual {v0, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->pointToPosition(II)I

    move-result v0

    if-eq v0, v5, :cond_3

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedIndex()I

    move-result v3

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedIndex()I

    move-result v0

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mY:I

    invoke-virtual {v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->pointToPosition(II)I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->convertPositionBySelft(II)V

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v3, v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setTouchOrder(ZZ)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedView()Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->setLastSelectedView(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopMovingView;)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->setTopGridViewXY(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mY:I

    invoke-virtual {v0, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->pointToPosition(II)I

    move-result v0

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->getLastSelectedIndex()I

    move-result v0

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mX:I

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mY:I

    invoke-virtual {v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->pointToPosition(II)I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->convertPosition(II)V

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendUpTouchEvent(ZII)V
    .locals 1

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$4;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;ZII)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setAnimLayout(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mAnimLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setBottomGridView(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mBottomGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    return-void
.end method

.method public setCurrentGridView(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mBottomGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mTopGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mTopGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mCurrentGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mBottomGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mOtherGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    goto :goto_0
.end method

.method public setTopGridView(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mTopGridView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    return-void
.end method
