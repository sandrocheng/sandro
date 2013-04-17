.class public Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/animation/Animation;

.field private final c:I

.field private final d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/high16 v2, 0x3f00

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->b:Landroid/view/animation/Animation;

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41d8

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->c:I

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4222

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->d:I

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/high16 v2, 0x3f00

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->b:Landroid/view/animation/Animation;

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41d8

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->c:I

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4222

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->d:I

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->a:Landroid/widget/ImageView;

    const v1, 0x7f0200ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fd1eb851eb851ecL

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->e:I

    int-to-float v0, v0

    const v2, 0x3f3851ec

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->h:I

    int-to-float v0, v1

    const v2, 0x3e88f5c3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->f:I

    int-to-float v0, v1

    const v1, 0x3f451eb8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->g:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->h:I

    iget v2, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->e:I

    sub-int/2addr v1, v2

    invoke-static {}, Ldv;->a()I

    move-result v2

    iget v3, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->e:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v4, v1, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->b:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->b:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->b:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->b:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->e:I

    iget v1, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->f:I

    iget v2, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->h:I

    iget v3, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->g:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->c:I

    iget v1, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->d:I

    sub-int/2addr v0, v1

    rsub-int/lit8 v1, p1, 0x64

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->d:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/CircleBatteryLevelView;->postInvalidate()V

    return-void
.end method
