.class public final Lorg/achartengine/a/f;
.super Lorg/achartengine/a/h;
.source "ScatterChart.java"


# static fields
.field public static final a:Ljava/lang/String; = "Scatter"

.field private static final b:J = -0x5022cbe79c804d34L

.field private static final e:F = 3.0f

.field private static final f:I = 0xa


# instance fields
.field private g:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/achartengine/a/h;-><init>()V

    .line 43
    const/high16 v0, 0x4040

    iput v0, p0, Lorg/achartengine/a/f;->g:F

    .line 46
    return-void
.end method

.method private constructor <init>(Lorg/achartengine/b/c;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/achartengine/a/h;-><init>(Lorg/achartengine/b/c;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 43
    const/high16 v0, 0x4040

    iput v0, p0, Lorg/achartengine/a/f;->g:F

    .line 59
    invoke-virtual {p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getPointSize()F

    move-result v0

    iput v0, p0, Lorg/achartengine/a/f;->g:F

    .line 60
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    iget v0, p0, Lorg/achartengine/a/f;->g:F

    sub-float v1, p3, v0

    iget v0, p0, Lorg/achartengine/a/f;->g:F

    sub-float v2, p4, v0

    iget v0, p0, Lorg/achartengine/a/f;->g:F

    add-float v3, p3, v0

    iget v0, p0, Lorg/achartengine/a/f;->g:F

    add-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 218
    iget v0, p0, Lorg/achartengine/a/f;->g:F

    add-float v1, p3, v0

    iget v0, p0, Lorg/achartengine/a/f;->g:F

    sub-float v2, p4, v0

    iget v0, p0, Lorg/achartengine/a/f;->g:F

    sub-float v3, p3, v0

    iget v0, p0, Lorg/achartengine/a/f;->g:F

    add-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 219
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 253
    const/4 v0, 0x0

    aput p4, p3, v0

    .line 254
    const/4 v0, 0x1

    iget v1, p0, Lorg/achartengine/a/f;->g:F

    sub-float v1, p5, v1

    iget v2, p0, Lorg/achartengine/a/f;->g:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    aput v1, p3, v0

    .line 255
    const/4 v0, 0x2

    iget v1, p0, Lorg/achartengine/a/f;->g:F

    sub-float v1, p4, v1

    aput v1, p3, v0

    .line 256
    iget v0, p0, Lorg/achartengine/a/f;->g:F

    add-float/2addr v0, p5

    aput v0, p3, v4

    .line 257
    const/4 v0, 0x4

    iget v1, p0, Lorg/achartengine/a/f;->g:F

    add-float/2addr v1, p4

    aput v1, p3, v0

    .line 258
    const/4 v0, 0x5

    aget v1, p3, v4

    aput v1, p3, v0

    .line 259
    invoke-static {p1, p3, p2}, Lorg/achartengine/a/f;->a(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;)V

    .line 260
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    iget v0, p0, Lorg/achartengine/a/f;->g:F

    invoke-virtual {p1, p3, p4, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 235
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    const/4 v0, 0x0

    aput p4, p3, v0

    .line 295
    const/4 v0, 0x1

    iget v1, p0, Lorg/achartengine/a/f;->g:F

    sub-float v1, p5, v1

    aput v1, p3, v0

    .line 296
    const/4 v0, 0x2

    iget v1, p0, Lorg/achartengine/a/f;->g:F

    sub-float v1, p4, v1

    aput v1, p3, v0

    .line 297
    const/4 v0, 0x3

    aput p5, p3, v0

    .line 298
    const/4 v0, 0x4

    aput p4, p3, v0

    .line 299
    const/4 v0, 0x5

    iget v1, p0, Lorg/achartengine/a/f;->g:F

    add-float/2addr v1, p5

    aput v1, p3, v0

    .line 300
    const/4 v0, 0x6

    iget v1, p0, Lorg/achartengine/a/f;->g:F

    add-float/2addr v1, p4

    aput v1, p3, v0

    .line 301
    const/4 v0, 0x7

    aput p5, p3, v0

    .line 302
    invoke-static {p1, p3, p2}, Lorg/achartengine/a/f;->a(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;)V

    .line 303
    return-void
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    iget v0, p0, Lorg/achartengine/a/f;->g:F

    sub-float v1, p3, v0

    iget v0, p0, Lorg/achartengine/a/f;->g:F

    sub-float v2, p4, v0

    iget v0, p0, Lorg/achartengine/a/f;->g:F

    add-float v3, p3, v0

    iget v0, p0, Lorg/achartengine/a/f;->g:F

    add-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 276
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 155
    const/16 v0, 0xa

    return v0
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FLorg/achartengine/renderer/c;FI)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 90
    check-cast p4, Lorg/achartengine/renderer/e;

    .line 91
    invoke-virtual {p4}, Lorg/achartengine/renderer/e;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    invoke-virtual {p4}, Lorg/achartengine/renderer/e;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    :goto_0
    array-length v6, p3

    .line 98
    sget-object v0, Lorg/achartengine/a/g;->a:[I

    invoke-virtual {p4}, Lorg/achartengine/renderer/e;->p()Lorg/achartengine/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lorg/achartengine/a/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    :cond_0
    :goto_1
    return-void

    .line 95
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 100
    :goto_2
    if-ge v0, v6, :cond_0

    .line 101
    aget v1, p3, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p3, v2

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/achartengine/a/f;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 100
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :pswitch_1
    move v0, v2

    .line 105
    :goto_3
    if-ge v0, v6, :cond_0

    .line 106
    aget v1, p3, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p3, v2

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/achartengine/a/f;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 105
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 110
    :pswitch_2
    const/4 v0, 0x6

    new-array v3, v0, [F

    move v7, v2

    .line 111
    :goto_4
    if-ge v7, v6, :cond_0

    .line 112
    aget v4, p3, v7

    add-int/lit8 v0, v7, 0x1

    aget v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/achartengine/a/f;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    .line 111
    add-int/lit8 v0, v7, 0x2

    move v7, v0

    goto :goto_4

    :pswitch_3
    move v0, v2

    .line 116
    :goto_5
    if-ge v0, v6, :cond_0

    .line 117
    aget v1, p3, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p3, v2

    invoke-direct {p0, p1, p2, v1, v2}, Lorg/achartengine/a/f;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 116
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 121
    :pswitch_4
    const/16 v0, 0x8

    new-array v3, v0, [F

    move v7, v2

    .line 122
    :goto_6
    if-ge v7, v6, :cond_0

    .line 123
    aget v4, p3, v7

    add-int/lit8 v0, v7, 0x1

    aget v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/achartengine/a/f;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    .line 122
    add-int/lit8 v0, v7, 0x2

    move v7, v0

    goto :goto_6

    .line 127
    :pswitch_5
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    goto :goto_1

    .line 98
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Landroid/graphics/Canvas;Lorg/achartengine/renderer/c;FFLandroid/graphics/Paint;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4120

    .line 177
    move-object v0, p2

    check-cast v0, Lorg/achartengine/renderer/e;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/achartengine/renderer/e;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    :goto_0
    sget-object v1, Lorg/achartengine/a/g;->a:[I

    check-cast p2, Lorg/achartengine/renderer/e;

    invoke-virtual {p2}, Lorg/achartengine/renderer/e;->p()Lorg/achartengine/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lorg/achartengine/a/d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 202
    :goto_1
    return-void

    .line 180
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 184
    :pswitch_0
    add-float v1, p3, v3

    invoke-direct {p0, p1, p5, v1, p4}, Lorg/achartengine/a/f;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_1

    .line 187
    :pswitch_1
    add-float v1, p3, v3

    invoke-direct {p0, p1, p5, v1, p4}, Lorg/achartengine/a/f;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_1

    .line 190
    :pswitch_2
    const/4 v1, 0x6

    new-array v4, v1, [F

    add-float v5, p3, v3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/achartengine/a/f;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    goto :goto_1

    .line 193
    :pswitch_3
    add-float v1, p3, v3

    invoke-direct {p0, p1, p5, v1, p4}, Lorg/achartengine/a/f;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_1

    .line 196
    :pswitch_4
    const/16 v1, 0x8

    new-array v4, v1, [F

    add-float v5, p3, v3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/achartengine/a/f;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    goto :goto_1

    .line 199
    :pswitch_5
    add-float v1, p3, v3

    invoke-virtual {p1, v1, p4, p5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected final a(Lorg/achartengine/b/c;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lorg/achartengine/a/h;->a(Lorg/achartengine/b/c;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 67
    invoke-virtual {p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getPointSize()F

    move-result v0

    iput v0, p0, Lorg/achartengine/a/f;->g:F

    .line 68
    return-void
.end method

.method protected final a([FFI)[Landroid/graphics/RectF;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    array-length v0, p1

    .line 136
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Landroid/graphics/RectF;

    .line 137
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 138
    iget-object v3, p0, Lorg/achartengine/a/f;->d:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSelectableBuffer()I

    move-result v3

    .line 139
    div-int/lit8 v4, v2, 0x2

    new-instance v5, Landroid/graphics/RectF;

    aget v6, p1, v2

    int-to-float v7, v3

    sub-float/2addr v6, v7

    add-int/lit8 v7, v2, 0x1

    aget v7, p1, v7

    int-to-float v8, v3

    sub-float/2addr v7, v8

    aget v8, p1, v2

    int-to-float v9, v3

    add-float/2addr v8, v9

    add-int/lit8 v9, v2, 0x1

    aget v9, p1, v9

    int-to-float v3, v3

    add-float/2addr v3, v9

    invoke-direct {v5, v6, v7, v8, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v5, v1, v4

    .line 137
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 143
    :cond_0
    return-object v1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const-string v0, "Scatter"

    return-object v0
.end method
