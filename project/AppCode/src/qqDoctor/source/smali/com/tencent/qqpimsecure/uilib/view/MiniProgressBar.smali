.class public Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;
.super Landroid/widget/LinearLayout;


# instance fields
.field private mCurrentProgress:I

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->mPath:Landroid/graphics/Path;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->mPath:Landroid/graphics/Path;

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private cutCanvas(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->getHeight()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->mCurrentProgress:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->mPath:Landroid/graphics/Path;

    sub-int v1, v2, v1

    int-to-float v1, v1

    invoke-virtual {v3, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Landroid/graphics/RectF;

    sub-int v3, v2, v0

    int-to-float v3, v3

    int-to-float v2, v2

    int-to-float v4, v0

    invoke-direct {v1, v3, v5, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->mPath:Landroid/graphics/Path;

    const/high16 v3, -0x3d4c

    const/high16 v4, 0x4334

    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->mPath:Landroid/graphics/Path;

    int-to-float v0, v0

    invoke-virtual {v1, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lec;->a()Lec;

    invoke-static {p0}, Lec;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->cutCanvas(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->mCurrentProgress:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/MiniProgressBar;->invalidate()V

    return-void
.end method
