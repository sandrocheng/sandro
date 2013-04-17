.class public Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;
    }
.end annotation


# instance fields
.field private final EndStartGif:I

.field private final KStartGif:I

.field private animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHighSmokeImg:Landroid/widget/ImageView;

.field private mLean:Landroid/widget/FrameLayout;

.field private mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;

.field private mLowSmokeImg:Landroid/widget/ImageView;

.field private mSlashImg:Landroid/widget/ImageView;

.field private mSlashImg2:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->KStartGif:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->EndStartGif:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, -0x2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->KStartGif:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->EndStartGif:I

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ed

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mLean:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mLean:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mLean:Landroid/widget/FrameLayout;

    const v1, 0x7f08030d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mSlashImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mLean:Landroid/widget/FrameLayout;

    const v1, 0x7f08030e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mSlashImg2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mLean:Landroid/widget/FrameLayout;

    const v1, 0x7f080310

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mLowSmokeImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mLowSmokeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mLean:Landroid/widget/FrameLayout;

    const v1, 0x7f08030f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mHighSmokeImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mHighSmokeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mSlashImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mLowSmokeImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mHighSmokeImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->setUp()V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mSlashImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->startScaleShortAnimation()V

    return-void
.end method

.method private setUp()V
    .locals 9

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$3;

    invoke-direct {v2, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$3;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mLean:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v2, v1

    move v4, v1

    move v6, v3

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$4;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$4;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mHighSmokeImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startDelay()V
    .locals 3

    const/high16 v1, 0x3f80

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$2;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mLean:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startScaleShortAnimation()V
    .locals 9

    const/4 v5, 0x1

    const/high16 v1, 0x3f80

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3f4ccccd

    const/4 v6, 0x0

    move v2, v1

    move v3, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$5;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$5;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mHighSmokeImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public getParamXY()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    const-wide/high16 v6, 0x3fe0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    sget-object v1, Lkg;->d:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-double v2, v0

    mul-double/2addr v2, v6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mSlashImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v0, Lkg;->d:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v1, Lkg;->d:Landroid/view/WindowManager$LayoutParams;

    sget-object v2, Lkg;->a:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    sget-object v1, Lkg;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-object v1, Lkg;->d:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    sget-object v0, Lkg;->d:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v0, Lkg;->d:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public poolAnimate(ZZ)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mSlashImg2:Landroid/widget/ImageView;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mSlashImg:Landroid/widget/ImageView;

    const v1, 0x7f020357

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mSlashImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mHighSmokeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mLowSmokeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mSlashImg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mSlashImg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mSlashImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mSlashImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mSlashImg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->startDelay()V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->animationDrawableS:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView;->mListener:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/SuspendWhirlPoolView$onSuspendWhirlPoolAnimListener;->onAnimationDone()V

    :cond_1
    return-void
.end method
