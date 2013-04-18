.class public abstract Lorg/achartengine/a/a;
.super Ljava/lang/Object;
.source "AbstractChart.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = -0xc12bdac852a9075L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lorg/achartengine/renderer/b;IF)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/achartengine/renderer/b;->getLegendHeight()I

    move-result v0

    .line 244
    invoke-virtual {p0}, Lorg/achartengine/renderer/b;->isShowLegend()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    move v0, p1

    .line 247
    :cond_0
    invoke-virtual {p0}, Lorg/achartengine/renderer/b;->isShowLegend()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/achartengine/renderer/b;->isShowLabels()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    invoke-virtual {p0}, Lorg/achartengine/renderer/b;->getLabelsTextSize()F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    add-float/2addr v0, p2

    float-to-int v0, v0

    .line 250
    :cond_1
    return v0
.end method

.method private static a(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 229
    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v4

    move-object v2, p0

    .line 232
    :goto_0
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, p1

    if-lez v3, :cond_0

    if-ge v1, v0, :cond_0

    .line 233
    add-int/lit8 v1, v1, 0x1

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v3, v0, v1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 236
    :cond_0
    if-ne v1, v0, :cond_1

    .line 237
    const-string v0, "..."

    .line 239
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method private static a(Landroid/graphics/Canvas;Ljava/lang/String;Lorg/achartengine/renderer/b;Ljava/util/List;IIFFFFIILandroid/graphics/Paint;)V
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
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    invoke-virtual {p2}, Lorg/achartengine/renderer/b;->isShowLabels()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 257
    invoke-virtual {p2}, Lorg/achartengine/renderer/b;->getLabelsColor()I

    move-result v5

    move-object/from16 v0, p12

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    const/high16 v5, 0x42b4

    const/high16 v6, 0x4000

    div-float p9, p9, v6

    add-float p8, p8, p9

    sub-float p8, v5, p8

    move/from16 v0, p8

    float-to-double v0, v0

    move-wide/from16 p8, v0

    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p8

    .line 259
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    .line 260
    invoke-static/range {p8 .. p9}, Ljava/lang/Math;->cos(D)D

    move-result-wide p8

    .line 261
    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, p6

    float-to-double v0, v0

    move-wide v8, v0

    mul-double/2addr v8, v5

    double-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 262
    move/from16 v0, p5

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, p6

    float-to-double v0, v0

    move-wide v9, v0

    mul-double v9, v9, p8

    move-wide v0, v9

    double-to-float v0, v0

    move/from16 p6, v0

    add-float p6, p6, v8

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    .line 263
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p4, v0

    move/from16 v0, p7

    float-to-double v0, v0

    move-wide v8, v0

    mul-double/2addr v5, v8

    double-to-float v5, v5

    add-float p4, p4, v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    .line 264
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p5, v0

    move/from16 v0, p7

    float-to-double v0, v0

    move-wide v5, v0

    mul-double p7, v5, p8

    move-wide/from16 v0, p7

    double-to-float v0, v0

    move/from16 p7, v0

    add-float p5, p5, p7

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    .line 266
    invoke-virtual {p2}, Lorg/achartengine/renderer/b;->getLabelsTextSize()F

    move-result p2

    .line 267
    const/high16 p7, 0x4000

    div-float p7, p2, p7

    const/high16 p8, 0x4120

    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->max(FF)F

    move-result p7

    .line 268
    sget-object p8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p12

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 269
    move v0, v7

    move/from16 v1, p4

    if-le v0, v1, :cond_0

    .line 270
    move/from16 v0, p7

    neg-float v0, v0

    move/from16 p7, v0

    .line 271
    sget-object p8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p12

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 273
    :cond_0
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p8, v0

    add-float p8, p8, p7

    .line 274
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p5, v0

    .line 275
    move/from16 v0, p11

    int-to-float v0, v0

    move/from16 p9, v0

    sub-float p9, p9, p8

    .line 276
    move v0, v7

    move/from16 v1, p4

    if-le v0, v1, :cond_1

    .line 277
    move/from16 v0, p10

    int-to-float v0, v0

    move/from16 p9, v0

    sub-float p9, p8, p9

    .line 279
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p10

    const/16 p11, 0x0

    move-object v5, p1

    :goto_0
    move-object/from16 v0, p12

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpl-float v6, v6, p9

    if-lez v6, :cond_2

    move/from16 v0, p11

    move/from16 v1, p10

    if-ge v0, v1, :cond_2

    add-int/lit8 p11, p11, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    sub-int v8, p10, p11

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    move/from16 v0, p11

    move/from16 v1, p10

    if-ne v0, v1, :cond_8

    const-string p1, "..."

    move-object/from16 p9, p1

    .line 280
    :goto_1
    move-object/from16 v0, p12

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p10

    .line 281
    const/4 p1, 0x0

    move/from16 v11, p5

    move/from16 p5, p1

    move p1, v11

    .line 282
    :goto_2
    if-nez p5, :cond_5

    .line 283
    const/16 p5, 0x0

    .line 284
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p11

    .line 285
    const/4 v5, 0x0

    move/from16 v6, p5

    move/from16 p5, v5

    move v5, p1

    :goto_3
    move/from16 v0, p5

    move/from16 v1, p11

    if-ge v0, v1, :cond_3

    if-nez v6, :cond_3

    .line 286
    move-object v0, p3

    move/from16 v1, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    .line 287
    add-float v8, p8, p10

    add-float v9, v5, p2

    move-object v0, p1

    move/from16 v1, p8

    move v2, v5

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 288
    const/4 v6, 0x1

    .line 289
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    move v5, v6

    .line 285
    :goto_4
    add-int/lit8 p5, p5, 0x1

    move v6, v5

    move v5, p1

    goto :goto_3

    .line 292
    :cond_3
    if-nez v6, :cond_4

    const/4 p1, 0x1

    :goto_5
    move/from16 p5, p1

    move p1, v5

    .line 293
    goto :goto_2

    .line 292
    :cond_4
    const/4 p1, 0x0

    goto :goto_5

    .line 295
    :cond_5
    const/high16 p5, 0x4000

    div-float p5, p2, p5

    sub-float p5, p1, p5

    move/from16 v0, p5

    float-to-int v0, v0

    move/from16 p5, v0

    .line 296
    int-to-float v6, v7

    move/from16 v0, p6

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v9, v0

    move-object v5, p0

    move-object/from16 v10, p12

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 297
    move/from16 v0, p4

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p4, v0

    add-float v8, p4, p7

    move/from16 v0, p5

    int-to-float v0, v0

    move v9, v0

    move-object v5, p0

    move-object/from16 v10, p12

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 298
    move-object v0, p0

    move-object/from16 v1, p9

    move/from16 v2, p8

    move v3, p1

    move-object/from16 v4, p12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 299
    new-instance p0, Landroid/graphics/RectF;

    add-float p4, p8, p10

    add-float/2addr p2, p1

    move-object v0, p0

    move/from16 v1, p8

    move v2, p1

    move/from16 v3, p4

    move v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_6
    return-void

    :cond_7
    move p1, v5

    move v5, v6

    goto :goto_4

    :cond_8
    move-object/from16 p9, v5

    goto/16 :goto_1
.end method

.method protected static a(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 189
    aget v1, p1, v4

    aget v2, p1, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 190
    const/4 v1, 0x2

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 191
    aget v2, p1, v1

    add-int/lit8 v3, v1, 0x1

    aget v3, p1, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 190
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 193
    :cond_0
    aget v1, p1, v4

    aget v2, p1, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 196
    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 197
    return-void
.end method

.method protected static a(Lorg/achartengine/renderer/b;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V
    .locals 6
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
    .line 73
    invoke-virtual {p0}, Lorg/achartengine/renderer/b;->isApplyBackgroundColor()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p7, :cond_1

    .line 74
    :cond_0
    if-eqz p7, :cond_2

    .line 75
    invoke-virtual {p6, p8}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    int-to-float v1, p2

    int-to-float v2, p3

    add-int v0, p2, p4

    int-to-float v3, v0

    add-int v0, p3, p5

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 82
    :cond_1
    return-void

    .line 77
    :cond_2
    invoke-virtual {p0}, Lorg/achartengine/renderer/b;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method private static a(FLorg/achartengine/renderer/b;II)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    int-to-float v0, p2

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    move v0, v3

    .line 162
    :goto_0
    invoke-static {p1}, Lorg/achartengine/a/a;->a(Lorg/achartengine/renderer/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    int-to-float v0, p3

    cmpl-float v0, p0, v0

    if-lez v0, :cond_2

    move v0, v3

    .line 165
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v2

    .line 161
    goto :goto_0

    :cond_2
    move v0, v2

    .line 163
    goto :goto_1
.end method

.method private static a(Lorg/achartengine/renderer/b;)Z
    .locals 2
    .parameter

    .prologue
    .line 175
    instance-of v0, p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {p0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/d;

    move-result-object v0

    sget-object v1, Lorg/achartengine/renderer/d;->b:Lorg/achartengine/renderer/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()I
.end method

.method protected final a(Landroid/graphics/Canvas;Lorg/achartengine/renderer/b;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I
    .locals 18
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
    .parameter

    .prologue
    .line 103
    const/high16 v5, 0x4200

    .line 104
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/b;->isShowLegend()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 105
    move/from16 v0, p4

    int-to-float v0, v0

    move v6, v0

    .line 106
    add-int v7, p6, p8

    sub-int v7, v7, p9

    int-to-float v7, v7

    const/high16 v8, 0x4200

    add-float/2addr v7, v8

    .line 107
    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p10

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/b;->getLegendTextSize()F

    move-result v8

    move-object/from16 v0, p10

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 109
    move-object/from16 v0, p3

    array-length v0, v0

    move v8, v0

    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/b;->getSeriesRendererCount()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 110
    const/4 v8, 0x0

    move v12, v8

    move/from16 v17, v5

    move v5, v6

    move/from16 v6, v17

    :goto_0
    if-ge v12, v11, :cond_4

    .line 111
    invoke-virtual/range {p0 .. p0}, Lorg/achartengine/a/a;->a()I

    move-result v8

    int-to-float v13, v8

    .line 112
    aget-object v10, p3, v12

    .line 113
    move-object/from16 v0, p3

    array-length v0, v0

    move v8, v0

    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/b;->getSeriesRendererCount()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 114
    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/b;->getSeriesRendererAt(I)Lorg/achartengine/renderer/c;

    move-result-object v8

    invoke-virtual {v8}, Lorg/achartengine/renderer/c;->a()I

    move-result v8

    move-object/from16 v0, p10

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    new-array v14, v8, [F

    .line 119
    move-object/from16 v0, p10

    move-object v1, v10

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 120
    const/4 v8, 0x0

    .line 121
    array-length v9, v14

    const/4 v15, 0x0

    move/from16 v17, v15

    move v15, v8

    move/from16 v8, v17

    :goto_2
    if-ge v8, v9, :cond_1

    aget v16, v14, v8

    .line 122
    add-float v15, v15, v16

    .line 121
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 116
    :cond_0
    const v8, -0x333334

    move-object/from16 v0, p10

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 124
    :cond_1
    const/high16 v8, 0x4120

    add-float/2addr v8, v13

    add-float/2addr v15, v8

    .line 125
    add-float v8, v5, v15

    .line 127
    if-lez v12, :cond_7

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lorg/achartengine/a/a;->a(FLorg/achartengine/renderer/b;II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 128
    move/from16 v0, p4

    int-to-float v0, v0

    move v5, v0

    .line 129
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/b;->getLegendTextSize()F

    move-result v8

    add-float/2addr v7, v8

    .line 130
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/b;->getLegendTextSize()F

    move-result v8

    add-float/2addr v6, v8

    .line 131
    add-float v8, v5, v15

    move/from16 v16, v6

    move v9, v7

    move/from16 v17, v8

    move v8, v5

    move/from16 v5, v17

    .line 133
    :goto_3
    move v0, v5

    move-object/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lorg/achartengine/a/a;->a(FLorg/achartengine/renderer/b;II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 134
    move/from16 v0, p5

    int-to-float v0, v0

    move v5, v0

    sub-float/2addr v5, v8

    sub-float/2addr v5, v13

    const/high16 v6, 0x4120

    sub-float/2addr v5, v6

    .line 135
    invoke-static/range {p2 .. p2}, Lorg/achartengine/a/a;->a(Lorg/achartengine/renderer/b;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 136
    move/from16 v0, p7

    int-to-float v0, v0

    move v5, v0

    sub-float/2addr v5, v8

    sub-float/2addr v5, v13

    const/high16 v6, 0x4120

    sub-float/2addr v5, v6

    .line 138
    :cond_2
    const/4 v6, 0x1

    move-object/from16 v0, p10

    move-object v1, v10

    move v2, v6

    move v3, v5

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v5

    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v10, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v14, v5

    .line 141
    :goto_4
    if-nez p11, :cond_3

    .line 142
    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/b;->getSeriesRendererAt(I)Lorg/achartengine/renderer/c;

    move-result-object v7

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v10, p10

    invoke-virtual/range {v5 .. v10}, Lorg/achartengine/a/a;->a(Landroid/graphics/Canvas;Lorg/achartengine/renderer/c;FFLandroid/graphics/Paint;)V

    .line 143
    add-float v5, v8, v13

    const/high16 v6, 0x40a0

    add-float/2addr v5, v6

    const/high16 v6, 0x40a0

    add-float/2addr v6, v9

    move-object/from16 v0, p1

    move-object v1, v14

    move v2, v5

    move v3, v6

    move-object/from16 v4, p10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
    :cond_3
    add-float v5, v8, v15

    .line 110
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    move v7, v9

    move/from16 v6, v16

    goto/16 :goto_0

    :cond_4
    move v5, v6

    .line 148
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/b;->getLegendTextSize()F

    move-result v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    return v5

    :cond_6
    move-object v14, v10

    goto :goto_4

    :cond_7
    move/from16 v16, v6

    move v9, v7

    move/from16 v17, v8

    move v8, v5

    move/from16 v5, v17

    goto/16 :goto_3
.end method

.method public a(Landroid/graphics/PointF;)Lorg/achartengine/b/b;
    .locals 1
    .parameter

    .prologue
    .line 312
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
.end method

.method public abstract a(Landroid/graphics/Canvas;Lorg/achartengine/renderer/c;FFLandroid/graphics/Paint;)V
.end method
