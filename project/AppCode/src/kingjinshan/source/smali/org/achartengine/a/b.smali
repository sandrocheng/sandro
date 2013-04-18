.class public final Lorg/achartengine/a/b;
.super Lorg/achartengine/a/h;
.source "BarChart.java"


# static fields
.field public static final a:Ljava/lang/String; = "Bar"

.field private static final e:J = -0x4151bc4df176eaebL

.field private static final f:I = 0xc


# instance fields
.field protected b:Lorg/achartengine/a/c;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/achartengine/a/h;-><init>()V

    .line 45
    sget-object v0, Lorg/achartengine/a/c;->a:Lorg/achartengine/a/c;

    iput-object v0, p0, Lorg/achartengine/a/b;->b:Lorg/achartengine/a/c;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/achartengine/b/c;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/a/c;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/achartengine/a/h;-><init>(Lorg/achartengine/b/c;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 45
    sget-object v0, Lorg/achartengine/a/c;->a:Lorg/achartengine/a/c;

    iput-object v0, p0, Lorg/achartengine/a/b;->b:Lorg/achartengine/a/c;

    .line 66
    iput-object p3, p0, Lorg/achartengine/a/b;->b:Lorg/achartengine/a/c;

    .line 67
    return-void
.end method

.method private a([FII)F
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v4, 0x3ff0

    const/4 v1, 0x2

    .line 241
    .line 242
    if-le p2, v1, :cond_2

    .line 243
    sub-int v0, p2, v1

    .line 245
    :goto_0
    sub-int v1, p2, v1

    aget v1, p1, v1

    const/4 v2, 0x0

    aget v2, p1, v2

    sub-float/2addr v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 246
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 247
    const/high16 v0, 0x4120

    .line 250
    :cond_0
    iget-object v1, p0, Lorg/achartengine/a/b;->b:Lorg/achartengine/a/c;

    sget-object v2, Lorg/achartengine/a/c;->b:Lorg/achartengine/a/c;

    if-eq v1, v2, :cond_1

    .line 251
    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 253
    :cond_1
    float-to-double v0, v0

    iget-object v2, p0, Lorg/achartengine/a/b;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getBarSpacing()D

    move-result-wide v2

    add-double/2addr v2, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_2
    move v0, p2

    goto :goto_0
.end method

.method private static a(IIF)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    .line 167
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    sub-float v1, v5, p2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 169
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float v2, v5, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 170
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float v3, v5, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 171
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    sub-float v4, v5, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 172
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private a(Landroid/graphics/Canvas;FFFFFIILandroid/graphics/Paint;)V
    .locals 11
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
    .line 116
    iget-object v2, p0, Lorg/achartengine/a/b;->c:Lorg/achartengine/b/c;

    move-object v0, v2

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lorg/achartengine/b/c;->a(I)Lorg/achartengine/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lorg/achartengine/b/d;->a()I

    move-result v8

    .line 117
    iget-object v2, p0, Lorg/achartengine/a/b;->b:Lorg/achartengine/a/c;

    sget-object v3, Lorg/achartengine/a/c;->b:Lorg/achartengine/a/c;

    if-ne v2, v3, :cond_0

    .line 118
    sub-float v4, p2, p6

    add-float v6, p4, p6

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p5

    move v7, p3

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v2 .. v10}, Lorg/achartengine/a/b;->a(Landroid/graphics/Canvas;FFFFIILandroid/graphics/Paint;)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    move/from16 v0, p7

    int-to-float v0, v0

    move v2, v0

    mul-float v2, v2, p6

    sub-float v2, p2, v2

    mul-int/lit8 v3, p8, 0x2

    int-to-float v3, v3

    mul-float v3, v3, p6

    add-float v4, v2, v3

    .line 121
    const/high16 v2, 0x4000

    mul-float v2, v2, p6

    add-float v6, v4, v2

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p5

    move v7, p3

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v2 .. v10}, Lorg/achartengine/a/b;->a(Landroid/graphics/Canvas;FFFFIILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;FFFFIILandroid/graphics/Paint;)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/b;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/c;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Lorg/achartengine/renderer/c;->j()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Lorg/achartengine/renderer/c;->m()D

    move-result-wide v6

    aput-wide v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/a/b;->a([DI)[D

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    double-to-float v9, v4

    .line 130
    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Lorg/achartengine/renderer/c;->k()D

    move-result-wide v6

    aput-wide v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/a/b;->a([DI)[D

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    double-to-float v10, v4

    .line 132
    move v0, v9

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 133
    move v0, v10

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 134
    invoke-virtual {v3}, Lorg/achartengine/renderer/c;->n()I

    move-result v13

    .line 135
    invoke-virtual {v3}, Lorg/achartengine/renderer/c;->l()I

    move-result v14

    .line 139
    cmpg-float v3, p3, v9

    if-gez v3, :cond_0

    .line 140
    move-object/from16 v0, p8

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v5, v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v6, v3

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p8

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v15, v13

    .line 147
    :goto_0
    cmpl-float v3, p5, v10

    if-lez v3, :cond_1

    .line 148
    move-object/from16 v0, p8

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v3

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v5, v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v6, v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p8

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v3, v14

    .line 155
    :goto_1
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v3, v6, v7

    const/4 v3, 0x1

    aput v15, v6, v3

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 157
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 159
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 164
    :goto_2
    return-void

    .line 144
    :cond_0
    sub-float v3, v10, v11

    sub-float v4, v10, v9

    div-float/2addr v3, v4

    invoke-static {v13, v14, v3}, Lorg/achartengine/a/b;->a(IIF)I

    move-result v3

    move v15, v3

    goto :goto_0

    .line 152
    :cond_1
    sub-float v3, v12, v9

    sub-float v4, v10, v9

    div-float/2addr v3, v4

    invoke-static {v14, v13, v3}, Lorg/achartengine/a/b;->a(IIF)I

    move-result v3

    goto :goto_1

    .line 161
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v5, v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v6, v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v7, v3

    move-object/from16 v3, p1

    move-object/from16 v8, p8

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method private static f()F
    .locals 1

    .prologue
    .line 262
    const/high16 v0, 0x3f80

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 211
    const/16 v0, 0xc

    return v0
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/c;FI)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/b;->c:Lorg/achartengine/b/c;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/achartengine/b/c;->a()I

    move-result v13

    .line 102
    move-object/from16 v0, p3

    array-length v0, v0

    move v14, v0

    .line 103
    invoke-virtual/range {p4 .. p4}, Lorg/achartengine/renderer/c;->a()I

    move-result v4

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v14

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lorg/achartengine/a/b;->a([FII)F

    move-result v15

    .line 106
    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_0
    move/from16 v0, v16

    move v1, v14

    if-ge v0, v1, :cond_1

    .line 107
    aget v4, p3, v16

    .line 108
    add-int/lit8 v5, v16, 0x1

    aget v7, p3, v5

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/b;->c:Lorg/achartengine/b/c;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/achartengine/b/c;->a(I)Lorg/achartengine/b/d;

    move-result-object v5

    invoke-virtual {v5}, Lorg/achartengine/b/d;->a()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/a/b;->b:Lorg/achartengine/a/c;

    move-object v5, v0

    sget-object v6, Lorg/achartengine/a/c;->b:Lorg/achartengine/a/c;

    if-ne v5, v6, :cond_0

    sub-float v6, v4, v15

    add-float v8, v4, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v9, p5

    move/from16 v11, p6

    move-object/from16 v12, p2

    invoke-direct/range {v4 .. v12}, Lorg/achartengine/a/b;->a(Landroid/graphics/Canvas;FFFFIILandroid/graphics/Paint;)V

    .line 106
    :goto_1
    add-int/lit8 v4, v16, 0x2

    move/from16 v16, v4

    goto :goto_0

    .line 109
    :cond_0
    int-to-float v5, v13

    mul-float/2addr v5, v15

    sub-float/2addr v4, v5

    mul-int/lit8 v5, p6, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v15

    add-float v6, v4, v5

    const/high16 v4, 0x4000

    mul-float/2addr v4, v15

    add-float v8, v6, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v9, p5

    move/from16 v11, p6

    move-object/from16 v12, p2

    invoke-direct/range {v4 .. v12}, Lorg/achartengine/a/b;->a(Landroid/graphics/Canvas;FFFFIILandroid/graphics/Paint;)V

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lorg/achartengine/renderer/c;->a()I

    move-result v4

    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    return-void
.end method

.method protected final a(Landroid/graphics/Canvas;Lorg/achartengine/b/d;Lorg/achartengine/renderer/c;Landroid/graphics/Paint;[FI)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lorg/achartengine/a/b;->c:Lorg/achartengine/b/c;

    invoke-virtual {v0}, Lorg/achartengine/b/c;->a()I

    move-result v7

    .line 189
    array-length v0, p5

    invoke-direct {p0, p5, v0, v7}, Lorg/achartengine/a/b;->a([FII)F

    move-result v8

    .line 190
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    array-length v0, p5

    if-ge v9, v0, :cond_1

    .line 191
    div-int/lit8 v0, v9, 0x2

    .line 192
    invoke-virtual {p2, v0}, Lorg/achartengine/b/d;->b(I)D

    move-result-wide v1

    const-wide v3, 0x7fefffffffffffffL

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 193
    aget v1, p5, v9

    .line 194
    iget-object v2, p0, Lorg/achartengine/a/b;->b:Lorg/achartengine/a/c;

    sget-object v3, Lorg/achartengine/a/c;->a:Lorg/achartengine/a/c;

    if-ne v2, v3, :cond_2

    .line 195
    mul-int/lit8 v2, p6, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    int-to-float v3, v7

    const/high16 v4, 0x3fc0

    sub-float/2addr v3, v4

    mul-float/2addr v3, v8

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    move v3, v1

    .line 197
    :goto_1
    invoke-virtual {p2, v0}, Lorg/achartengine/b/d;->b(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/achartengine/a/b;->a(D)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v9, 0x1

    aget v0, p5, v0

    invoke-virtual {p3}, Lorg/achartengine/renderer/c;->h()F

    move-result v1

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/a/b;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 190
    :cond_0
    add-int/lit8 v0, v9, 0x2

    move v9, v0

    goto :goto_0

    .line 201
    :cond_1
    return-void

    :cond_2
    move v3, v1

    goto :goto_1
.end method

.method public final a(Landroid/graphics/Canvas;Lorg/achartengine/renderer/c;FFLandroid/graphics/Paint;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x40c0

    .line 227
    sub-float v2, p4, v1

    const/high16 v0, 0x4140

    add-float v3, p3, v0

    add-float v4, p4, v1

    move-object v0, p1

    move v1, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    return-void
.end method

.method protected final a([FFI)[Landroid/graphics/RectF;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lorg/achartengine/a/b;->c:Lorg/achartengine/b/c;

    invoke-virtual {v0}, Lorg/achartengine/b/c;->a()I

    move-result v0

    .line 72
    array-length v1, p1

    .line 73
    div-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Landroid/graphics/RectF;

    .line 74
    invoke-direct {p0, p1, v1, v0}, Lorg/achartengine/a/b;->a([FII)F

    move-result v3

    .line 75
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 76
    aget v5, p1, v4

    .line 77
    add-int/lit8 v6, v4, 0x1

    aget v6, p1, v6

    .line 78
    iget-object v7, p0, Lorg/achartengine/a/b;->b:Lorg/achartengine/a/c;

    sget-object v8, Lorg/achartengine/a/c;->b:Lorg/achartengine/a/c;

    if-ne v7, v8, :cond_0

    .line 79
    div-int/lit8 v7, v4, 0x2

    new-instance v8, Landroid/graphics/RectF;

    sub-float v9, v5, v3

    add-float/2addr v5, v3

    invoke-direct {v8, v9, v6, v5, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v8, v2, v7

    .line 75
    :goto_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 81
    :cond_0
    int-to-float v7, v0

    mul-float/2addr v7, v3

    sub-float/2addr v5, v7

    mul-int/lit8 v7, p3, 0x2

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v5, v7

    .line 82
    div-int/lit8 v7, v4, 0x2

    new-instance v8, Landroid/graphics/RectF;

    const/high16 v9, 0x4000

    mul-float/2addr v9, v3

    add-float/2addr v9, v5

    invoke-direct {v8, v5, v6, v9, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v8, v2, v7

    goto :goto_1

    .line 85
    :cond_1
    return-object v2
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 282
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    const-string v0, "Bar"

    return-object v0
.end method
