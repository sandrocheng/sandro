.class public Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
.super Lorg/achartengine/renderer/b;
.source "XYMultipleSeriesRenderer.java"


# static fields
.field private static final serialVersionUID:J = 0x30538d494490ee77L


# instance fields
.field private initialRange:Ljava/util/Map;

.field private mAxisTitleTextSize:F

.field private mBarSpacing:D

.field private mGridColor:I

.field private mMarginsColor:I

.field private mMaxX:[D

.field private mMaxY:[D

.field private mMinX:[D

.field private mMinY:[D

.field private mOrientation:Lorg/achartengine/renderer/d;

.field private mPanLimits:[D

.field private mPanXEnabled:Z

.field private mPanYEnabled:Z

.field private mPointSize:F

.field private mXLabels:I

.field private mXLabelsAngle:F

.field private mXTextLabels:Ljava/util/Map;

.field private mXTitle:Ljava/lang/String;

.field private mYLabels:I

.field private mYLabelsAngle:F

.field private mYTextLabels:Ljava/util/Map;

.field private mYTitle:[Ljava/lang/String;

.field private mZoomLimits:[D

.field private mZoomXEnabled:Z

.field private mZoomYEnabled:Z

.field private scalesCount:I

.field private xLabelsAlign:Landroid/graphics/Paint$Align;

.field private yAxisAlign:[Landroid/graphics/Paint$Align;

.field private yLabelsAlign:[Landroid/graphics/Paint$Align;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>(I)V

    .line 118
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x5

    const/16 v2, 0xc8

    const/4 v1, 0x1

    .line 120
    invoke-direct {p0}, Lorg/achartengine/renderer/b;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTitle:Ljava/lang/String;

    .line 40
    const/high16 v0, 0x4140

    iput v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mAxisTitleTextSize:F

    .line 50
    iput v3, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXLabels:I

    .line 52
    iput v3, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYLabels:I

    .line 54
    sget-object v0, Lorg/achartengine/renderer/d;->a:Lorg/achartengine/renderer/d;

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mOrientation:Lorg/achartengine/renderer/d;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    .line 60
    iput-boolean v1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanXEnabled:Z

    .line 62
    iput-boolean v1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanYEnabled:Z

    .line 64
    iput-boolean v1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomXEnabled:Z

    .line 66
    iput-boolean v1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomYEnabled:Z

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mBarSpacing:D

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMarginsColor:I

    .line 80
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    .line 82
    const/high16 v0, 0x4040

    iput v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPointSize:F

    .line 84
    const/16 v0, 0x4b

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mGridColor:I

    .line 88
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->xLabelsAlign:Landroid/graphics/Paint$Align;

    .line 121
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->scalesCount:I

    .line 122
    invoke-virtual {p0, p1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initAxesRange(I)V

    .line 123
    return-void
.end method


# virtual methods
.method public addTextLabel(DLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 510
    invoke-virtual {p0, p1, p2, p3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 511
    return-void
.end method

.method public addXTextLabel(DLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    return-void
.end method

.method public addYTextLabel(DLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 566
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addYTextLabel(DLjava/lang/String;I)V

    .line 567
    return-void
.end method

.method public addYTextLabel(DLjava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p0, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    return-void
.end method

.method public clearTextLabels()V
    .locals 0

    .prologue
    .line 549
    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->clearXTextLabels()V

    .line 550
    return-void
.end method

.method public clearXTextLabels()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 557
    return-void
.end method

.method public clearYTextLabels()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 625
    return-void
.end method

.method public getAxisTitleTextSize()F
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mAxisTitleTextSize:F

    return v0
.end method

.method public getBarSpacing()D
    .locals 2

    .prologue
    .line 768
    iget-wide v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mBarSpacing:D

    return-wide v0
.end method

.method public getBarsSpacing()D
    .locals 2

    .prologue
    .line 759
    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getBarSpacing()D

    move-result-wide v0

    return-wide v0
.end method

.method public getGridColor()I
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mGridColor:I

    return v0
.end method

.method public getInitialRange()[D
    .locals 1

    .prologue
    .line 950
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getInitialRange(I)[D

    move-result-object v0

    return-object v0
.end method

.method public getInitialRange(I)[D
    .locals 2
    .parameter

    .prologue
    .line 960
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getMarginsColor()I
    .locals 1

    .prologue
    .line 788
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMarginsColor:I

    return v0
.end method

.method public getOrientation()Lorg/achartengine/renderer/d;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mOrientation:Lorg/achartengine/renderer/d;

    return-object v0
.end method

.method public getPanLimits()[D
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanLimits:[D

    return-object v0
.end method

.method public getPointSize()F
    .locals 1

    .prologue
    .line 900
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPointSize:F

    return v0
.end method

.method public getScalesCount()I
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->scalesCount:I

    return v0
.end method

.method public getXAxisMax()D
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getXAxisMax(I)D
    .locals 2
    .parameter

    .prologue
    .line 391
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxX:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getXAxisMin()D
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getXAxisMin(I)D
    .locals 2
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinX:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getXLabels()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXLabels:I

    return v0
.end method

.method public getXLabelsAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->xLabelsAlign:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getXLabelsAngle()F
    .locals 1

    .prologue
    .line 864
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXLabelsAngle:F

    return v0
.end method

.method public getXTextLabel(Ljava/lang/Double;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 530
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getXTextLabelLocations()[Ljava/lang/Double;
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTextLabels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Double;

    return-object p0
.end method

.method public getXTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getYAxisAlign(I)Landroid/graphics/Paint$Align;
    .locals 1
    .parameter

    .prologue
    .line 1017
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->yAxisAlign:[Landroid/graphics/Paint$Align;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getYAxisMax()D
    .locals 2

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getYAxisMax(I)D
    .locals 2
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxY:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getYAxisMin()D
    .locals 2

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getYAxisMin(I)D
    .locals 2
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinY:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getYLabels()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYLabels:I

    return v0
.end method

.method public getYLabelsAlign(I)Landroid/graphics/Paint$Align;
    .locals 1
    .parameter

    .prologue
    .line 1009
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->yLabelsAlign:[Landroid/graphics/Paint$Align;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getYLabelsAngle()F
    .locals 1

    .prologue
    .line 882
    iget v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYLabelsAngle:F

    return v0
.end method

.method public getYTextLabel(Ljava/lang/Double;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTextLabel(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYTextLabel(Ljava/lang/Double;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 598
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getYTextLabelLocations()[Ljava/lang/Double;
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTextLabelLocations(I)[Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getYTextLabelLocations(I)[Ljava/lang/Double;
    .locals 2
    .parameter

    .prologue
    .line 617
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Double;

    return-object p0
.end method

.method public getYTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYTitle(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYTitle:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getZoomLimits()[D
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomLimits:[D

    return-object v0
.end method

.method public initAxesRange(I)V
    .locals 1
    .parameter

    .prologue
    .line 126
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYTitle:[Ljava/lang/String;

    .line 127
    new-array v0, p1, [Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->yLabelsAlign:[Landroid/graphics/Paint$Align;

    .line 128
    new-array v0, p1, [Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->yAxisAlign:[Landroid/graphics/Paint$Align;

    .line 129
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinX:[D

    .line 130
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxX:[D

    .line 131
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinY:[D

    .line 132
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxY:[D

    .line 133
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 134
    invoke-virtual {p0, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initAxesRangeForScale(I)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public initAxesRangeForScale(I)V
    .locals 5
    .parameter

    .prologue
    const-wide v3, 0x7fefffffffffffffL

    const-wide v1, -0x10000000000001L

    .line 139
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinX:[D

    aput-wide v3, v0, p1

    .line 140
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxX:[D

    aput-wide v1, v0, p1

    .line 141
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinY:[D

    aput-wide v3, v0, p1

    .line 142
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxY:[D

    aput-wide v1, v0, p1

    .line 143
    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinX:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxX:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinY:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxY:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    .line 144
    iget-object v1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYTitle:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, p1

    .line 146
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYTextLabels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->yLabelsAlign:[Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, p1

    .line 148
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->yAxisAlign:[Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, p1

    .line 149
    return-void
.end method

.method public isInitialRangeSet()Z
    .locals 1

    .prologue
    .line 931
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isInitialRangeSet(I)Z

    move-result v0

    return v0
.end method

.method public isInitialRangeSet(I)Z
    .locals 2
    .parameter

    .prologue
    .line 941
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaxXSet()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet(I)Z

    move-result v0

    return v0
.end method

.method public isMaxXSet(I)Z
    .locals 4
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxX:[D

    aget-wide v0, v0, p1

    const-wide v2, -0x10000000000001L

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaxYSet()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet(I)Z

    move-result v0

    return v0
.end method

.method public isMaxYSet(I)Z
    .locals 4
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxY:[D

    aget-wide v0, v0, p1

    const-wide v2, -0x10000000000001L

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMinXSet()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v0

    return v0
.end method

.method public isMinXSet(I)Z
    .locals 4
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinX:[D

    aget-wide v0, v0, p1

    const-wide v2, 0x7fefffffffffffffL

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMinYSet()Z
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinYSet(I)Z

    move-result v0

    return v0
.end method

.method public isMinYSet(I)Z
    .locals 4
    .parameter

    .prologue
    .line 447
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinY:[D

    aget-wide v0, v0, p1

    const-wide v2, 0x7fefffffffffffffL

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanEnabled()Z
    .locals 1

    .prologue
    .line 680
    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanXEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanYEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanXEnabled()Z
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanXEnabled:Z

    return v0
.end method

.method public isPanYEnabled()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanYEnabled:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .prologue
    .line 719
    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomXEnabled()Z
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomXEnabled:Z

    return v0
.end method

.method public isZoomYEnabled()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomYEnabled:Z

    return v0
.end method

.method public setAxisTitleTextSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mAxisTitleTextSize:F

    .line 241
    return-void
.end method

.method public setBarSpacing(D)V
    .locals 0
    .parameter

    .prologue
    .line 779
    iput-wide p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mBarSpacing:D

    .line 780
    return-void
.end method

.method public setChartValuesTextSize(F)V
    .locals 4
    .parameter

    .prologue
    .line 667
    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRenderers()[Lorg/achartengine/renderer/c;

    move-result-object v0

    .line 668
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 669
    invoke-virtual {v3, p1}, Lorg/achartengine/renderer/c;->a(F)V

    .line 668
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 671
    :cond_0
    return-void
.end method

.method public setDisplayChartValues(Z)V
    .locals 4
    .parameter

    .prologue
    .line 653
    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRenderers()[Lorg/achartengine/renderer/c;

    move-result-object v0

    .line 654
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 655
    invoke-virtual {v3, p1}, Lorg/achartengine/renderer/c;->a(Z)V

    .line 654
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 657
    :cond_0
    return-void
.end method

.method public setGridColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 815
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mGridColor:I

    .line 816
    return-void
.end method

.method public setInitialRange([D)V
    .locals 1
    .parameter

    .prologue
    .line 970
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setInitialRange([DI)V

    .line 971
    return-void
.end method

.method public setInitialRange([DI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 981
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    return-void
.end method

.method public setMarginsColor(I)V
    .locals 0
    .parameter

    .prologue
    .line 797
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMarginsColor:I

    .line 798
    return-void
.end method

.method public setOrientation(Lorg/achartengine/renderer/d;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mOrientation:Lorg/achartengine/renderer/d;

    .line 167
    return-void
.end method

.method public setPanEnabled(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 708
    iput-boolean p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanXEnabled:Z

    .line 709
    iput-boolean p2, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanYEnabled:Z

    .line 710
    return-void
.end method

.method public setPanLimits([D)V
    .locals 0
    .parameter

    .prologue
    .line 835
    iput-object p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPanLimits:[D

    .line 836
    return-void
.end method

.method public setPointSize(F)V
    .locals 0
    .parameter

    .prologue
    .line 909
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mPointSize:F

    .line 910
    return-void
.end method

.method public setRange([D)V
    .locals 1
    .parameter

    .prologue
    .line 913
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setRange([DI)V

    .line 914
    return-void
.end method

.method public setRange([DI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 924
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(DI)V

    .line 925
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(DI)V

    .line 926
    const/4 v0, 0x2

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(DI)V

    .line 927
    const/4 v0, 0x3

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(DI)V

    .line 928
    return-void
.end method

.method public setXAxisMax(D)V
    .locals 1
    .parameter

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(DI)V

    .line 286
    return-void
.end method

.method public setXAxisMax(DI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-virtual {p0, p3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    .line 404
    :cond_0
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxX:[D

    aput-wide p1, v0, p3

    .line 405
    return-void
.end method

.method public setXAxisMin(D)V
    .locals 1
    .parameter

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(DI)V

    .line 259
    return-void
.end method

.method public setXAxisMin(DI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 368
    invoke-virtual {p0, p3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 371
    :cond_0
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinX:[D

    aput-wide p1, v0, p3

    .line 372
    return-void
.end method

.method public setXLabels(I)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXLabels:I

    .line 499
    return-void
.end method

.method public setXLabelsAlign(Landroid/graphics/Paint$Align;)V
    .locals 0
    .parameter

    .prologue
    .line 999
    iput-object p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->xLabelsAlign:Landroid/graphics/Paint$Align;

    .line 1000
    return-void
.end method

.method public setXLabelsAngle(F)V
    .locals 0
    .parameter

    .prologue
    .line 873
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXLabelsAngle:F

    .line 874
    return-void
.end method

.method public setXTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mXTitle:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setYAxisAlign(Landroid/graphics/Paint$Align;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1021
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->yAxisAlign:[Landroid/graphics/Paint$Align;

    aput-object p1, v0, p2

    .line 1022
    return-void
.end method

.method public setYAxisMax(D)V
    .locals 1
    .parameter

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(DI)V

    .line 340
    return-void
.end method

.method public setYAxisMax(DI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-virtual {p0, p3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x3

    aput-wide p1, v0, v1

    .line 470
    :cond_0
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMaxY:[D

    aput-wide p1, v0, p3

    .line 471
    return-void
.end method

.method public setYAxisMin(D)V
    .locals 1
    .parameter

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(DI)V

    .line 313
    return-void
.end method

.method public setYAxisMin(DI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 434
    invoke-virtual {p0, p3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinYSet(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->initialRange:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x2

    aput-wide p1, v0, v1

    .line 437
    :cond_0
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mMinY:[D

    aput-wide p1, v0, p3

    .line 438
    return-void
.end method

.method public setYLabels(I)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYLabels:I

    .line 643
    return-void
.end method

.method public setYLabelsAlign(Landroid/graphics/Paint$Align;)V
    .locals 1
    .parameter

    .prologue
    .line 1013
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsAlign(Landroid/graphics/Paint$Align;I)V

    .line 1014
    return-void
.end method

.method public setYLabelsAlign(Landroid/graphics/Paint$Align;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1030
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->yLabelsAlign:[Landroid/graphics/Paint$Align;

    aput-object p1, v0, p2

    .line 1031
    return-void
.end method

.method public setYLabelsAngle(F)V
    .locals 0
    .parameter

    .prologue
    .line 891
    iput p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYLabelsAngle:F

    .line 892
    return-void
.end method

.method public setYTitle(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYTitle(Ljava/lang/String;I)V

    .line 213
    return-void
.end method

.method public setYTitle(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mYTitle:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 223
    return-void
.end method

.method public setZoomEnabled(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 747
    iput-boolean p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomXEnabled:Z

    .line 748
    iput-boolean p2, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomYEnabled:Z

    .line 749
    return-void
.end method

.method public setZoomLimits([D)V
    .locals 0
    .parameter

    .prologue
    .line 855
    iput-object p1, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->mZoomLimits:[D

    .line 856
    return-void
.end method
