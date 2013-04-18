.class public final Lorg/achartengine/f;
.super Ljava/lang/Object;
.source "TouchHandler.java"

# interfaces
.implements Lorg/achartengine/e;


# instance fields
.field private a:Lorg/achartengine/renderer/b;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroid/graphics/RectF;

.field private g:Lorg/achartengine/c/b;

.field private h:Lorg/achartengine/b;


# direct methods
.method public constructor <init>(Lorg/achartengine/b;Lorg/achartengine/a/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/achartengine/f;->f:Landroid/graphics/RectF;

    .line 59
    iput-object p1, p0, Lorg/achartengine/f;->h:Lorg/achartengine/b;

    .line 60
    iget-object v1, p0, Lorg/achartengine/f;->h:Lorg/achartengine/b;

    invoke-virtual {v1}, Lorg/achartengine/b;->a()Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lorg/achartengine/f;->f:Landroid/graphics/RectF;

    .line 61
    instance-of v1, p2, Lorg/achartengine/a/h;

    if-eqz v1, :cond_1

    .line 62
    move-object v0, p2

    check-cast v0, Lorg/achartengine/a/h;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/achartengine/a/h;->e()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v1

    iput-object v1, p0, Lorg/achartengine/f;->a:Lorg/achartengine/renderer/b;

    .line 66
    :goto_0
    iget-object v1, p0, Lorg/achartengine/f;->a:Lorg/achartengine/renderer/b;

    invoke-virtual {v1}, Lorg/achartengine/renderer/b;->isPanEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Lorg/achartengine/c/b;

    invoke-direct {v1, p2}, Lorg/achartengine/c/b;-><init>(Lorg/achartengine/a/a;)V

    iput-object v1, p0, Lorg/achartengine/f;->g:Lorg/achartengine/c/b;

    .line 69
    :cond_0
    return-void

    .line 64
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/achartengine/a/e;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/achartengine/a/e;->b()Lorg/achartengine/renderer/b;

    move-result-object v1

    iput-object v1, p0, Lorg/achartengine/f;->a:Lorg/achartengine/renderer/b;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/achartengine/c/c;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lorg/achartengine/f;->g:Lorg/achartengine/c/b;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/achartengine/f;->g:Lorg/achartengine/c/b;

    invoke-virtual {v0, p1}, Lorg/achartengine/c/b;->a(Lorg/achartengine/c/c;)V

    .line 142
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x6

    const/high16 v2, -0x4080

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 80
    iget-object v1, p0, Lorg/achartengine/f;->a:Lorg/achartengine/renderer/b;

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 81
    iget v0, p0, Lorg/achartengine/f;->b:F

    cmpl-float v0, v0, v5

    if-gez v0, :cond_0

    iget v0, p0, Lorg/achartengine/f;->c:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_7

    .line 82
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 83
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v6, :cond_3

    iget v2, p0, Lorg/achartengine/f;->d:F

    cmpl-float v2, v2, v5

    if-gez v2, :cond_1

    iget v2, p0, Lorg/achartengine/f;->e:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lorg/achartengine/f;->a:Lorg/achartengine/renderer/b;

    invoke-virtual {v2}, Lorg/achartengine/renderer/b;->isZoomEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 87
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 88
    sub-float v4, v0, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 89
    sub-float v4, v1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 90
    iget v4, p0, Lorg/achartengine/f;->b:F

    iget v5, p0, Lorg/achartengine/f;->d:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 91
    iget v4, p0, Lorg/achartengine/f;->c:F

    iget v5, p0, Lorg/achartengine/f;->e:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 92
    iget v4, p0, Lorg/achartengine/f;->b:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    iget v4, p0, Lorg/achartengine/f;->c:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 94
    iput v2, p0, Lorg/achartengine/f;->d:F

    .line 99
    iput v3, p0, Lorg/achartengine/f;->e:F

    .line 105
    :cond_2
    :goto_0
    iput v0, p0, Lorg/achartengine/f;->b:F

    .line 106
    iput v1, p0, Lorg/achartengine/f;->c:F

    .line 107
    iget-object v0, p0, Lorg/achartengine/f;->h:Lorg/achartengine/b;

    invoke-virtual {v0}, Lorg/achartengine/b;->b()V

    move v0, v6

    .line 128
    :goto_1
    return v0

    .line 100
    :cond_3
    iget-object v2, p0, Lorg/achartengine/f;->a:Lorg/achartengine/renderer/b;

    invoke-virtual {v2}, Lorg/achartengine/renderer/b;->isPanEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    iget-object v2, p0, Lorg/achartengine/f;->g:Lorg/achartengine/c/b;

    iget v3, p0, Lorg/achartengine/f;->b:F

    iget v4, p0, Lorg/achartengine/f;->c:F

    invoke-virtual {v2, v3, v4, v0, v1}, Lorg/achartengine/c/b;->a(FFFF)V

    .line 102
    iput v5, p0, Lorg/achartengine/f;->d:F

    .line 103
    iput v5, p0, Lorg/achartengine/f;->e:F

    goto :goto_0

    .line 110
    :cond_4
    if-nez v0, :cond_5

    .line 111
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lorg/achartengine/f;->b:F

    .line 112
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lorg/achartengine/f;->c:F

    .line 113
    iget-object v0, p0, Lorg/achartengine/f;->a:Lorg/achartengine/renderer/b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/achartengine/f;->a:Lorg/achartengine/renderer/b;

    invoke-virtual {v0}, Lorg/achartengine/renderer/b;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/achartengine/f;->f:Landroid/graphics/RectF;

    iget v1, p0, Lorg/achartengine/f;->b:F

    iget v2, p0, Lorg/achartengine/f;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v6

    .line 115
    goto :goto_1

    .line 117
    :cond_5
    if-eq v0, v6, :cond_6

    if-ne v0, v4, :cond_7

    .line 119
    :cond_6
    iput v5, p0, Lorg/achartengine/f;->b:F

    .line 120
    iput v5, p0, Lorg/achartengine/f;->c:F

    .line 121
    iput v5, p0, Lorg/achartengine/f;->d:F

    .line 122
    iput v5, p0, Lorg/achartengine/f;->e:F

    .line 123
    if-ne v0, v4, :cond_7

    .line 124
    iput v2, p0, Lorg/achartengine/f;->b:F

    .line 125
    iput v2, p0, Lorg/achartengine/f;->c:F

    .line 128
    :cond_7
    iget-object v0, p0, Lorg/achartengine/f;->a:Lorg/achartengine/renderer/b;

    invoke-virtual {v0}, Lorg/achartengine/renderer/b;->isClickEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v6

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_1
.end method

.method public final b(Lorg/achartengine/c/c;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lorg/achartengine/f;->g:Lorg/achartengine/c/b;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/achartengine/f;->g:Lorg/achartengine/c/b;

    invoke-virtual {v0, p1}, Lorg/achartengine/c/b;->b(Lorg/achartengine/c/c;)V

    .line 155
    :cond_0
    return-void
.end method
