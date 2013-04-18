.class public final Lorg/achartengine/b;
.super Landroid/view/View;
.source "GraphicalView.java"


# static fields
.field private static final j:I


# instance fields
.field private a:Lorg/achartengine/a/a;

.field private b:Lorg/achartengine/renderer/b;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/os/Handler;

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:I

.field private k:Landroid/graphics/Paint;

.field private l:Lorg/achartengine/e;

.field private m:F

.field private n:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x96

    .line 62
    const/16 v0, 0xaf

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lorg/achartengine/b;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/achartengine/a/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x7

    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/achartengine/b;->c:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/achartengine/b;->e:Landroid/graphics/RectF;

    .line 60
    const/16 v0, 0x32

    iput v0, p0, Lorg/achartengine/b;->i:I

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/achartengine/b;->k:Landroid/graphics/Paint;

    .line 83
    iput-object p2, p0, Lorg/achartengine/b;->a:Lorg/achartengine/a/a;

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/achartengine/b;->d:Landroid/os/Handler;

    .line 85
    iget-object v0, p0, Lorg/achartengine/b;->a:Lorg/achartengine/a/a;

    instance-of v0, v0, Lorg/achartengine/a/h;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lorg/achartengine/b;->a:Lorg/achartengine/a/a;

    check-cast v0, Lorg/achartengine/a/h;

    invoke-virtual {v0}, Lorg/achartengine/a/h;->e()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/b;->b:Lorg/achartengine/renderer/b;

    .line 90
    :goto_0
    iget-object v0, p0, Lorg/achartengine/b;->b:Lorg/achartengine/renderer/b;

    instance-of v0, v0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/achartengine/b;->b:Lorg/achartengine/renderer/b;

    check-cast v0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/achartengine/b;->b:Lorg/achartengine/renderer/b;

    check-cast v0, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    iget-object v1, p0, Lorg/achartengine/b;->k:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMarginsColor(I)V

    .line 97
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 101
    :goto_1
    if-ge v0, v2, :cond_2

    .line 102
    new-instance v0, Lorg/achartengine/g;

    iget-object v1, p0, Lorg/achartengine/b;->a:Lorg/achartengine/a/a;

    invoke-direct {v0, p0, v1}, Lorg/achartengine/g;-><init>(Lorg/achartengine/b;Lorg/achartengine/a/a;)V

    iput-object v0, p0, Lorg/achartengine/b;->l:Lorg/achartengine/e;

    .line 106
    :goto_2
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lorg/achartengine/b;->a:Lorg/achartengine/a/a;

    check-cast v0, Lorg/achartengine/a/e;

    invoke-virtual {v0}, Lorg/achartengine/a/e;->b()Lorg/achartengine/renderer/b;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/b;->b:Lorg/achartengine/renderer/b;

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    .line 104
    :cond_2
    new-instance v0, Lorg/achartengine/f;

    iget-object v1, p0, Lorg/achartengine/b;->a:Lorg/achartengine/a/a;

    invoke-direct {v0, p0, v1}, Lorg/achartengine/f;-><init>(Lorg/achartengine/b;Lorg/achartengine/a/a;)V

    iput-object v0, p0, Lorg/achartengine/b;->l:Lorg/achartengine/e;

    goto :goto_2
.end method

.method private a(IIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    iget-object v6, p0, Lorg/achartengine/b;->d:Landroid/os/Handler;

    new-instance v0, Lorg/achartengine/d;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/achartengine/d;-><init>(Lorg/achartengine/b;IIII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method private a(Lorg/achartengine/c/c;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lorg/achartengine/b;->l:Lorg/achartengine/e;

    invoke-interface {v0, p1}, Lorg/achartengine/e;->a(Lorg/achartengine/c/c;)V

    .line 155
    return-void
.end method

.method private b(Lorg/achartengine/c/c;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lorg/achartengine/b;->l:Lorg/achartengine/e;

    invoke-interface {v0, p1}, Lorg/achartengine/e;->b(Lorg/achartengine/c/c;)V

    .line 165
    return-void
.end method

.method private c()Lorg/achartengine/b/b;
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lorg/achartengine/b;->a:Lorg/achartengine/a/a;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lorg/achartengine/b;->m:F

    iget v3, p0, Lorg/achartengine/b;->n:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lorg/achartengine/a/a;->a(Landroid/graphics/PointF;)Lorg/achartengine/b/b;

    move-result-object v0

    return-object v0
.end method

.method private d()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/achartengine/b;->setDrawingCacheEnabled(Z)V

    .line 229
    invoke-virtual {p0}, Lorg/achartengine/b;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0, v1}, Lorg/achartengine/b;->setDrawingCacheEnabled(Z)V

    .line 232
    :cond_0
    iget-object v0, p0, Lorg/achartengine/b;->b:Lorg/achartengine/renderer/b;

    invoke-virtual {v0}, Lorg/achartengine/renderer/b;->isApplyBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lorg/achartengine/b;->b:Lorg/achartengine/renderer/b;

    invoke-virtual {v0}, Lorg/achartengine/renderer/b;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/achartengine/b;->setDrawingCacheBackgroundColor(I)V

    .line 235
    :cond_1
    const/high16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/achartengine/b;->setDrawingCacheQuality(I)V

    .line 236
    invoke-virtual {p0, v1}, Lorg/achartengine/b;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/achartengine/b;->e:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/achartengine/b;->d:Landroid/os/Handler;

    new-instance v1, Lorg/achartengine/c;

    invoke-direct {v1, p0}, Lorg/achartengine/c;-><init>(Lorg/achartengine/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 125
    iget-object v0, p0, Lorg/achartengine/b;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/achartengine/b;->getTop()I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 126
    iget-object v0, p0, Lorg/achartengine/b;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/achartengine/b;->getLeft()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 127
    iget-object v0, p0, Lorg/achartengine/b;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/achartengine/b;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 128
    iget-object v0, p0, Lorg/achartengine/b;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/achartengine/b;->getHeight()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 129
    iget-object v0, p0, Lorg/achartengine/b;->a:Lorg/achartengine/a/a;

    iget-object v6, p0, Lorg/achartengine/b;->k:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/a/a;->a(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    .line 130
    iget-object v0, p0, Lorg/achartengine/b;->b:Lorg/achartengine/renderer/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/achartengine/b;->b:Lorg/achartengine/renderer/b;

    invoke-virtual {v0}, Lorg/achartengine/renderer/b;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/achartengine/b;->b:Lorg/achartengine/renderer/b;

    invoke-virtual {v0}, Lorg/achartengine/renderer/b;->isZoomButtonsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/achartengine/b;->k:Landroid/graphics/Paint;

    sget v1, Lorg/achartengine/b;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget v0, p0, Lorg/achartengine/b;->i:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/achartengine/b;->i:I

    .line 134
    iget-object v0, p0, Lorg/achartengine/b;->e:Landroid/graphics/RectF;

    add-int v1, v2, v4

    iget v6, p0, Lorg/achartengine/b;->i:I

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v1, v6

    int-to-float v1, v1

    add-int v6, v3, v5

    int-to-float v6, v6

    iget v7, p0, Lorg/achartengine/b;->i:I

    int-to-float v7, v7

    const v8, 0x3f466666

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    add-int v7, v2, v4

    int-to-float v7, v7

    add-int v8, v3, v5

    int-to-float v8, v8

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    iget-object v0, p0, Lorg/achartengine/b;->e:Landroid/graphics/RectF;

    iget v1, p0, Lorg/achartengine/b;->i:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget v6, p0, Lorg/achartengine/b;->i:I

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    iget-object v7, p0, Lorg/achartengine/b;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 137
    add-int v0, v3, v5

    int-to-float v0, v0

    iget v1, p0, Lorg/achartengine/b;->i:I

    int-to-float v1, v1

    const/high16 v3, 0x3f20

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 138
    iget-object v1, p0, Lorg/achartengine/b;->f:Landroid/graphics/Bitmap;

    add-int v3, v2, v4

    int-to-float v3, v3

    iget v5, p0, Lorg/achartengine/b;->i:I

    int-to-float v5, v5

    const/high16 v6, 0x4030

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-virtual {p1, v1, v3, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 140
    iget-object v1, p0, Lorg/achartengine/b;->g:Landroid/graphics/Bitmap;

    add-int v3, v2, v4

    int-to-float v3, v3

    iget v5, p0, Lorg/achartengine/b;->i:I

    int-to-float v5, v5

    const/high16 v6, 0x3fe0

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-virtual {p1, v1, v3, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 142
    iget-object v1, p0, Lorg/achartengine/b;->h:Landroid/graphics/Bitmap;

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v3, p0, Lorg/achartengine/b;->i:I

    int-to-float v3, v3

    const/high16 v4, 0x3f40

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 145
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/achartengine/b;->m:F

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/achartengine/b;->n:F

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/achartengine/b;->b:Lorg/achartengine/renderer/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/achartengine/b;->b:Lorg/achartengine/renderer/b;

    invoke-virtual {v0}, Lorg/achartengine/renderer/b;->isPanEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/achartengine/b;->b:Lorg/achartengine/renderer/b;

    invoke-virtual {v0}, Lorg/achartengine/renderer/b;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    :cond_1
    iget-object v0, p0, Lorg/achartengine/b;->l:Lorg/achartengine/e;

    invoke-interface {v0, p1}, Lorg/achartengine/e;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
