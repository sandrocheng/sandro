.class public Lcom/tencent/qqpimsecure/uilib/view/software/RingView;
.super Landroid/view/View;


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mRingBgColor:I

.field private mRingFrontColor:I

.field private mRingHeight:I

.field private mRingPercent:F

.field private mRingSize:I

.field private mRingWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 3

    const/high16 v2, 0x3f00

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingBgColor:I

    const v0, 0xffffff

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingFrontColor:I

    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingWidth:I

    int-to-float v0, p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingHeight:I

    int-to-float v0, p4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingSize:I

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v4, 0x0

    const/high16 v3, 0x43b4

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingSize:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v5, v0

    iget v6, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingWidth:I

    sub-int/2addr v6, v0

    int-to-float v6, v6

    iget v7, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingHeight:I

    sub-int v0, v7, v0

    int-to-float v0, v0

    invoke-direct {v1, v2, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingBgColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingFrontColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingPercent:F

    mul-float/2addr v0, v3

    const/high16 v2, 0x42c8

    div-float v3, v0, v2

    const/high16 v2, -0x3d4c

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingWidth:I

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setRingColor(II)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingBgColor:I

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingFrontColor:I

    return-void
.end method

.method public setRingPercent(F)V
    .locals 3

    const/high16 v1, 0x42c8

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->mRingPercent:F

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/RingView;->invalidate()V

    return-void

    :cond_1
    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    move p1, v1

    goto :goto_0
.end method
