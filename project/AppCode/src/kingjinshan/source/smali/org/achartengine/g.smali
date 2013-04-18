.class public final Lorg/achartengine/g;
.super Ljava/lang/Object;
.source "TouchHandlerOld.java"

# interfaces
.implements Lorg/achartengine/e;


# instance fields
.field private a:Lorg/achartengine/renderer/b;

.field private b:F

.field private c:F

.field private d:Landroid/graphics/RectF;

.field private e:Lorg/achartengine/c/b;

.field private f:Lorg/achartengine/b;


# direct methods
.method public constructor <init>(Lorg/achartengine/b;Lorg/achartengine/a/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/achartengine/g;->d:Landroid/graphics/RectF;

    .line 54
    iput-object p1, p0, Lorg/achartengine/g;->f:Lorg/achartengine/b;

    .line 55
    iget-object v1, p0, Lorg/achartengine/g;->f:Lorg/achartengine/b;

    invoke-virtual {v1}, Lorg/achartengine/b;->a()Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lorg/achartengine/g;->d:Landroid/graphics/RectF;

    .line 56
    instance-of v1, p2, Lorg/achartengine/a/h;

    if-eqz v1, :cond_1

    .line 57
    move-object v0, p2

    check-cast v0, Lorg/achartengine/a/h;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/achartengine/a/h;->e()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v1

    iput-object v1, p0, Lorg/achartengine/g;->a:Lorg/achartengine/renderer/b;

    .line 61
    :goto_0
    iget-object v1, p0, Lorg/achartengine/g;->a:Lorg/achartengine/renderer/b;

    invoke-virtual {v1}, Lorg/achartengine/renderer/b;->isPanEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Lorg/achartengine/c/b;

    invoke-direct {v1, p2}, Lorg/achartengine/c/b;-><init>(Lorg/achartengine/a/a;)V

    iput-object v1, p0, Lorg/achartengine/g;->e:Lorg/achartengine/c/b;

    .line 64
    :cond_0
    return-void

    .line 59
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/achartengine/a/e;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/achartengine/a/e;->b()Lorg/achartengine/renderer/b;

    move-result-object v1

    iput-object v1, p0, Lorg/achartengine/g;->a:Lorg/achartengine/renderer/b;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/achartengine/c/c;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lorg/achartengine/g;->e:Lorg/achartengine/c/b;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/achartengine/g;->e:Lorg/achartengine/c/b;

    invoke-virtual {v0, p1}, Lorg/achartengine/c/b;->a(Lorg/achartengine/c/c;)V

    .line 106
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 69
    iget-object v1, p0, Lorg/achartengine/g;->a:Lorg/achartengine/renderer/b;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 70
    iget v0, p0, Lorg/achartengine/g;->b:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lorg/achartengine/g;->c:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_4

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 73
    iget-object v2, p0, Lorg/achartengine/g;->a:Lorg/achartengine/renderer/b;

    invoke-virtual {v2}, Lorg/achartengine/renderer/b;->isPanEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lorg/achartengine/g;->e:Lorg/achartengine/c/b;

    iget v3, p0, Lorg/achartengine/g;->b:F

    iget v4, p0, Lorg/achartengine/g;->c:F

    invoke-virtual {v2, v3, v4, v0, v1}, Lorg/achartengine/c/b;->a(FFFF)V

    .line 76
    :cond_1
    iput v0, p0, Lorg/achartengine/g;->b:F

    .line 77
    iput v1, p0, Lorg/achartengine/g;->c:F

    .line 78
    iget-object v0, p0, Lorg/achartengine/g;->f:Lorg/achartengine/b;

    invoke-virtual {v0}, Lorg/achartengine/b;->b()V

    move v0, v5

    .line 92
    :goto_0
    return v0

    .line 81
    :cond_2
    if-nez v0, :cond_3

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/achartengine/g;->b:F

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/achartengine/g;->c:F

    .line 84
    iget-object v0, p0, Lorg/achartengine/g;->a:Lorg/achartengine/renderer/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/achartengine/g;->a:Lorg/achartengine/renderer/b;

    invoke-virtual {v0}, Lorg/achartengine/renderer/b;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/achartengine/g;->d:Landroid/graphics/RectF;

    iget v1, p0, Lorg/achartengine/g;->b:F

    iget v2, p0, Lorg/achartengine/g;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    .line 86
    goto :goto_0

    .line 88
    :cond_3
    if-ne v0, v5, :cond_4

    .line 89
    iput v2, p0, Lorg/achartengine/g;->b:F

    .line 90
    iput v2, p0, Lorg/achartengine/g;->c:F

    .line 92
    :cond_4
    iget-object v0, p0, Lorg/achartengine/g;->a:Lorg/achartengine/renderer/b;

    invoke-virtual {v0}, Lorg/achartengine/renderer/b;->isClickEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lorg/achartengine/c/c;)V
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lorg/achartengine/g;->e:Lorg/achartengine/c/b;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/achartengine/g;->e:Lorg/achartengine/c/b;

    invoke-virtual {v0, p1}, Lorg/achartengine/c/b;->b(Lorg/achartengine/c/c;)V

    .line 119
    :cond_0
    return-void
.end method
