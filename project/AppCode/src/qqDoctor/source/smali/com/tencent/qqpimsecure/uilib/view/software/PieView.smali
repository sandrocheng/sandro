.class public Lcom/tencent/qqpimsecure/uilib/view/software/PieView;
.super Landroid/view/View;


# instance fields
.field private mAngles:[F

.field private mBorderColor:I

.field private mColors:[I

.field private mEnableBorder:Z

.field private mHeight:I

.field private mOutsideRingColor:I

.field private mOutsideRingSize:I

.field private mPaint:Landroid/graphics/Paint;

.field mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mShadeColors:[I

.field private mThickness:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    return-void
.end method

.method private changeValueToAngle([F)V
    .locals 6

    const/4 v0, 0x0

    const/high16 v2, 0x43b4

    array-length v1, p1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mAngles:[F

    const/4 v1, 0x0

    array-length v4, p1

    move v3, v1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget v5, p1, v1

    add-float/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mAngles:[F

    aget v5, p1, v0

    mul-float/2addr v5, v2

    div-float/2addr v5, v3

    aput v5, v4, v0

    iget-object v4, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mAngles:[F

    aget v4, v4, v0

    sub-float/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mAngles:[F

    aput v1, v2, v0

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v4, 0x1

    const/high16 v3, 0x43b4

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/high16 v13, 0x3f80

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mAngles:[F

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    invoke-direct {v1, v13, v13, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mOutsideRingColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mOutsideRingSize:I

    add-int/lit8 v0, v0, 0x1

    iget v5, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mOutsideRingSize:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mThickness:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mOutsideRingSize:I

    sub-int/2addr v6, v7

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->getHeight()I

    move-result v6

    iget v8, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mOutsideRingSize:I

    sub-int/2addr v6, v8

    add-int/lit8 v8, v6, -0x1

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v5, v5

    int-to-float v7, v7

    int-to-float v8, v8

    invoke-direct {v6, v0, v5, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v12, v11

    :goto_1
    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mThickness:I

    if-ge v12, v0, :cond_4

    const/high16 v7, 0x4387

    move v0, v11

    :goto_2
    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mAngles:[F

    array-length v5, v5

    if-ge v0, v5, :cond_3

    add-int/lit8 v5, v12, 0x1

    iget v8, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mThickness:I

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mColors:[I

    aget v8, v8, v0

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    :goto_3
    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mAngles:[F

    aget v8, v5, v0

    iget-object v10, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mAngles:[F

    aget v5, v5, v0

    add-float/2addr v7, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mShadeColors:[I

    aget v8, v8, v0

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_3
    iget v0, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v13

    iput v0, v6, Landroid/graphics/RectF;->top:F

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v13

    iput v0, v6, Landroid/graphics/RectF;->bottom:F

    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mEnableBorder:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mBorderColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v5, 0x4000

    const/high16 v4, -0x8000

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mWidth:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mHeight:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v5, v2, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    :cond_0
    :goto_0
    if-ne v5, v3, :cond_3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :cond_1
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->setMeasuredDimension(II)V

    return-void

    :cond_2
    if-ne v4, v2, :cond_0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mWidth:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    if-ne v4, v3, :cond_1

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1
.end method

.method public setBorderColor(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mEnableBorder:Z

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mBorderColor:I

    return-void
.end method

.method public setOutsideRing(II)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mOutsideRingColor:I

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mOutsideRingSize:I

    return-void
.end method

.method public setPiePerfectSize(II)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mWidth:I

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mHeight:I

    return-void
.end method

.method public setPieValues([F[I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->setPieValues([F[I[II)V

    return-void
.end method

.method public setPieValues([F[I[II)V
    .locals 0

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mColors:[I

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mShadeColors:[I

    iput p4, p0, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->mThickness:I

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->changeValueToAngle([F)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/software/PieView;->invalidate()V

    return-void
.end method
