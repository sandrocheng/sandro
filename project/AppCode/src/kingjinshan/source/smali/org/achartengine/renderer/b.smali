.class public Lorg/achartengine/renderer/b;
.super Ljava/lang/Object;
.source "DefaultRenderer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BACKGROUND_COLOR:I = -0x1000000

.field public static final NO_COLOR:I = 0x0

.field private static final REGULAR_TEXT_FONT:Landroid/graphics/Typeface; = null

.field public static final TEXT_COLOR:I = -0x333334

.field private static final serialVersionUID:J = -0x16b1d30a30a41b4fL


# instance fields
.field private mAntialiasing:Z

.field private mApplyBackgroundColor:Z

.field private mAxesColor:I

.field private mBackgroundColor:I

.field private mChartTitle:Ljava/lang/String;

.field private mChartTitleTextSize:F

.field private mClickEnabled:Z

.field private mExternalZoomEnabled:Z

.field private mFitLegend:Z

.field private mLabelsColor:I

.field private mLabelsTextSize:F

.field private mLegendHeight:I

.field private mLegendTextSize:F

.field private mMargins:[I

.field private mOriginalScale:F

.field private mPanEnabled:Z

.field private mRenderers:Ljava/util/List;

.field private mScale:F

.field private mShowAxes:Z

.field private mShowCustomTextGrid:Z

.field private mShowGrid:Z

.field private mShowLabels:Z

.field private mShowLegend:Z

.field private mTextTypefaceName:Ljava/lang/String;

.field private mTextTypefaceStyle:I

.field private mZoomButtonsVisible:Z

.field private mZoomEnabled:Z

.field private mZoomRate:F

.field private selectableBuffer:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lorg/achartengine/renderer/b;->REGULAR_TEXT_FONT:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const v3, -0x333334

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/achartengine/renderer/b;->mChartTitle:Ljava/lang/String;

    .line 36
    const/high16 v0, 0x4170

    iput v0, p0, Lorg/achartengine/renderer/b;->mChartTitleTextSize:F

    .line 47
    sget-object v0, Lorg/achartengine/renderer/b;->REGULAR_TEXT_FONT:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/renderer/b;->mTextTypefaceName:Ljava/lang/String;

    .line 49
    iput v1, p0, Lorg/achartengine/renderer/b;->mTextTypefaceStyle:I

    .line 55
    iput-boolean v2, p0, Lorg/achartengine/renderer/b;->mShowAxes:Z

    .line 57
    iput v3, p0, Lorg/achartengine/renderer/b;->mAxesColor:I

    .line 59
    iput-boolean v2, p0, Lorg/achartengine/renderer/b;->mShowLabels:Z

    .line 61
    iput v3, p0, Lorg/achartengine/renderer/b;->mLabelsColor:I

    .line 63
    const/high16 v0, 0x4120

    iput v0, p0, Lorg/achartengine/renderer/b;->mLabelsTextSize:F

    .line 65
    iput-boolean v2, p0, Lorg/achartengine/renderer/b;->mShowLegend:Z

    .line 67
    const/high16 v0, 0x4140

    iput v0, p0, Lorg/achartengine/renderer/b;->mLegendTextSize:F

    .line 69
    iput-boolean v1, p0, Lorg/achartengine/renderer/b;->mFitLegend:Z

    .line 71
    iput-boolean v1, p0, Lorg/achartengine/renderer/b;->mShowGrid:Z

    .line 73
    iput-boolean v1, p0, Lorg/achartengine/renderer/b;->mShowCustomTextGrid:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/renderer/b;->mRenderers:Ljava/util/List;

    .line 77
    iput-boolean v2, p0, Lorg/achartengine/renderer/b;->mAntialiasing:Z

    .line 79
    iput v1, p0, Lorg/achartengine/renderer/b;->mLegendHeight:I

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/achartengine/renderer/b;->mMargins:[I

    .line 83
    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/achartengine/renderer/b;->mScale:F

    .line 85
    iput-boolean v2, p0, Lorg/achartengine/renderer/b;->mPanEnabled:Z

    .line 87
    iput-boolean v2, p0, Lorg/achartengine/renderer/b;->mZoomEnabled:Z

    .line 89
    iput-boolean v1, p0, Lorg/achartengine/renderer/b;->mZoomButtonsVisible:Z

    .line 91
    const/high16 v0, 0x3fc0

    iput v0, p0, Lorg/achartengine/renderer/b;->mZoomRate:F

    .line 93
    iput-boolean v1, p0, Lorg/achartengine/renderer/b;->mExternalZoomEnabled:Z

    .line 95
    iget v0, p0, Lorg/achartengine/renderer/b;->mScale:F

    iput v0, p0, Lorg/achartengine/renderer/b;->mOriginalScale:F

    .line 97
    iput-boolean v1, p0, Lorg/achartengine/renderer/b;->mClickEnabled:Z

    .line 99
    const/16 v0, 0xf

    iput v0, p0, Lorg/achartengine/renderer/b;->selectableBuffer:I

    return-void

    .line 81
    :array_0
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public addSeriesRenderer(ILorg/achartengine/renderer/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lorg/achartengine/renderer/b;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 154
    return-void
.end method

.method public addSeriesRenderer(Lorg/achartengine/renderer/c;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lorg/achartengine/renderer/b;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public getAxesColor()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lorg/achartengine/renderer/b;->mAxesColor:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lorg/achartengine/renderer/b;->mBackgroundColor:I

    return v0
.end method

.method public getChartTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/achartengine/renderer/b;->mChartTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getChartTitleTextSize()F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/achartengine/renderer/b;->mChartTitleTextSize:F

    return v0
.end method

.method public getLabelsColor()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lorg/achartengine/renderer/b;->mLabelsColor:I

    return v0
.end method

.method public getLabelsTextSize()F
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lorg/achartengine/renderer/b;->mLabelsTextSize:F

    return v0
.end method

.method public getLegendHeight()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lorg/achartengine/renderer/b;->mLegendHeight:I

    return v0
.end method

.method public getLegendTextSize()F
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lorg/achartengine/renderer/b;->mLegendTextSize:F

    return v0
.end method

.method public getMargins()[I
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lorg/achartengine/renderer/b;->mMargins:[I

    return-object v0
.end method

.method public getOriginalScale()F
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lorg/achartengine/renderer/b;->mOriginalScale:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lorg/achartengine/renderer/b;->mScale:F

    return v0
.end method

.method public getSelectableBuffer()I
    .locals 1

    .prologue
    .line 597
    iget v0, p0, Lorg/achartengine/renderer/b;->selectableBuffer:I

    return v0
.end method

.method public getSeriesRendererAt(I)Lorg/achartengine/renderer/c;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lorg/achartengine/renderer/b;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/achartengine/renderer/c;

    return-object p0
.end method

.method public getSeriesRendererCount()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/achartengine/renderer/b;->mRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSeriesRenderers()[Lorg/achartengine/renderer/c;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lorg/achartengine/renderer/b;->mRenderers:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/achartengine/renderer/c;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/achartengine/renderer/c;

    return-object p0
.end method

.method public getTextTypefaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/achartengine/renderer/b;->mTextTypefaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextTypefaceStyle()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lorg/achartengine/renderer/b;->mTextTypefaceStyle:I

    return v0
.end method

.method public getZoomRate()F
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lorg/achartengine/renderer/b;->mZoomRate:F

    return v0
.end method

.method public isAntialiasing()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lorg/achartengine/renderer/b;->mAntialiasing:Z

    return v0
.end method

.method public isApplyBackgroundColor()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lorg/achartengine/renderer/b;->mApplyBackgroundColor:Z

    return v0
.end method

.method public isClickEnabled()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lorg/achartengine/renderer/b;->mClickEnabled:Z

    return v0
.end method

.method public isExternalZoomEnabled()Z
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Lorg/achartengine/renderer/b;->mExternalZoomEnabled:Z

    return v0
.end method

.method public isFitLegend()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lorg/achartengine/renderer/b;->mFitLegend:Z

    return v0
.end method

.method public isPanEnabled()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lorg/achartengine/renderer/b;->mPanEnabled:Z

    return v0
.end method

.method public isShowAxes()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lorg/achartengine/renderer/b;->mShowAxes:Z

    return v0
.end method

.method public isShowCustomTextGrid()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lorg/achartengine/renderer/b;->mShowCustomTextGrid:Z

    return v0
.end method

.method public isShowGrid()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lorg/achartengine/renderer/b;->mShowGrid:Z

    return v0
.end method

.method public isShowLabels()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lorg/achartengine/renderer/b;->mShowLabels:Z

    return v0
.end method

.method public isShowLegend()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lorg/achartengine/renderer/b;->mShowLegend:Z

    return v0
.end method

.method public isZoomButtonsVisible()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lorg/achartengine/renderer/b;->mZoomButtonsVisible:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lorg/achartengine/renderer/b;->mZoomEnabled:Z

    return v0
.end method

.method public removeSeriesRenderer(Lorg/achartengine/renderer/c;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lorg/achartengine/renderer/b;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public setAntialiasing(Z)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-boolean p1, p0, Lorg/achartengine/renderer/b;->mAntialiasing:Z

    .line 454
    return-void
.end method

.method public setApplyBackgroundColor(Z)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-boolean p1, p0, Lorg/achartengine/renderer/b;->mApplyBackgroundColor:Z

    .line 227
    return-void
.end method

.method public setAxesColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput p1, p0, Lorg/achartengine/renderer/b;->mAxesColor:I

    .line 245
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput p1, p0, Lorg/achartengine/renderer/b;->mBackgroundColor:I

    .line 209
    return-void
.end method

.method public setChartTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lorg/achartengine/renderer/b;->mChartTitle:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setChartTitleTextSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput p1, p0, Lorg/achartengine/renderer/b;->mChartTitleTextSize:F

    .line 135
    return-void
.end method

.method public setClickEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 589
    iput-boolean p1, p0, Lorg/achartengine/renderer/b;->mClickEnabled:Z

    .line 590
    return-void
.end method

.method public setExternalZoomEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 535
    iput-boolean p1, p0, Lorg/achartengine/renderer/b;->mExternalZoomEnabled:Z

    .line 536
    return-void
.end method

.method public setFitLegend(Z)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-boolean p1, p0, Lorg/achartengine/renderer/b;->mFitLegend:Z

    .line 389
    return-void
.end method

.method public setLabelsColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput p1, p0, Lorg/achartengine/renderer/b;->mLabelsColor:I

    .line 263
    return-void
.end method

.method public setLabelsTextSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput p1, p0, Lorg/achartengine/renderer/b;->mLabelsTextSize:F

    .line 281
    return-void
.end method

.method public setLegendHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 624
    iput p1, p0, Lorg/achartengine/renderer/b;->mLegendHeight:I

    .line 625
    return-void
.end method

.method public setLegendTextSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput p1, p0, Lorg/achartengine/renderer/b;->mLegendTextSize:F

    .line 425
    return-void
.end method

.method public setMargins([I)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lorg/achartengine/renderer/b;->mMargins:[I

    .line 645
    return-void
.end method

.method public setPanEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-boolean p1, p0, Lorg/achartengine/renderer/b;->mPanEnabled:Z

    .line 563
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput p1, p0, Lorg/achartengine/renderer/b;->mScale:F

    .line 482
    return-void
.end method

.method public setSelectableBuffer(I)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput p1, p0, Lorg/achartengine/renderer/b;->selectableBuffer:I

    .line 606
    return-void
.end method

.method public setShowAxes(Z)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-boolean p1, p0, Lorg/achartengine/renderer/b;->mShowAxes:Z

    .line 299
    return-void
.end method

.method public setShowCustomTextGrid(Z)V
    .locals 0
    .parameter

    .prologue
    .line 352
    iput-boolean p1, p0, Lorg/achartengine/renderer/b;->mShowCustomTextGrid:Z

    .line 353
    return-void
.end method

.method public setShowGrid(Z)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-boolean p1, p0, Lorg/achartengine/renderer/b;->mShowGrid:Z

    .line 335
    return-void
.end method

.method public setShowLabels(Z)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-boolean p1, p0, Lorg/achartengine/renderer/b;->mShowLabels:Z

    .line 317
    return-void
.end method

.method public setShowLegend(Z)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-boolean p1, p0, Lorg/achartengine/renderer/b;->mShowLegend:Z

    .line 371
    return-void
.end method

.method public setTextTypeface(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lorg/achartengine/renderer/b;->mTextTypefaceName:Ljava/lang/String;

    .line 435
    iput p2, p0, Lorg/achartengine/renderer/b;->mTextTypefaceStyle:I

    .line 436
    return-void
.end method

.method public setZoomButtonsVisible(Z)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-boolean p1, p0, Lorg/achartengine/renderer/b;->mZoomButtonsVisible:Z

    .line 518
    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-boolean p1, p0, Lorg/achartengine/renderer/b;->mZoomEnabled:Z

    .line 500
    return-void
.end method

.method public setZoomRate(F)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput p1, p0, Lorg/achartengine/renderer/b;->mZoomRate:F

    .line 572
    return-void
.end method
