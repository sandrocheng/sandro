.class public final Lcom/keniu/security/main/cg;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:Z

.field private g:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 54
    iput p1, p0, Lcom/keniu/security/main/cg;->a:F

    .line 55
    iput p2, p0, Lcom/keniu/security/main/cg;->b:F

    .line 56
    iput p3, p0, Lcom/keniu/security/main/cg;->c:F

    .line 57
    iput p4, p0, Lcom/keniu/security/main/cg;->d:F

    .line 58
    const/high16 v0, 0x439b

    iput v0, p0, Lcom/keniu/security/main/cg;->e:F

    .line 59
    iput-boolean p5, p0, Lcom/keniu/security/main/cg;->f:Z

    .line 60
    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x3f80

    const v8, 0x3e4ccccd

    const/4 v7, 0x0

    .line 70
    iget v0, p0, Lcom/keniu/security/main/cg;->a:F

    .line 71
    iget v1, p0, Lcom/keniu/security/main/cg;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 73
    iget v1, p0, Lcom/keniu/security/main/cg;->c:F

    .line 74
    iget v2, p0, Lcom/keniu/security/main/cg;->d:F

    .line 75
    iget-object v3, p0, Lcom/keniu/security/main/cg;->g:Landroid/graphics/Camera;

    .line 77
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 79
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 80
    iget-boolean v5, p0, Lcom/keniu/security/main/cg;->f:Z

    if-eqz v5, :cond_0

    .line 81
    iget v5, p0, Lcom/keniu/security/main/cg;->e:F

    mul-float/2addr v5, p1

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 85
    :goto_0
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 86
    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 87
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 89
    iget-boolean v0, p0, Lcom/keniu/security/main/cg;->f:Z

    if-nez v0, :cond_1

    .line 91
    const v0, 0x3f4ccccd

    mul-float/2addr v0, p1

    add-float/2addr v0, v8

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 96
    :goto_1
    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 97
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 98
    return-void

    .line 83
    :cond_0
    iget v5, p0, Lcom/keniu/security/main/cg;->e:F

    sub-float v6, v9, p1

    mul-float/2addr v5, v6

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    .line 93
    :cond_1
    mul-float v0, v8, p1

    sub-float v0, v9, v0

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_1
.end method

.method public final initialize(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 65
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/main/cg;->g:Landroid/graphics/Camera;

    .line 66
    return-void
.end method
