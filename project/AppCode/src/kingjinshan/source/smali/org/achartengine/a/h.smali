.class public abstract Lorg/achartengine/a/h;
.super Lorg/achartengine/a/a;
.source "XYChart.java"


# static fields
.field private static final a:J = -0x1c54f418f120a42bL


# instance fields
.field private b:F

.field protected c:Lorg/achartengine/b/c;

.field protected d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

.field private e:F

.field private f:Landroid/graphics/PointF;

.field private g:Landroid/graphics/Rect;

.field private h:Ljava/util/Map;

.field private i:Ljava/util/Map;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/achartengine/a/a;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/a/h;->h:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/a/h;->i:Ljava/util/Map;

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/achartengine/b/c;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/achartengine/a/a;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/a/h;->h:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/a/h;->i:Ljava/util/Map;

    .line 90
    iput-object p1, p0, Lorg/achartengine/a/h;->c:Lorg/achartengine/b/c;

    .line 91
    iput-object p2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 92
    return-void
.end method

.method private static a(Landroid/graphics/Paint$Align;)I
    .locals 2
    .parameter

    .prologue
    .line 788
    const/4 v0, 0x4

    .line 789
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne p0, v1, :cond_0

    .line 790
    const/4 v0, -0x4

    .line 792
    :cond_0
    return v0
.end method

.method protected static a(D)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 658
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    :goto_0
    return-object v0

    .line 662
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter

    .prologue
    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 508
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    .line 509
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 513
    :cond_1
    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;FZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 639
    if-eqz p3, :cond_0

    .line 640
    iget v0, p0, Lorg/achartengine/a/h;->b:F

    div-float v0, v2, v0

    iget v1, p0, Lorg/achartengine/a/h;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 641
    iget v0, p0, Lorg/achartengine/a/h;->e:F

    iget v1, p0, Lorg/achartengine/a/h;->e:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 642
    neg-float v0, p2

    iget-object v1, p0, Lorg/achartengine/a/h;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lorg/achartengine/a/h;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 648
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lorg/achartengine/a/h;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lorg/achartengine/a/h;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 645
    iget v0, p0, Lorg/achartengine/a/h;->e:F

    neg-float v0, v0

    iget v1, p0, Lorg/achartengine/a/h;->e:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 646
    iget v0, p0, Lorg/achartengine/a/h;->b:F

    iget v1, p0, Lorg/achartengine/a/h;->b:F

    div-float v1, v2, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 564
    invoke-virtual {p5, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 565
    invoke-virtual {p5, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 566
    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 567
    invoke-virtual {p5, p4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 568
    invoke-virtual {p5, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 569
    return-void
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    .line 504
    return-void
.end method

.method private a(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 694
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 695
    iget-object v2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v12

    .line 696
    iget-object v2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGrid()Z

    move-result v13

    .line 697
    const/4 v2, 0x0

    move v14, v2

    :goto_0
    if-ge v14, v11, :cond_2

    .line 698
    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 699
    move/from16 v0, p5

    int-to-double v0, v0

    move-wide v2, v0

    sub-double v4, v8, p10

    mul-double v4, v4, p8

    add-double/2addr v2, v4

    double-to-float v3, v2

    .line 700
    if-eqz v12, :cond_0

    .line 701
    iget-object v2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v2

    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 702
    move/from16 v0, p7

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, p7

    int-to-float v0, v0

    move v2, v0

    iget-object v5, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v5

    const/high16 v6, 0x4040

    div-float/2addr v5, v6

    add-float v6, v2, v5

    move-object/from16 v2, p3

    move v5, v3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 704
    invoke-static {v8, v9}, Lorg/achartengine/a/h;->a(D)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p7

    int-to-float v0, v0

    move v2, v0

    iget-object v4, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v4

    const/high16 v5, 0x4080

    mul-float/2addr v4, v5

    const/high16 v5, 0x4040

    div-float/2addr v4, v5

    add-float v8, v2, v4

    iget-object v2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v10

    move-object v4, p0

    move-object/from16 v5, p3

    move v7, v3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 708
    :cond_0
    if-eqz v13, :cond_1

    .line 709
    iget-object v2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v2

    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 710
    move/from16 v0, p7

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, p6

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v2, p3

    move v5, v3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 697
    :cond_1
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_0

    .line 713
    :cond_2
    iget-object v2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowCustomTextGrid()Z

    move-result v9

    if-eqz v12, :cond_4

    iget-object v2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v2

    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p2

    array-length v0, v0

    move v10, v0

    const/4 v2, 0x0

    move v11, v2

    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v2, p2, v11

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v3, p10, v3

    if-gtz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v3, v3, p12

    if-gtz v3, :cond_3

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide v3, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double v5, v5, p10

    mul-double v5, v5, p8

    add-double/2addr v3, v5

    double-to-float v5, v3

    iget-object v3, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v3

    move-object/from16 v0, p4

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTextLabel(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p7

    int-to-float v0, v0

    move v2, v0

    iget-object v3, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v3

    const/high16 v6, 0x4080

    mul-float/2addr v3, v6

    const/high16 v6, 0x4040

    div-float/2addr v3, v6

    add-float v6, v2, v3

    iget-object v2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v8

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v8}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    if-eqz v9, :cond_3

    iget-object v2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v2

    move-object/from16 v0, p4

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_1

    .line 715
    :cond_4
    return-void
.end method

.method private a(Lorg/achartengine/b/d;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/c;FILorg/achartengine/renderer/d;)V
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 519
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/c;->i()Lorg/achartengine/renderer/a;

    move-result-object v13

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v14

    .line 521
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v15

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v16

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v17

    .line 524
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v18

    .line 525
    if-eqz v13, :cond_0

    .line 526
    const/4 v2, 0x0

    .line 527
    invoke-virtual {v13}, Lorg/achartengine/renderer/a;->d()[F

    move-result-object v3

    if-eqz v3, :cond_4

    .line 528
    new-instance v2, Landroid/graphics/DashPathEffect;

    invoke-virtual {v13}, Lorg/achartengine/renderer/a;->d()[F

    move-result-object v3

    invoke-virtual {v13}, Lorg/achartengine/renderer/a;->e()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    move-object v6, v2

    .line 531
    :goto_0
    invoke-virtual {v13}, Lorg/achartengine/renderer/a;->a()Landroid/graphics/Paint$Cap;

    move-result-object v2

    invoke-virtual {v13}, Lorg/achartengine/renderer/a;->b()Landroid/graphics/Paint$Join;

    move-result-object v3

    invoke-virtual {v13}, Lorg/achartengine/renderer/a;->c()F

    move-result v4

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lorg/achartengine/a/h;->a(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 534
    :cond_0
    invoke-static/range {p4 .. p4}, Lorg/achartengine/d/a;->a(Ljava/util/List;)[F

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 535
    invoke-virtual/range {v2 .. v8}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/c;FI)V

    .line 537
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/c;->f()F

    move-result v2

    move-object/from16 v0, p3

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 545
    sget-object v2, Lorg/achartengine/renderer/d;->a:Lorg/achartengine/renderer/d;

    move-object/from16 v0, p8

    move-object v1, v2

    if-ne v0, v1, :cond_3

    .line 546
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 550
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/c;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/c;->g()Landroid/graphics/Paint$Align;

    move-result-object v2

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 552
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/c;->c()I

    move-result v2

    move-object/from16 v0, p3

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    move-object/from16 v10, p3

    move-object v11, v5

    move/from16 v12, p7

    .line 553
    invoke-virtual/range {v6 .. v12}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Lorg/achartengine/b/d;Lorg/achartengine/renderer/c;Landroid/graphics/Paint;[FI)V

    .line 555
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/c;->a()I

    move-result v2

    move-object/from16 v0, p3

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 557
    :cond_1
    if-eqz v13, :cond_2

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v7, p3

    .line 558
    invoke-static/range {v2 .. v7}, Lorg/achartengine/a/h;->a(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 560
    :cond_2
    return-void

    .line 548
    :cond_3
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    :cond_4
    move-object v6, v2

    goto/16 :goto_0
.end method

.method private a([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIDDD)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 742
    iget-object v2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowCustomTextGrid()Z

    move-result v9

    .line 743
    if-eqz p4, :cond_1

    .line 744
    iget-object v2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    array-length v10, p1

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v2, p1, v11

    .line 746
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v3, p9, v3

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v3, v3, p11

    if-gtz v3, :cond_0

    .line 747
    move/from16 v0, p5

    int-to-double v0, v0

    move-wide v3, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double v5, v5, p9

    mul-double v5, v5, p7

    add-double/2addr v3, v5

    double-to-float v5, v3

    .line 749
    iget-object v3, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 750
    iget-object v3, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTextLabel(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p6

    int-to-float v0, v0

    move v2, v0

    iget-object v3, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v3

    const/high16 v6, 0x4080

    mul-float/2addr v3, v6

    const/high16 v6, 0x4040

    div-float/2addr v3, v6

    add-float v6, v2, v3

    iget-object v2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v8

    move-object v2, p0

    move-object v3, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 753
    if-eqz v9, :cond_0

    .line 754
    iget-object v2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    :cond_0
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    .line 759
    :cond_1
    return-void
.end method

.method private a(FF)[D
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 779
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/achartengine/a/h;->a(FFI)[D

    move-result-object v0

    .line 780
    return-object v0
.end method

.method private a([D)[D
    .locals 1
    .parameter

    .prologue
    .line 784
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/achartengine/a/h;->a([DI)[D

    move-result-object v0

    return-object v0
.end method

.method private b([DI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 775
    iget-object v0, p0, Lorg/achartengine/a/h;->h:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    return-void
.end method

.method private f()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method private g()Lorg/achartengine/b/c;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lorg/achartengine/a/h;->c:Lorg/achartengine/b/c;

    return-object v0
.end method

.method private static h()Z
    .locals 1

    .prologue
    .line 915
    const/4 v0, 0x0

    return v0
.end method

.method private static i()Lorg/achartengine/a/f;
    .locals 1

    .prologue
    .line 933
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)Lorg/achartengine/b/b;
    .locals 6
    .parameter

    .prologue
    .line 841
    iget-object v0, p0, Lorg/achartengine/a/h;->i:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 842
    iget-object v0, p0, Lorg/achartengine/a/h;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 849
    const/4 v2, 0x0

    .line 850
    iget-object v0, p0, Lorg/achartengine/a/h;->i:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lorg/achartengine/a/h;->i:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 852
    if-eqz v0, :cond_0

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lorg/achartengine/a/h;->c:Lorg/achartengine/b/c;

    invoke-virtual {v0, v1}, Lorg/achartengine/b/c;->a(I)Lorg/achartengine/b/d;

    move-result-object v0

    .line 855
    new-instance v3, Lorg/achartengine/b/b;

    invoke-virtual {v0, v2}, Lorg/achartengine/b/d;->b(I)D

    move-result-wide v4

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/achartengine/b/b;-><init>(IID)V

    move-object v0, v3

    .line 862
    :goto_2
    return-object v0

    .line 858
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 842
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 862
    :cond_2
    invoke-super {p0, p1}, Lorg/achartengine/a/a;->a(Landroid/graphics/PointF;)Lorg/achartengine/b/b;

    move-result-object v0

    goto :goto_2
.end method

.method public final a(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 47
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isAntialiasing()Z

    move-result v5

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    div-int/lit8 v6, p5, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getAxisTitleTextSize()F

    move-result v7

    invoke-virtual {v5}, Lorg/achartengine/renderer/b;->getLegendHeight()I

    move-result v8

    invoke-virtual {v5}, Lorg/achartengine/renderer/b;->isShowLegend()Z

    move-result v9

    if-eqz v9, :cond_3a

    if-nez v8, :cond_3a

    :goto_0
    invoke-virtual {v5}, Lorg/achartengine/renderer/b;->isShowLegend()Z

    move-result v8

    if-nez v8, :cond_39

    invoke-virtual {v5}, Lorg/achartengine/renderer/b;->isShowLabels()Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-virtual {v5}, Lorg/achartengine/renderer/b;->getLabelsTextSize()F

    move-result v5

    const/high16 v6, 0x4080

    mul-float/2addr v5, v6

    const/high16 v6, 0x4040

    div-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    move v14, v5

    .line 123
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMargins()[I

    move-result-object v32

    .line 124
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v9, p2, v5

    .line 125
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v37, p3, v5

    .line 126
    add-int v5, p2, p4

    const/4 v6, 0x3

    aget v6, v32, v6

    sub-int v10, v5, v6

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->c:Lorg/achartengine/b/c;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/b/c;->a()I

    move-result v20

    .line 128
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object v8, v0

    .line 129
    const/4 v5, 0x0

    :goto_2
    move v0, v5

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->c:Lorg/achartengine/b/c;

    move-object v6, v0

    invoke-virtual {v6, v5}, Lorg/achartengine/b/c;->a(I)Lorg/achartengine/b/d;

    move-result-object v6

    invoke-virtual {v6}, Lorg/achartengine/b/d;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    .line 129
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 132
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isFitLegend()Z

    move-result v5

    if-eqz v5, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLegend()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v7, v0

    const/16 v16, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v15, p6

    invoke-virtual/range {v5 .. v16}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Lorg/achartengine/renderer/b;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-result v5

    move/from16 v38, v5

    .line 136
    :goto_3
    add-int v5, p3, p5

    const/4 v6, 0x2

    aget v6, v32, v6

    sub-int/2addr v5, v6

    sub-int v5, v5, v38

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    move-object v6, v0

    if-nez v6, :cond_1

    .line 138
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    .line 140
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    move-object v6, v0

    move-object v0, v6

    move v1, v9

    move/from16 v2, v37

    move v3, v10

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v11, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p6

    invoke-static/range {v11 .. v19}, Lorg/achartengine/a/h;->a(Lorg/achartengine/renderer/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 144
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Typeface;->getStyle()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceStyle()I

    move-result v7

    if-eq v6, v7, :cond_3

    .line 149
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceStyle()I

    move-result v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 152
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/d;

    move-result-object v18

    .line 153
    sget-object v6, Lorg/achartengine/renderer/d;->b:Lorg/achartengine/renderer/d;

    move-object/from16 v0, v18

    move-object v1, v6

    if-ne v0, v1, :cond_37

    .line 154
    sub-int v6, v10, v38

    .line 155
    const/16 v7, 0x14

    sub-int v7, v38, v7

    add-int/2addr v5, v7

    move/from16 v22, v5

    move/from16 v39, v6

    .line 157
    :goto_4
    invoke-virtual/range {v18 .. v18}, Lorg/achartengine/renderer/d;->a()I

    move-result v40

    .line 158
    const/16 v5, 0x5a

    move/from16 v0, v40

    move v1, v5

    if-ne v0, v1, :cond_6

    const/4 v5, 0x1

    move/from16 v41, v5

    .line 159
    :goto_5
    move/from16 v0, p5

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v6, v0

    div-float/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/achartengine/a/h;->b:F

    .line 160
    sub-int v5, p4, p5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/achartengine/a/h;->e:F

    .line 161
    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/a/h;->b:F

    move v5, v0

    const/high16 v6, 0x3f80

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/a/h;->e:F

    move v5, v0

    const/high16 v6, -0x4080

    mul-float/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/achartengine/a/h;->e:F

    .line 164
    :cond_4
    new-instance v5, Landroid/graphics/PointF;

    add-int v6, p2, p4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-int v7, p3, p5

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/achartengine/a/h;->f:Landroid/graphics/PointF;

    .line 165
    if-eqz v41, :cond_5

    .line 166
    move/from16 v0, v40

    int-to-float v0, v0

    move v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;FZ)V

    .line 169
    :cond_5
    const v5, -0x7fffffff

    .line 170
    const/4 v6, 0x0

    move/from16 v46, v6

    move v6, v5

    move/from16 v5, v46

    :goto_6
    move v0, v5

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->c:Lorg/achartengine/b/c;

    move-object v7, v0

    invoke-virtual {v7, v5}, Lorg/achartengine/b/c;->a(I)Lorg/achartengine/b/d;

    move-result-object v7

    invoke-virtual {v7}, Lorg/achartengine/b/d;->a()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 158
    :cond_6
    const/4 v5, 0x0

    move/from16 v41, v5

    goto :goto_5

    .line 174
    :cond_7
    add-int/lit8 v42, v6, 0x1

    .line 175
    if-gez v42, :cond_9

    .line 496
    :cond_8
    :goto_7
    return-void

    .line 178
    :cond_9
    move/from16 v0, v42

    new-array v0, v0, [D

    move-object v6, v0

    .line 179
    move/from16 v0, v42

    new-array v0, v0, [D

    move-object v7, v0

    .line 180
    move/from16 v0, v42

    new-array v0, v0, [D

    move-object/from16 v43, v0

    .line 181
    move/from16 v0, v42

    new-array v0, v0, [D

    move-object/from16 v44, v0

    .line 182
    move/from16 v0, v42

    new-array v0, v0, [Z

    move-object v10, v0

    .line 183
    move/from16 v0, v42

    new-array v0, v0, [Z

    move-object v11, v0

    .line 184
    move/from16 v0, v42

    new-array v0, v0, [Z

    move-object v12, v0

    .line 185
    move/from16 v0, v42

    new-array v0, v0, [Z

    move-object v13, v0

    .line 187
    const/4 v5, 0x0

    :goto_8
    move v0, v5

    move/from16 v1, v42

    if-ge v0, v1, :cond_b

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v14, v0

    invoke-virtual {v14, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v14

    aput-wide v14, v6, v5

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v14, v0

    invoke-virtual {v14, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v14

    aput-wide v14, v7, v5

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v14, v0

    invoke-virtual {v14, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v14

    aput-wide v14, v43, v5

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v14, v0

    invoke-virtual {v14, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v14

    aput-wide v14, v44, v5

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v14, v0

    invoke-virtual {v14, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v14

    aput-boolean v14, v10, v5

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v14, v0

    invoke-virtual {v14, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet(I)Z

    move-result v14

    aput-boolean v14, v11, v5

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v14, v0

    invoke-virtual {v14, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinYSet(I)Z

    move-result v14

    aput-boolean v14, v12, v5

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v14, v0

    invoke-virtual {v14, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet(I)Z

    move-result v14

    aput-boolean v14, v13, v5

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->h:Ljava/util/Map;

    move-object v14, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_a

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->h:Ljava/util/Map;

    move-object v14, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [D

    move-object/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 200
    :cond_b
    move/from16 v0, v42

    new-array v0, v0, [D

    move-object/from16 v33, v0

    .line 201
    move/from16 v0, v42

    new-array v0, v0, [D

    move-object/from16 v45, v0

    .line 202
    const/4 v5, 0x0

    move v14, v5

    :goto_9
    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->c:Lorg/achartengine/b/c;

    move-object v5, v0

    invoke-virtual {v5, v14}, Lorg/achartengine/b/c;->a(I)Lorg/achartengine/b/d;

    move-result-object v15

    .line 204
    invoke-virtual {v15}, Lorg/achartengine/b/d;->a()I

    move-result v16

    .line 205
    invoke-virtual {v15}, Lorg/achartengine/b/d;->c()I

    move-result v5

    if-eqz v5, :cond_f

    .line 206
    aget-boolean v5, v10, v16

    if-nez v5, :cond_c

    .line 209
    invoke-virtual {v15}, Lorg/achartengine/b/d;->d()D

    move-result-wide v23

    .line 210
    aget-wide v25, v6, v16

    move-wide/from16 v0, v25

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v23

    aput-wide v23, v6, v16

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->h:Ljava/util/Map;

    move-object v5, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    const/16 v17, 0x0

    aget-wide v23, v6, v16

    aput-wide v23, v5, v17

    .line 213
    :cond_c
    aget-boolean v5, v11, v16

    if-nez v5, :cond_d

    .line 214
    invoke-virtual {v15}, Lorg/achartengine/b/d;->f()D

    move-result-wide v23

    .line 215
    aget-wide v25, v7, v16

    move-wide/from16 v0, v25

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v23

    aput-wide v23, v7, v16

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->h:Ljava/util/Map;

    move-object v5, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    const/16 v17, 0x1

    aget-wide v23, v7, v16

    aput-wide v23, v5, v17

    .line 218
    :cond_d
    aget-boolean v5, v12, v16

    if-nez v5, :cond_e

    .line 219
    invoke-virtual {v15}, Lorg/achartengine/b/d;->e()D

    move-result-wide v23

    .line 220
    aget-wide v25, v43, v16

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move v5, v0

    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v25

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v23

    aput-wide v23, v43, v16

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->h:Ljava/util/Map;

    move-object v5, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    const/16 v17, 0x2

    aget-wide v23, v43, v16

    aput-wide v23, v5, v17

    .line 223
    :cond_e
    aget-boolean v5, v13, v16

    if-nez v5, :cond_f

    .line 224
    invoke-virtual {v15}, Lorg/achartengine/b/d;->g()D

    move-result-wide v23

    .line 225
    aget-wide v25, v44, v16

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move v5, v0

    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v25

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v23

    aput-wide v23, v44, v16

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->h:Ljava/util/Map;

    move-object v5, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    const/4 v15, 0x3

    aget-wide v16, v44, v16

    aput-wide v16, v5, v15

    .line 202
    :cond_f
    add-int/lit8 v5, v14, 0x1

    move v14, v5

    goto/16 :goto_9

    .line 229
    :cond_10
    const/4 v5, 0x0

    :goto_a
    move v0, v5

    move/from16 v1, v42

    if-ge v0, v1, :cond_13

    .line 230
    aget-wide v10, v7, v5

    aget-wide v12, v6, v5

    sub-double/2addr v10, v12

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_11

    .line 231
    sub-int v10, v39, v9

    int-to-double v10, v10

    aget-wide v12, v7, v5

    aget-wide v14, v6, v5

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    aput-wide v10, v33, v5

    .line 233
    :cond_11
    aget-wide v10, v44, v5

    aget-wide v12, v43, v5

    sub-double/2addr v10, v12

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_12

    .line 234
    sub-int v10, v22, v37

    int-to-double v10, v10

    aget-wide v12, v44, v5

    aget-wide v14, v43, v5

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    double-to-float v10, v10

    float-to-double v10, v10

    aput-wide v10, v45, v5

    .line 229
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 238
    :cond_13
    const/4 v5, 0x0

    .line 243
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/achartengine/a/h;->i:Ljava/util/Map;

    .line 244
    const/4 v10, 0x0

    move/from16 v17, v10

    :goto_b
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_19

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->c:Lorg/achartengine/b/c;

    move-object v10, v0

    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/achartengine/b/c;->a(I)Lorg/achartengine/b/d;

    move-result-object v11

    .line 246
    invoke-virtual {v11}, Lorg/achartengine/b/d;->a()I

    move-result v19

    .line 247
    invoke-virtual {v11}, Lorg/achartengine/b/d;->c()I

    move-result v10

    if-eqz v10, :cond_18

    .line 248
    const/4 v5, 0x1

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/c;

    move-result-object v15

    .line 253
    invoke-virtual {v11}, Lorg/achartengine/b/d;->c()I

    move-result v10

    .line 254
    mul-int/lit8 v21, v10, 0x2

    .line 256
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 257
    move/from16 v0, v22

    int-to-float v0, v0

    move v10, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide v12, v0

    aget-wide v23, v45, v19

    aget-wide v25, v43, v19

    mul-double v23, v23, v25

    add-double v12, v12, v23

    double-to-float v12, v12

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 259
    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->i:Ljava/util/Map;

    move-object v10, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v0, v10

    move-object v1, v12

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const/4 v10, 0x0

    move/from16 v24, v10

    :goto_c
    move/from16 v0, v24

    move/from16 v1, v21

    if-ge v0, v1, :cond_17

    .line 262
    div-int/lit8 v10, v24, 0x2

    .line 263
    invoke-virtual {v11, v10}, Lorg/achartengine/b/d;->b(I)D

    move-result-wide v12

    .line 264
    const-wide v25, 0x7fefffffffffffffL

    cmpl-double v25, v12, v25

    if-eqz v25, :cond_14

    .line 265
    move v0, v9

    int-to-double v0, v0

    move-wide/from16 v25, v0

    aget-wide v27, v33, v19

    invoke-virtual {v11, v10}, Lorg/achartengine/b/d;->a(I)D

    move-result-wide v29

    aget-wide v34, v6, v19

    sub-double v29, v29, v34

    mul-double v27, v27, v29

    add-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move v10, v0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v25, v0

    aget-wide v27, v45, v19

    aget-wide v29, v43, v19

    sub-double v12, v12, v29

    mul-double v12, v12, v27

    sub-double v12, v25, v12

    double-to-float v10, v12

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :goto_d
    add-int/lit8 v10, v24, 0x2

    move/from16 v24, v10

    goto :goto_c

    .line 269
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/achartengine/a/h;->b()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 270
    int-to-double v12, v9

    aget-wide v25, v33, v19

    invoke-virtual {v11, v10}, Lorg/achartengine/b/d;->a(I)D

    move-result-wide v27

    aget-wide v29, v6, v19

    sub-double v27, v27, v29

    mul-double v25, v25, v27

    add-double v12, v12, v25

    double-to-float v10, v12

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide v12, v0

    aget-wide v25, v45, v19

    aget-wide v27, v43, v19

    move-wide/from16 v0, v27

    neg-double v0, v0

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    sub-double v12, v12, v25

    double-to-float v10, v12

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 275
    :cond_15
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_16

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    .line 276
    invoke-direct/range {v10 .. v18}, Lorg/achartengine/a/h;->a(Lorg/achartengine/b/d;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/c;FILorg/achartengine/renderer/d;)V

    .line 278
    invoke-static {v14}, Lorg/achartengine/d/a;->a(Ljava/util/List;)[F

    move-result-object v10

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/achartengine/a/h;->a([FFI)[Landroid/graphics/RectF;

    move-result-object v10

    .line 280
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 282
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 284
    :cond_16
    const/4 v10, 0x0

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 287
    :cond_17
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_18

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    .line 288
    invoke-direct/range {v10 .. v18}, Lorg/achartengine/a/h;->a(Lorg/achartengine/b/d;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/c;FILorg/achartengine/renderer/d;)V

    .line 290
    invoke-static {v14}, Lorg/achartengine/d/a;->a(Ljava/util/List;)[F

    move-result-object v10

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/achartengine/a/h;->a([FFI)[Landroid/graphics/RectF;

    move-result-object v10

    .line 292
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 244
    :cond_18
    add-int/lit8 v10, v17, 0x1

    move/from16 v17, v10

    goto/16 :goto_b

    .line 298
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v19, v0

    sub-int v24, p5, v22

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v27

    move-object/from16 v20, p1

    move/from16 v21, p2

    move/from16 v23, p4

    move-object/from16 v25, p6

    invoke-static/range {v19 .. v27}, Lorg/achartengine/a/h;->a(Lorg/achartengine/renderer/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v23, v0

    const/4 v10, 0x0

    aget v28, v32, v10

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v31

    move-object/from16 v24, p1

    move/from16 v25, p2

    move/from16 v26, p3

    move/from16 v27, p4

    move-object/from16 v29, p6

    invoke-static/range {v23 .. v31}, Lorg/achartengine/a/h;->a(Lorg/achartengine/renderer/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 302
    sget-object v10, Lorg/achartengine/renderer/d;->a:Lorg/achartengine/renderer/d;

    move-object/from16 v0, v18

    move-object v1, v10

    if-ne v0, v1, :cond_1c

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v23, v0

    sub-int v27, v9, p2

    sub-int v28, p5, p3

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v31

    move-object/from16 v24, p1

    move/from16 v25, p2

    move/from16 v26, p3

    move-object/from16 v29, p6

    invoke-static/range {v23 .. v31}, Lorg/achartengine/a/h;->a(Lorg/achartengine/renderer/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v23, v0

    const/4 v10, 0x3

    aget v27, v32, v10

    sub-int v28, p5, p3

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v31

    move-object/from16 v24, p1

    move/from16 v25, v39

    move/from16 v26, p3

    move-object/from16 v29, p6

    invoke-static/range {v23 .. v31}, Lorg/achartengine/a/h;->a(Lorg/achartengine/renderer/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 314
    :cond_1a
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v10

    if-eqz v10, :cond_1d

    if-eqz v5, :cond_1d

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 315
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGrid()Z

    move-result v17

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowCustomTextGrid()Z

    move-result v19

    .line 317
    if-nez v16, :cond_1b

    if-eqz v17, :cond_2e

    .line 318
    :cond_1b
    const/4 v5, 0x0

    aget-wide v10, v6, v5

    const/4 v5, 0x0

    aget-wide v12, v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabels()I

    move-result v5

    invoke-static {v10, v11, v12, v13, v5}, Lorg/achartengine/d/a;->a(DDI)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lorg/achartengine/a/h;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v24

    .line 320
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 321
    const/4 v5, 0x0

    :goto_10
    move v0, v5

    move/from16 v1, v42

    if-ge v0, v1, :cond_1e

    .line 322
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aget-wide v11, v43, v5

    aget-wide v13, v44, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v15, v0

    invoke-virtual {v15}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabels()I

    move-result v15

    invoke-static {v11, v12, v13, v14, v15}, Lorg/achartengine/d/a;->a(DDI)Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lorg/achartengine/a/h;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, v20

    move-object v1, v10

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 307
    :cond_1c
    sget-object v10, Lorg/achartengine/renderer/d;->b:Lorg/achartengine/renderer/d;

    move-object/from16 v0, v18

    move-object v1, v10

    if-ne v0, v1, :cond_1a

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v23, v0

    sub-int v27, p4, v39

    sub-int v28, p5, p3

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v31

    move-object/from16 v24, p1

    move/from16 v25, v39

    move/from16 v26, p3

    move-object/from16 v29, p6

    invoke-static/range {v23 .. v31}, Lorg/achartengine/a/h;->a(Lorg/achartengine/renderer/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v23, v0

    sub-int v27, v9, p2

    sub-int v28, p5, p3

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v31

    move-object/from16 v24, p1

    move/from16 v25, p2

    move/from16 v26, p3

    move-object/from16 v29, p6

    invoke-static/range {v23 .. v31}, Lorg/achartengine/a/h;->a(Lorg/achartengine/renderer/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    goto/16 :goto_e

    .line 314
    :cond_1d
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_f

    .line 326
    :cond_1e
    if-eqz v16, :cond_36

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v5

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v5

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v5

    move-object/from16 v0, p6

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v5

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v5, v10, :cond_36

    .line 331
    int-to-float v5, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v10

    const/high16 v11, 0x4080

    div-float/2addr v10, v11

    add-float/2addr v5, v10

    float-to-int v5, v5

    move/from16 v28, v5

    .line 334
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTextLabelLocations()[Ljava/lang/Double;

    move-result-object v25

    const/4 v5, 0x0

    aget-wide v31, v33, v5

    const/4 v5, 0x0

    aget-wide v33, v6, v5

    const/4 v5, 0x0

    aget-wide v35, v7, v5

    move-object/from16 v23, p0

    move-object/from16 v26, p1

    move-object/from16 v27, p6

    move/from16 v29, v37

    move/from16 v30, v22

    invoke-direct/range {v23 .. v36}, Lorg/achartengine/a/h;->a(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V

    .line 338
    const/4 v5, 0x0

    move v7, v5

    :goto_12
    move v0, v7

    move/from16 v1, v42

    if-ge v0, v1, :cond_26

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v5

    move-object/from16 v0, p6

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 340
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 341
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v21

    .line 342
    const/4 v6, 0x0

    move/from16 v30, v6

    :goto_13
    move/from16 v0, v30

    move/from16 v1, v21

    if-ge v0, v1, :cond_25

    .line 343
    move-object v0, v5

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v6

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTextLabel(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_21

    const/4 v10, 0x1

    .line 346
    :goto_14
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide v11, v0

    aget-wide v13, v45, v7

    aget-wide v25, v43, v7

    sub-double v25, v23, v25

    mul-double v13, v13, v25

    sub-double/2addr v11, v13

    double-to-float v12, v11

    .line 348
    sget-object v11, Lorg/achartengine/renderer/d;->a:Lorg/achartengine/renderer/d;

    move-object/from16 v0, v18

    move-object v1, v11

    if-ne v0, v1, :cond_23

    .line 349
    if-eqz v16, :cond_1f

    if-nez v10, :cond_1f

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v10

    move-object/from16 v0, p6

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v6, v10, :cond_22

    .line 352
    invoke-static {v6}, Lorg/achartengine/a/h;->a(Landroid/graphics/Paint$Align;)I

    move-result v6

    add-int/2addr v6, v9

    int-to-float v11, v6

    int-to-float v13, v9

    move-object/from16 v10, p1

    move v14, v12

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 355
    invoke-static/range {v23 .. v24}, Lorg/achartengine/a/h;->a(D)Ljava/lang/String;

    move-result-object v25

    move v0, v9

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v6, 0x4000

    sub-float v27, v12, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v29

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v28, p6

    invoke-virtual/range {v23 .. v29}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 367
    :cond_1f
    :goto_15
    if-eqz v17, :cond_20

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v6

    move-object/from16 v0, p6

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    int-to-float v11, v9

    move/from16 v0, v39

    int-to-float v0, v0

    move v13, v0

    move-object/from16 v10, p1

    move v14, v12

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 342
    :cond_20
    :goto_16
    add-int/lit8 v6, v30, 0x1

    move/from16 v30, v6

    goto/16 :goto_13

    .line 345
    :cond_21
    const/4 v10, 0x0

    goto :goto_14

    .line 359
    :cond_22
    move/from16 v0, v39

    int-to-float v0, v0

    move v11, v0

    invoke-static {v6}, Lorg/achartengine/a/h;->a(Landroid/graphics/Paint$Align;)I

    move-result v6

    add-int v6, v6, v39

    int-to-float v13, v6

    move-object/from16 v10, p1

    move v14, v12

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 362
    invoke-static/range {v23 .. v24}, Lorg/achartengine/a/h;->a(D)Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v6, 0x4000

    sub-float v27, v12, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v29

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v28, p6

    invoke-virtual/range {v23 .. v29}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_15

    .line 371
    :cond_23
    sget-object v11, Lorg/achartengine/renderer/d;->b:Lorg/achartengine/renderer/d;

    move-object/from16 v0, v18

    move-object v1, v11

    if-ne v0, v1, :cond_20

    .line 372
    if-eqz v16, :cond_24

    if-nez v10, :cond_24

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v10

    move-object/from16 v0, p6

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    invoke-static {v6}, Lorg/achartengine/a/h;->a(Landroid/graphics/Paint$Align;)I

    move-result v6

    sub-int v6, v39, v6

    int-to-float v11, v6

    move/from16 v0, v39

    int-to-float v0, v0

    move v13, v0

    move-object/from16 v10, p1

    move v14, v12

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 376
    invoke-static/range {v23 .. v24}, Lorg/achartengine/a/h;->a(D)Ljava/lang/String;

    move-result-object v25

    add-int/lit8 v6, v39, 0xa

    move v0, v6

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v6, 0x4000

    sub-float v27, v12, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v29

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v28, p6

    invoke-virtual/range {v23 .. v29}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 380
    :cond_24
    if-eqz v17, :cond_20

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v6

    move-object/from16 v0, p6

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    move/from16 v0, v39

    int-to-float v0, v0

    move v11, v0

    int-to-float v13, v9

    move-object/from16 v10, p1

    move v14, v12

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_16

    .line 338
    :cond_25
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto/16 :goto_12

    .line 388
    :cond_26
    if-eqz v16, :cond_2b

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v5

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    const/4 v5, 0x0

    :goto_17
    move v0, v5

    move/from16 v1, v42

    if-ge v0, v1, :cond_2b

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v6

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v7, v0

    invoke-virtual {v7, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTextLabelLocations(I)[Ljava/lang/Double;

    move-result-object v7

    .line 394
    move-object v0, v7

    array-length v0, v0

    move/from16 v17, v0

    const/4 v10, 0x0

    move/from16 v20, v10

    :goto_18
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_2a

    aget-object v10, v7, v20

    .line 395
    aget-wide v11, v43, v5

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_27

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    aget-wide v13, v44, v5

    cmpg-double v11, v11, v13

    if-gtz v11, :cond_27

    .line 396
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide v11, v0

    aget-wide v13, v45, v5

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    aget-wide v25, v43, v5

    sub-double v23, v23, v25

    mul-double v13, v13, v23

    sub-double/2addr v11, v13

    double-to-float v12, v11

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v11, v0

    invoke-virtual {v11, v10, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTextLabel(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v25

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v10

    move-object/from16 v0, p6

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    sget-object v10, Lorg/achartengine/renderer/d;->a:Lorg/achartengine/renderer/d;

    move-object/from16 v0, v18

    move-object v1, v10

    if-ne v0, v1, :cond_29

    .line 401
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v6, v10, :cond_28

    .line 402
    invoke-static {v6}, Lorg/achartengine/a/h;->a(Landroid/graphics/Paint$Align;)I

    move-result v10

    add-int/2addr v10, v9

    int-to-float v11, v10

    int-to-float v13, v9

    move-object/from16 v10, p1

    move v14, v12

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 405
    move v0, v9

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v10, 0x4000

    sub-float v27, v12, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v29

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v28, p6

    invoke-virtual/range {v23 .. v29}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 414
    :goto_19
    if-eqz v19, :cond_27

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v10

    move-object/from16 v0, p6

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    int-to-float v11, v9

    move/from16 v0, v39

    int-to-float v0, v0

    move v13, v0

    move-object/from16 v10, p1

    move v14, v12

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 394
    :cond_27
    :goto_1a
    add-int/lit8 v10, v20, 0x1

    move/from16 v20, v10

    goto/16 :goto_18

    .line 408
    :cond_28
    move/from16 v0, v39

    int-to-float v0, v0

    move v11, v0

    invoke-static {v6}, Lorg/achartengine/a/h;->a(Landroid/graphics/Paint$Align;)I

    move-result v10

    add-int v10, v10, v39

    int-to-float v13, v10

    move-object/from16 v10, p1

    move v14, v12

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 411
    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v10, 0x4000

    sub-float v27, v12, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v29

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v28, p6

    invoke-virtual/range {v23 .. v29}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_19

    .line 420
    :cond_29
    invoke-static {v6}, Lorg/achartengine/a/h;->a(Landroid/graphics/Paint$Align;)I

    move-result v10

    sub-int v10, v39, v10

    int-to-float v11, v10

    move/from16 v0, v39

    int-to-float v0, v0

    move v13, v0

    move-object/from16 v10, p1

    move v14, v12

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 423
    add-int/lit8 v10, v39, 0xa

    move v0, v10

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v10, 0x4000

    sub-float v27, v12, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v29

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v28, p6

    invoke-virtual/range {v23 .. v29}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 425
    if-eqz v19, :cond_27

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    invoke-virtual {v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v10

    move-object/from16 v0, p6

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 427
    move/from16 v0, v39

    int-to-float v0, v0

    move v11, v0

    int-to-float v13, v9

    move-object/from16 v10, p1

    move v14, v12

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1a

    .line 390
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_17

    .line 436
    :cond_2b
    if-eqz v16, :cond_2e

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v5

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getAxisTitleTextSize()F

    move-result v5

    .line 439
    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 440
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 441
    sget-object v6, Lorg/achartengine/renderer/d;->a:Lorg/achartengine/renderer/d;

    move-object/from16 v0, v18

    move-object v1, v6

    if-ne v0, v1, :cond_30

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTitle()Ljava/lang/String;

    move-result-object v12

    div-int/lit8 v6, p4, 0x2

    add-int v6, v6, p2

    int-to-float v13, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v7

    const/high16 v10, 0x4080

    mul-float/2addr v7, v10

    const/high16 v10, 0x4040

    div-float/2addr v7, v10

    add-float/2addr v6, v7

    add-float v14, v6, v5

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v16}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 445
    const/4 v6, 0x0

    :goto_1b
    move v0, v6

    move/from16 v1, v42

    if-ge v0, v1, :cond_2d

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v7, v0

    invoke-virtual {v7, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v7

    .line 447
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v7, v10, :cond_2c

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v7, v0

    invoke-virtual {v7, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v0, p2

    int-to-float v0, v0

    move v7, v0

    add-float v13, v7, v5

    div-int/lit8 v7, p5, 0x2

    add-int v7, v7, p3

    int-to-float v14, v7

    const/high16 v16, -0x3d4c

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v16}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 445
    :goto_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 451
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v7, v0

    invoke-virtual {v7, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle(I)Ljava/lang/String;

    move-result-object v12

    add-int v7, p2, p4

    int-to-float v13, v7

    div-int/lit8 v7, p5, 0x2

    add-int v7, v7, p3

    int-to-float v14, v7

    const/high16 v16, -0x3d4c

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v16}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_1c

    .line 455
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v5

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitle()Ljava/lang/String;

    move-result-object v12

    div-int/lit8 v5, p4, 0x2

    add-int v5, v5, p2

    int-to-float v13, v5

    move/from16 v0, p3

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v6

    add-float v14, v5, v6

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v16}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 469
    :cond_2e
    :goto_1d
    sget-object v5, Lorg/achartengine/renderer/d;->a:Lorg/achartengine/renderer/d;

    move-object/from16 v0, v18

    move-object v1, v5

    if-ne v0, v1, :cond_31

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v7, v0

    const/16 v16, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v10, v39

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, v38

    move-object/from16 v15, p6

    invoke-virtual/range {v5 .. v16}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Lorg/achartengine/renderer/b;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 478
    :cond_2f
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowAxes()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getAxesColor()I

    move-result v5

    move-object/from16 v0, p6

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 480
    int-to-float v6, v9

    move/from16 v0, v22

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v5, p1

    move-object/from16 v10, p6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 481
    const/4 v5, 0x0

    .line 482
    const/4 v6, 0x0

    :goto_1f
    move v0, v6

    move/from16 v1, v42

    if-ge v0, v1, :cond_33

    if-nez v5, :cond_33

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v5, v0

    invoke-virtual {v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v5

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v5, v7, :cond_32

    const/4 v5, 0x1

    .line 482
    :goto_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 458
    :cond_30
    sget-object v6, Lorg/achartengine/renderer/d;->b:Lorg/achartengine/renderer/d;

    move-object/from16 v0, v18

    move-object v1, v6

    if-ne v0, v1, :cond_2e

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTitle()Ljava/lang/String;

    move-result-object v12

    div-int/lit8 v6, p4, 0x2

    add-int v6, v6, p2

    int-to-float v13, v6

    add-int v6, p3, p5

    int-to-float v6, v6

    sub-float v14, v6, v5

    const/high16 v16, -0x3d4c

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v16}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v6, v39, 0x14

    int-to-float v13, v6

    div-int/lit8 v6, p5, 0x2

    add-int v6, v6, p3

    int-to-float v14, v6

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v16}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v6

    move-object/from16 v0, p6

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitle()Ljava/lang/String;

    move-result-object v12

    move/from16 v0, p2

    int-to-float v0, v0

    move v6, v0

    add-float v13, v6, v5

    div-int/lit8 v5, p5, 0x2

    add-int v5, v5, v37

    int-to-float v14, v5

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v16}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto/16 :goto_1d

    .line 472
    :cond_31
    sget-object v5, Lorg/achartengine/renderer/d;->b:Lorg/achartengine/renderer/d;

    move-object/from16 v0, v18

    move-object v1, v5

    if-ne v0, v1, :cond_2f

    .line 473
    move/from16 v0, v40

    int-to-float v0, v0

    move v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;FZ)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v7, v0

    const/16 v16, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v10, v39

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, v38

    move-object/from16 v15, p6

    invoke-virtual/range {v5 .. v16}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Lorg/achartengine/renderer/b;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 476
    move/from16 v0, v40

    int-to-float v0, v0

    move v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_1e

    .line 483
    :cond_32
    const/4 v5, 0x0

    goto/16 :goto_20

    .line 485
    :cond_33
    sget-object v6, Lorg/achartengine/renderer/d;->a:Lorg/achartengine/renderer/d;

    move-object/from16 v0, v18

    move-object v1, v6

    if-ne v0, v1, :cond_35

    .line 486
    if-eqz v5, :cond_34

    .line 487
    move/from16 v0, v39

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v5, p1

    move-object/from16 v10, p6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 493
    :cond_34
    :goto_21
    if-eqz v41, :cond_8

    .line 494
    move/from16 v0, v40

    int-to-float v0, v0

    move v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_7

    .line 489
    :cond_35
    sget-object v5, Lorg/achartengine/renderer/d;->b:Lorg/achartengine/renderer/d;

    move-object/from16 v0, v18

    move-object v1, v5

    if-ne v0, v1, :cond_34

    .line 490
    move/from16 v0, v39

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v5, p1

    move-object/from16 v10, p6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_21

    :cond_36
    move/from16 v28, v9

    goto/16 :goto_11

    :cond_37
    move/from16 v22, v5

    move/from16 v39, v10

    goto/16 :goto_4

    :cond_38
    move/from16 v38, v14

    goto/16 :goto_3

    :cond_39
    move v14, v6

    goto/16 :goto_1

    :cond_3a
    move v6, v8

    goto/16 :goto_0
.end method

.method public abstract a(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/c;FI)V
.end method

.method protected final a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 615
    iget-object v0, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/achartengine/renderer/d;->a()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, p6

    .line 616
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_0

    .line 618
    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 620
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 621
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_1

    .line 622
    neg-float v0, v0

    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 625
    :cond_1
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Lorg/achartengine/b/d;Lorg/achartengine/renderer/c;Landroid/graphics/Paint;[FI)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 590
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    array-length v0, p5

    if-ge v7, v0, :cond_0

    .line 591
    div-int/lit8 v0, v7, 0x2

    invoke-virtual {p2, v0}, Lorg/achartengine/b/d;->b(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/achartengine/a/h;->a(D)Ljava/lang/String;

    move-result-object v2

    aget v3, p5, v7

    add-int/lit8 v0, v7, 0x1

    aget v0, p5, v0

    invoke-virtual {p3}, Lorg/achartengine/renderer/c;->h()F

    move-result v1

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/a/h;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 590
    add-int/lit8 v0, v7, 0x2

    move v7, v0

    goto :goto_0

    .line 594
    :cond_0
    return-void
.end method

.method protected a(Lorg/achartengine/b/c;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lorg/achartengine/a/h;->c:Lorg/achartengine/b/c;

    .line 98
    iput-object p2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 99
    return-void
.end method

.method public final a(FFI)[D
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 805
    iget-object v0, p0, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 806
    const/4 v0, 0x0

    .line 811
    :goto_0
    return-object v0

    .line 807
    :cond_0
    iget-object v0, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, p3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v0

    .line 808
    iget-object v2, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2, p3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v2

    .line 809
    iget-object v4, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, p3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v4

    .line 810
    iget-object v6, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v6, p3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v6

    .line 811
    const/4 v8, 0x2

    new-array v8, v8, [D

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float v10, p1, v10

    float-to-double v10, v10

    sub-double/2addr v2, v0

    mul-double/2addr v2, v10

    iget-object v10, p0, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v2, v10

    add-double/2addr v0, v2

    aput-wide v0, v8, v9

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, p2

    float-to-double v1, v1

    sub-double/2addr v6, v4

    mul-double/2addr v1, v6

    iget-object v3, p0, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v1, v6

    add-double/2addr v1, v4

    aput-wide v1, v8, v0

    move-object v0, v8

    goto :goto_0
.end method

.method public final a(I)[D
    .locals 2
    .parameter

    .prologue
    .line 771
    iget-object v0, p0, Lorg/achartengine/a/h;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public final a([DI)[D
    .locals 22
    .parameter
    .parameter

    .prologue
    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v2

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v4

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v6

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v8, v0

    move-object v0, v8

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v8

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    move-object v0, v10

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    move-object v0, v10

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet(I)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    move-object v0, v10

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v10, v0

    move-object v0, v10

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 825
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/achartengine/a/h;->a(I)[D

    move-result-object v2

    .line 826
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    .line 827
    const/4 v5, 0x1

    aget-wide v5, v2, v5

    .line 828
    const/4 v7, 0x2

    aget-wide v7, v2, v7

    .line 829
    const/4 v9, 0x3

    aget-wide v9, v2, v9

    move-wide/from16 v16, v9

    move-wide/from16 v18, v7

    move-wide v8, v3

    move-wide/from16 v2, v16

    move-wide/from16 v20, v5

    move-wide/from16 v6, v20

    move-wide/from16 v4, v18

    .line 831
    :goto_0
    const/4 v10, 0x2

    new-array v10, v10, [D

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-wide v12, p1, v12

    sub-double/2addr v12, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v12, v14

    sub-double/2addr v6, v8

    div-double v6, v12, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-double v8, v8

    add-double/2addr v6, v8

    aput-wide v6, v10, v11

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-wide v7, p1, v7

    sub-double v7, v2, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-double v11, v9

    mul-double/2addr v7, v11

    sub-double/2addr v2, v4

    div-double v2, v7, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/h;->g:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    aput-wide v2, v10, v6

    return-object v10

    :cond_1
    move-wide/from16 v16, v8

    move-wide v8, v2

    move-wide/from16 v2, v16

    move-wide/from16 v18, v4

    move-wide v4, v6

    move-wide/from16 v6, v18

    goto :goto_0
.end method

.method protected abstract a([FFI)[Landroid/graphics/RectF;
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 905
    const/4 v0, 0x0

    return v0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 924
    const-wide v0, 0x7fefffffffffffffL

    return-wide v0
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public final e()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lorg/achartengine/a/h;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-object v0
.end method
